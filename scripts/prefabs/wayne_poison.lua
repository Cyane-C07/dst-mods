local RANGE = 4
local RANGE_SQ = RANGE * RANGE
local SLOWDOWN = 0.65
local DPS = 30
local DPS_PVP = 5
local DURATION = 15
local ATTACK_PERIOD = 1 -- Fox: Periodically attack enemy so it reacts on health delta

local PARCTICLE_PERIOD = 0.1
local ANIM_PERIOD = 0.15
local TINT = {0.25, 0.25, 0.25, 1}

local MIN_ALPHA = 0.4
local ALPHA_MULT = 1 - MIN_ALPHA
local calc_alpha = function(alpha) return MIN_ALPHA + alpha * ALPHA_MULT end

local INK = WETZEL_INK_COLOUR

local NO_TAGS = { "INLIMBO", "playerghost" }

local assets =
{
	Asset("ANIM", "anim/wetzel_poison_ground.zip"),
	Asset("ANIM", "anim/lavaarena_hits_splash.zip"),
	Asset("ANIM", "anim/wetzel_poison_fx.zip"),
}

local function IsValidTarget(inst)
	return inst:IsValid() and not inst:HasTag("playerghost") and
	not inst.components.health:IsDead() and
	(not TheNet:GetPVPEnabled() or not inst:HasTag("player"))
end

local function RemovePoison(inst, ent)
	if not inst.poisoned[ent] then
		return
	end

	inst:ListenForEvent("onremove", inst.poisoned[ent].remove, ent)
	inst.poisoned[ent] = nil

	if ent.AnimState then
		ent.AnimState:SetHaunted(false)
	end

	if ent.components.locomotor then
		ent.components.locomotor:RemoveExternalSpeedMultiplier(inst, "wetzel_poison")
	end

	if ent.components.colourtweener then
		ent.components.colourtweener:StartTween({1, 1, 1, 1}, 0.15, function(ent)
			if not ent._hadcolourtweener then
				ent:RemoveComponent("colourtweener")
			end
		end)
	end
	ent._hadcolourtweener = nil
end

local function ApplyPoison(inst, ent)
	if inst.poisoned[ent] then
		return
	end

	inst.poisoned[ent] = {
		last_attacked = -ATTACK_PERIOD,
		remove = function() RemovePoison(inst, ent) end
	}

	inst:RemoveEventCallback("onremove", inst.poisoned[ent].remove, ent)

	if ent.AnimState then
		ent.AnimState:SetHaunted(true)
	end

	if ent.components.locomotor then
		ent.components.locomotor:SetExternalSpeedMultiplier(inst, "wetzel_poison", SLOWDOWN * inst.level)
	end

	ent._hadcolourtweener = ent.components.colourtweener ~= nil
	if not ent._hadcolourtweener then
		ent:AddComponent("colourtweener")
	end
	ent.components.colourtweener:StartTween(TINT, 0.15)
end

local function UpdateInPoison(inst, ent, dt)
	local prcnt = inst.level
	local attacker = inst.owner or inst
	
	if not ent.components.health:IsDead() then
		ent.components.health:DoDelta(-(ent:HasTag("player") and DPS_PVP or DPS) * prcnt * dt, true, nil, nil, attacker)
	end

	if ent.components.combat and GetTime() - inst.poisoned[ent].last_attacked >= ATTACK_PERIOD then
		inst.poisoned[ent].last_attacked = GetTime()

		ent.components.combat:SuggestTarget(attacker)
		ent:PushEvent("attacked", { attacker = attacker, damage = 0, weapon = inst })
	end
end

local function OnUpdate(inst, dt)
	local x, _, z = inst.Transform:GetWorldPosition()

	-- Update old
	for ent, _ in pairs(inst.poisoned) do
		if not IsValidTarget(ent) then
			RemovePoison(inst, ent)
		else
			local ex, _, ez = ent.Transform:GetWorldPosition()
			local dist = distsq(x, z, ex, ez)
			if dist > RANGE_SQ then
				RemovePoison(inst, ent)
			else
				UpdateInPoison(inst, ent, dt)
			end
		end
	end

	-- Add new
	for i, ent in ipairs(TheSim:FindEntities(x, 0, z, RANGE, { "_combat", "_health" }, NO_TAGS)) do
		if IsValidTarget(ent) then
			ApplyPoison(inst, ent)
		end
	end
end

local function StartUpdating(inst)
	inst.components.updatelooper:AddOnUpdateFn(OnUpdate)
end

local function StopUpdating(inst)
	inst.components.updatelooper:RemoveOnUpdateFn(OnUpdate)
end

local function GetDebugString(inst)
	local str = "poisoned: "
	for ent, _ in pairs(inst.poisoned) do
		str = str .. tostring(ent) .. "; "
	end
	return str
end

local function CreateBase(alpha)
	alpha = alpha or 1
	
	local inst = CreateEntity()

	inst:AddTag("FX")
	inst:AddTag("noblock")
	--[[Non-networked entity]]
	inst.entity:SetCanSleep(false)
	inst.persists = false

	inst.entity:AddTransform()
	inst.entity:AddAnimState()

	inst.AnimState:SetBank("lavaarena_hits_splash")
	inst.AnimState:SetBuild("lavaarena_hits_splash")
	inst.AnimState:PlayAnimation("player_hit_"..tostring(math.random(1, 4)))
	inst.AnimState:SetMultColour(INK[1], INK[2], INK[3], calc_alpha(alpha))
	inst.AnimState:SetOrientation(ANIM_ORIENTATION.OnGround)
	inst.AnimState:SetLayer(LAYER_BACKGROUND)
	inst.AnimState:SetSortOrder(3)
	inst.AnimState:SetHaunted(true)

	inst:ListenForEvent("animover", inst.Remove)

	return inst
end

local function CreateFx()
	local inst = CreateEntity()

	inst:AddTag("FX")
	inst:AddTag("noblock")
	--[[Non-networked entity]]
	inst.entity:SetCanSleep(false)
	inst.persists = false

	inst.entity:AddTransform()
	inst.entity:AddAnimState()

	inst.AnimState:SetBank("wetzel_poison_fx")
	inst.AnimState:SetBuild("wetzel_poison_fx")
	inst.AnimState:PlayAnimation("idle"..tostring(math.random(1, 2)))
	inst.AnimState:SetScale(2, 2)

	inst:ListenForEvent("animover", inst.Remove)

	return inst
end

local function PlayAnim(inst)
	local fx = CreateBase(inst.level)
	fx.Transform:SetFromProxy(inst.GUID)
	fx.Transform:SetRotation(math.random() * 360)
end

local function PlayFx(inst)
	local x, _, z = inst.Transform:GetWorldPosition()
	local fx = CreateFx()
	
	local range = math.random() * RANGE
	local angle = math.random() * math.pi * 2
	fx.Transform:SetPosition(x + math.cos(angle) * range, 0, z + math.sin(angle) * range)
end

local function LevelDirty(inst)
	inst.level = inst._level:value() / 100
	local prcnt = 1 - inst.level
	inst:DoPeriodicTask(PARCTICLE_PERIOD + PARCTICLE_PERIOD * prcnt, PlayFx)
	inst:DoPeriodicTask(ANIM_PERIOD + ANIM_PERIOD * prcnt, PlayAnim)
end

local function SetLevel(inst, level, owner)
	inst.level = level
	inst._level:set(level * 100)

	inst.AnimState:SetMultColour(INK[1], INK[2], INK[3], calc_alpha(inst.level))

	if owner then
		inst.owner = owner
		inst:ListenForEvent("onremove", function() inst.owner = nil end, owner)
	end
end

local function OnSave(inst, data)
	data.level = inst.level
end

local function OnLoad(inst, data)
	if data and data.level then
		inst:SetLevel(data.level)
	end
end

local function OnTimerDone(inst, data)
	if data and data.name == "remove" then
		inst.AnimState:PlayAnimation("fish_chum_base_pst")
		inst:ListenForEvent("animover", inst.Remove)
	end
end

local function OnRemove(inst)
	StopUpdating(inst)
	
	for ent, _ in pairs(inst.poisoned) do
		RemovePoison(inst, ent)
	end
end

local function fn()
	local inst = CreateEntity()

	inst.entity:AddTransform()
	inst.entity:AddAnimState()
	inst.entity:AddSoundEmitter()
	inst.entity:AddNetwork()

	inst.AnimState:SetBuild("wetzel_poison_ground")
	inst.AnimState:SetBank("fish_chum")
	inst.AnimState:PlayAnimation("fish_chum_base_pre")
	inst.AnimState:SetTime(19 * FRAMES)
	inst.AnimState:PushAnimation("fish_chum_base_idle", true)
	inst.AnimState:SetMultColour(INK[1], INK[2], INK[3], 1)
	inst.AnimState:SetLayer(LAYER_BACKGROUND)
	inst.AnimState:SetOrientation(ANIM_ORIENTATION.OnGround)
	inst.AnimState:SetSortOrder(3)
	inst.AnimState:SetFinalOffset(1)

	inst:AddTag("wetzel_poison")
	inst:AddTag("noblock")
	inst:AddTag("FX")

	inst.level = 1
	inst._level = net_byte(inst.GUID, "wetzel_poison._level", "leveldirty")

	if not TheNet:IsDedicated() then
		inst:ListenForEvent("leveldirty", LevelDirty)
	end

	inst.entity:SetPristine()

	if not TheWorld.ismastersim then
		return inst
	end

	if not TheNet:GetPVPEnabled() then
		table.insert(NO_TAGS, "player")
	end

	inst.poisoned = {}
	inst.owner = nil
	
	inst:AddComponent("updatelooper")
	-- StartUpdating(inst) -- Fox: This gets called automatically in OnEntityWake

	inst:AddComponent("timer")
	inst.components.timer:StartTimer("remove", DURATION)

	inst.SoundEmitter:PlaySound("dangerous_sea/creatures/wavey_jones/trapped_LP")
	-- inst.SoundEmitter:SetVolume("loop", 0.6)

	inst.SetLevel = SetLevel

	inst.debugstringfn = GetDebugString

	inst.OnEntityWake = StartUpdating
	inst.OnEntitySleep = StopUpdating
	inst.OnRemoveEntity = OnRemove

	inst.OnSave = OnSave
	inst.OnLoad = OnLoad

	inst:ListenForEvent("timerdone", OnTimerDone)

	return inst
end

-- c_spawn("wetzel_poison"):SetLevel(0)
return Prefab("wetzel_poison", fn, assets)