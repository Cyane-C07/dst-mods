local MakePlayerCharacter = require("prefabs/player_common")

local assets =
{
    Asset("SCRIPT", "scripts/prefabs/player_common.lua"), --needed
	Asset("SOUND", "sound/wetzel.fsb"),
}

local prefabs = {}

local start_inv = {}
for k, v in pairs(TUNING.GAMEMODE_STARTING_ITEMS) do
	start_inv[string.lower(k)] = v.WETZEL
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
	local offset = FindWalkableOffset(pos, inst.Transform:GetRotation() * DEGREES, TUNING.WETZEL.TELEPORT_RANGE, 10, false, false, nil, false, true)
	
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
	if data and data.food and data.food:HasTag("wetzel_drawnitem") then
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
	return (target:HasTag("shadowcreature") or target:HasTag("nightmarecreature")) and TUNING.WETZEL.SHADOWS_DAMAGE or 0
end

-----------------------------------------------------------------------

local Empty = function() end

-- Fox: enable never becomes false for some networking issues
-- Might have to poke Zark about it I guess...
local function OnWetzelTeleport(inst, enable)
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


local function common_postinit(inst)	
	inst:AddTag("wetzel")

	inst.components.talker.font = TALKINGFONT_WETZEL

	inst.components.talker.fontsize = 16

	inst.MiniMapEntity:SetIcon( "wetzel.tex" )
end

local function onbecamehuman(inst)
	-- Set speed when not a ghost (optional)
	inst.components.locomotor:SetExternalSpeedMultiplier(inst, "wetzel_speed_mod", 1)
end

local function onbecameghost(inst)
	-- Remove speed modifier when becoming a ghost
   inst.components.locomotor:RemoveExternalSpeedMultiplier(inst, "wetzel_speed_mod")
end

local function onload(inst)
    inst:ListenForEvent("ms_respawnedfromghost", onbecamehuman)
    inst:ListenForEvent("ms_becameghost", onbecameghost)

    if inst:HasTag("playerghost") then
        onbecameghost(inst)
    else
        onbecamehuman(inst)
    end
end

local function master_postinit(inst)
	inst.starting_inventory = start_inv[TheNet:GetServerGameMode()] or start_inv.default

	inst.soundsname = "wetzel"
	inst.talker_path_override = "wetzel/characters/" --maybe "wetzel/"

	-- Stats
	inst.components.health:SetMaxHealth(TUNING.WETZEL_HEALTH)
	inst.components.hunger:SetMax(TUNING.WETZEL_HUNGER)
	inst.components.sanity:SetMax(TUNING.WETZEL_SANITY)
	-- self:SetSanityMode(GLOBAL.SANITY_MODE_INSANITY)

	-- Damage multiplier (optional)
    inst.components.combat.damagemultiplier = 1

	-- Hunger multiplier (optional)
	inst.components.hunger.hungerrate = 1 * TUNING.WILSON_HUNGER_RATE

	inst.OnLoad = onload
  	inst.OnNewSpawn = onload

end

return MakePlayerCharacter("wetzel", prefabs, assets, common_postinit, master_postinit)
