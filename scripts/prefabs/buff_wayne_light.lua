local TIME = TUNING.WETZEL.FEATHER_LIGHT_DURATION
local MAX_CONTRAST = 1.4

local function OnAttached(inst, target, followsymbol, followoffset)
	inst.entity:SetParent(target.entity)
	inst.Network:SetClassifiedTarget(target)

	target.wetzel_nightvision = true
end

local function OnDetached(inst)
	local parent = inst.entity:GetParent()
	if parent then
		parent.wetzel_nightvision = nil
	end
	inst:Remove()
end

local function OnExtend(inst)
	inst.components.timer:SetTimeLeft("remove", TIME)
end

local function OnTimerDone(inst)
	inst.components.debuff:Stop()
end

-- local function UpdatePostProcess(inst, dt)
-- 	inst._t = inst._t + dt
-- 	PostProcessor:SetUniformVariable(UniformVariables.WetzelTime, inst._t)
-- end

local function OnRemoveClient(inst, parent)
	if parent.components.playervision then
		parent.components.playervision:SetWetzelVision(false)
	end

	-- inst.components.updatelooper:RemoveOnWallUpdateFn(UpdatePostProcess)
	-- PostProcessor:SetUniformVariable(UniformVariables.WetzelTime, 0)
	-- PostProcessor:EnablePostProcessEffect(PostProcessorEffects.WetzelEffect, false)
end

local function ClientInit(inst)
	local parent = inst.entity:GetParent()
	if parent then
		-- inst:AddComponent("updatelooper")
		-- inst._t = 0

		-- PostProcessor:EnablePostProcessEffect(PostProcessorEffects.WetzelEffect, true)
		-- inst.components.updatelooper:AddOnWallUpdateFn(UpdatePostProcess)

		if parent.components.playervision then
			parent.components.playervision:SetWetzelVision(true)
		end

		parent:ListenForEvent("onremove", function()
			OnRemoveClient(inst, parent)
		end, inst)
	end
end

local function fn()
	local inst = CreateEntity()

	inst.entity:AddTransform()
	inst.entity:AddNetwork()

	inst:AddTag("CLASSIFIED")

	if not TheNet:IsDedicated() then
		inst:DoTaskInTime(0, ClientInit)
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
	inst.components.timer:StartTimer("remove", TIME)
	inst:ListenForEvent("timerdone", OnTimerDone)

	inst.persists = false

	return inst
end

return Prefab("buff_wetzel_light", fn)
