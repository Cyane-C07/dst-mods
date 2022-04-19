local MakePlayerCharacter = require("prefabs/player_common")

local assets =
{
	Asset("ANIM", "anim/wayne_draw_paper.zip"),

	Asset("SCRIPT", "scripts/prefabs/player_common.lua"),
	Asset("SOUND", "sound/wayne.fsb"),
}

local prefabs =
{
	"wayne_puddle",
	"wayne_cough_fx",
}

local start_inv = {}
for k, v in pairs(TUNING.GAMEMODE_STARTING_ITEMS) do
	start_inv[string.lower(k)] = v.WAYNE
end

prefabs = FlattenTree({ prefabs, start_inv }, true)

-----------------------------------------------------------------------
local function DoFx(inst)
	SpawnAt("shadow_puff_large_back", inst)
	SpawnAt("shadow_puff_large_front", inst)
end

local function OnBlinked(inst, pt)
	inst:Show()

	if inst.components.health then
		inst.components.health:SetInvincible(false)
	end

	if inst.DynamicShadow then
		inst.DynamicShadow:Enable(true)
	end

	if TheWorld.Map:IsPassableAtPoint(pt:Get()) and not TheWorld.Map:IsGroundTargetBlocked(pt) then
		inst.Physics:Teleport(pt:Get())
	end

	DoFx(inst)
	inst.SoundEmitter:PlaySound("dontstarve/common/staff_blink")
end

local function RandomTeleport(inst)
	local pos = inst:GetPosition()
	local offset = FindWalkableOffset(pos, inst.Transform:GetRotation() * DEGREES, TUNING.WAYNE.TELEPORT_RANGE, 10, false, false, nil, false, true)
	
	if not offset then
		return
	end

	if inst.blinktask then
		inst.blinktask:Cancel()
	end

	DoFx(inst)
	inst.SoundEmitter:PlaySound("dontstarve/common/staff_blink")

	inst:Hide()

	if inst.DynamicShadow then
		inst.DynamicShadow:Enable(false)
	end

	if inst.components.health then
		inst.components.health:SetInvincible(true)
	end

	inst.blinktask = inst:DoTaskInTime(.25, OnBlinked, pos + offset)
end

local function OnEat(inst, data)
	if data and data.food and data.food:HasTag("wayne_drawnitem") then
		if inst.tp_task then
			inst.tp_task:Cancel()
			inst.tp_task = nil
		end
		inst.tp_task = inst:DoTaskInTime(0.25, RandomTeleport)

		if data.food.origin_data.origin == "ratatouille" then
			inst.components.hunger:DoDelta(TUNING.AFFINITY_15_CALORIES_MED)
		end
	end
end

-----------------------------------------------------------------------

local function ShadowsDamage(inst, target, damage, weapon)
	return (target:HasTag("shadowcreature") or target:HasTag("nightmarecreature")) and TUNING.WAYNE.SHADOWS_DAMAGE or 0
end

-----------------------------------------------------------------------

local Empty = function() end

-- Fox: enable never becomes false for some networking issues
-- Might have to poke Zark about it I guess...
local function OnWayneTeleport(inst, enable)
	inst:PushEvent("inkover", {persists = enable ~= nil})

	inst.blocked_actions = enable
	if enable then
		if inst.components.playercontroller ~= nil then
			inst.components.playercontroller.actionbuttonoverride = Empty
		end
		if inst.components.playeractionpicker ~= nil then
			inst.components.playeractionpicker.leftclickoverride = Empty
			inst.components.playeractionpicker.rightclickoverride = Empty
			inst.components.playeractionpicker.pointspecialactionsfn = nil
		end
	else
		if inst.components.playercontroller ~= nil then
			inst.components.playercontroller.actionbuttonoverride = nil
		end
		if inst.components.playeractionpicker ~= nil then
			inst.components.playeractionpicker.leftclickoverride = nil
			inst.components.playeractionpicker.rightclickoverride = nil
			inst.components.playeractionpicker.pointspecialactionsfn = nil
		end
	end
end

-----------------------------------------------------------------------
local TALK_RANGE_RNG = 10

local function OnTalk(inst)
	if not WAYNE_FONT_SHAKE then
		return
	end
	
	local self = inst.components.talker

	if self and self.widget and not self.widget.rng_pos_task then
		self.widget.rng_pos_task = self.widget.inst:DoPeriodicTask(FRAMES * 2, function()
			self.widget:SetOffset(Vector3(TALK_RANGE_RNG * math.random(), TALK_RANGE_RNG * math.random() - 400))
		end)
	end
end
-----------------------------------------------------------------------

local function common_postinit(inst)
	if TheNet:GetServerGameMode() == "quagmire" then
		inst:AddTag("quagmire_shopper")
	end
	
	inst:AddTag("wayne")
	inst:AddTag("shadowartist")

	inst.components.talker.font = TALKINGFONT_WAYNE

	inst.OnWayneTeleport = OnWayneTeleport

	if not TheNet:IsDedicated() then
		inst:ListenForEvent("ontalk", OnTalk)
	end
end

local function master_postinit(inst)
	inst.starting_inventory = start_inv[TheNet:GetServerGameMode()] or start_inv.default

	inst.talker_path_override = "wayne/characters/"

	inst.components.sanity:SetMax(TUNING.WAYNE_SANITY)
	inst.components.hunger:SetMax(TUNING.WAYNE_HUNGER)
	inst.components.health:SetMaxHealth(TUNING.WAYNE_HEALTH)

	if inst.components.eater then
		inst.components.eater:SetPrefersEatingTag("wayne_drawnitem")
		inst.components.eater:SetAbsorptionModifiers(1, 1, TUNING.WAYNE.FOOD_SANITY_MULT)
	end

	if inst.components.foodaffinity then
		inst.components.foodaffinity:AddPrefabAffinity("jammypreserves", TUNING.AFFINITY_15_CALORIES_SMALL)
	end

	if inst.components.combat then
		inst.components.combat.bonusdamagefn = ShadowsDamage
	end
	
	if not inst.components.timer then
		inst:AddComponent("timer")
	end
	inst:AddComponent("wayne_power")

	inst:ListenForEvent("oneat", OnEat)
end

return MakePlayerCharacter("wayne", prefabs, assets, common_postinit, master_postinit)
