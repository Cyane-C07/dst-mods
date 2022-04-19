local DURATION = TUNING.WAYNE.FEATHER_TELEPORT_DURATION
local SPEED = TUNING.WAYNE.FEATHER_TELEPORT_SPEED_MULT

local assets = {
	Asset("ANIM", "anim/status_meter_circle.zip"),
}

local function ToggleOffPhysics(inst)
	inst.sg.statemem.isphysicstoggle = true
	
	if inst.Physics then
		inst.Physics:ClearCollisionMask()
		inst.Physics:CollidesWith(COLLISION.GROUND)
	end
end

local function ToggleOnPhysics(inst)
	inst.sg.statemem.isphysicstoggle = nil
	
	if inst.Physics then
		inst.Physics:ClearCollisionMask()
		inst.Physics:CollidesWith(COLLISION.WORLD)
		inst.Physics:CollidesWith(COLLISION.OBSTACLES)
		inst.Physics:CollidesWith(COLLISION.SMALLOBSTACLES)
		inst.Physics:CollidesWith(COLLISION.CHARACTERS)
		inst.Physics:CollidesWith(COLLISION.GIANTS)
	end
end

local function DropTargets(inst)
	local x, _, z = inst.Transform:GetWorldPosition()
	for i, ent in ipairs(TheSim:FindEntities(x, 0, z, 30, {"_combat"})) do
		if ent.components.combat and ent.components.combat.target == inst then
			ent.components.combat.target = nil
		end
	end
end

local function OnAttached(inst, target, followsymbol, followoffset)
	inst.entity:SetParent(target.entity)
	inst.Network:SetClassifiedTarget(target)

	target:Hide()

	if target.userid then
		target.blocked_actions = true
		SendModRPCToClient(GetClientModRPC("WAYNE", "TELEPORT"), target, true)
		target:ShowActions(false)
		target:ShowHUD(false)
	end
	
	if target.AnimState then
		target.AnimState:SetErosionParams(1, 0.1, 1.0)
	end

	if target.DynamicShadow then
		target.DynamicShadow:Enable(false)
	end

	if target.MiniMapEntity then
		target.MiniMapEntity:SetEnabled(false)
	end

	if target.Light then
		target.Light:Enable(false)
	end

	if target.SoundEmitter then
		target.SoundEmitter:SetMute(true)
	end
	
	target:AddTag("noplayerindicator")
	target:AddTag("noattack")
	target:AddTag("notarget")
	target:AddTag("invisible")
	
	if target.components.locomotor then
		target.components.locomotor:SetExternalSpeedMultiplier(inst, "teleport", SPEED)
	end

	if target.components.sanity then
		target.components.sanity.ignore = true
	end
	
	if target.components.talker then
		target.components.talker:IgnoreAll("wayne_teleport")
	end
	
	if target.components.frostybreather then
		target.components.frostybreather:Disable()
	end

	if target.components.health then
		target.components.health:SetInvincible(true)
	end

	ToggleOffPhysics(target)
	DropTargets(target)
end

local function Show(inst)
	inst:Show()

	if inst.userid then
		inst.blocked_actions = false
		SendModRPCToClient(GetClientModRPC("WAYNE", "TELEPORT"), inst, false)
		inst:ShowActions(true)
		inst:ShowHUD(true)
	end
		
	if inst.AnimState then
		inst.AnimState:SetErosionParams(0, 0, 0)
	end

	if inst.DynamicShadow then
		inst.DynamicShadow:Enable(true)
	end

	if inst.MiniMapEntity then
		inst.MiniMapEntity:SetEnabled(true)
	end

	if inst.SoundEmitter then
		inst.SoundEmitter:SetMute(false)
	end
	
	inst:RemoveTag("noplayerindicator")
	inst:RemoveTag("noattack")
	inst:RemoveTag("notarget")
	inst:RemoveTag("invisible")
	
	if inst.components.locomotor then
		inst.components.locomotor:RemoveExternalSpeedMultiplier(inst, "teleport")
	end

	if inst.components.sanity then
		inst.components.sanity.ignore = false
	end
	
	if inst.components.talker then
		inst.components.talker:StopIgnoringAll("wayne_teleport")
	end
	
	if inst.components.frostybreather then
		inst.components.frostybreather:OnTemperatureChanged(TheWorld.state.temperature)
	end

	if inst.components.health then
		inst.components.health:SetInvincible(false)
	end

	if inst.components.playercontroller then
		inst.components.playercontroller:Enable(true)
	end

	inst.sg:GoToState("jumpout")
	SpawnAt("wayne_portal_splash", inst)

	ToggleOnPhysics(inst)
end

local function OnDetached(inst)
	local parent = inst.entity:GetParent()
	
	if parent then
		local fx = SpawnAt("wayne_teleport_fx", parent)
		fx:DoTaskInTime(2, fx.Kill)
		
		if parent.components.playercontroller then
			parent.components.playercontroller:Enable(false)
		end
		parent:DoTaskInTime(1, Show)
	end

	inst:Remove()
end

local function OnExtend(inst)
	inst.components.timer:SetTimeLeft("remove", DURATION)
end

local function OnTimerDone(inst)
	inst.components.debuff:Stop()
end

local function OnUpdate(inst, dt)
	inst._time:set(inst.components.timer:GetTimeLeft("remove") or 0)
end

local function OnFxUpdate(inst, dt)
	local owner = inst.owner
	if owner and owner:IsValid() then
		local x, y, z = owner.Transform:GetWorldPosition()
		inst.Transform:SetPosition(x, y + 2, z)

		inst.time = math.max(inst.time - dt, 0)
		inst.AnimState:SetPercent("meter", inst.time / DURATION)
	end

	if inst.scale ~= inst.target_scale then
		inst.scale = math.min(inst.scale + dt * 10, inst.target_scale)
		inst.AnimState:SetScale(inst.scale, inst.scale)
	end
end

local function CreateFx(owner)
	local inst = CreateEntity()

	inst.owner = owner

	inst:AddTag("FX")
	--[[Non-networked entity]]
	inst.entity:SetCanSleep(false)
	inst.persists = false

	inst.entity:AddTransform()
	inst.entity:AddAnimState()

	inst.AnimState:SetBank("status_meter_circle")
	inst.AnimState:SetBuild("status_meter_circle")
	inst.AnimState:SetPercent("meter", 1)
	-- inst.AnimState:SetOrientation(ANIM_ORIENTATION.OnGround)
	-- inst.AnimState:SetLayer(LAYER_BACKGROUND)
	inst.AnimState:SetSortOrder(3)
	inst.AnimState:SetFinalOffset(3)
	inst.AnimState:SetLightOverride(1)
	inst.AnimState:SetMultColour(0, 0, 0, 1)
	inst.AnimState:SetAddColour(108/255, 93/255, 129/255, 1)

	inst.target_scale = 2.5
	inst.scale = 0
	inst.AnimState:SetScale(0, 0)

	inst.time = DURATION

	inst:AddComponent("updatelooper")
	inst.components.updatelooper:AddOnWallUpdateFn(OnFxUpdate)
	OnFxUpdate(inst, 0)

	inst:ListenForEvent("onremove", function()
		inst.components.updatelooper:RemoveOnWallUpdateFn(OnFxUpdate)
		inst:Remove()
	end, owner)

	return inst
end

-- Fox: Force update
local function OnTimeDirty(inst)
	if inst._fx then
		inst._fx.time = inst._time:value()
		OnFxUpdate(inst._fx, 0)
	end
end

local function fn()
	local inst = CreateEntity()

	inst.entity:AddTransform()
	inst.entity:AddAnimState()
	inst.entity:AddNetwork()

	inst:AddTag("FX")
	inst:AddTag("CLASSIFIED")

	inst._time = net_smallbyte(inst.GUID, "buff_wayne_teleport._time", "timedirty")

	if not TheNet:IsDedicated() then
		if not inst._fx then
			inst._fx = CreateFx(inst)
		end
		inst:ListenForEvent("timedirty", OnTimeDirty)
	end

	inst.entity:SetPristine()

	if not TheWorld.ismastersim then
		return inst
	end

	inst:AddComponent("debuff")
	inst.components.debuff:SetAttachedFn(OnAttached)
	inst.components.debuff:SetDetachedFn(OnDetached)
	inst.components.debuff:SetExtendedFn(OnExtend)
	
	inst:AddComponent("timer")
	inst.components.timer:StartTimer("remove", DURATION)
	inst:ListenForEvent("timerdone", OnTimerDone)

	inst:AddComponent("updatelooper")
	inst.components.updatelooper:AddOnUpdateFn(OnUpdate)

	inst.persists = false

	return inst
end

return Prefab("buff_wayne_teleport", fn, assets)
