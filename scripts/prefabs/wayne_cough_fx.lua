local assets =
{
	Asset("ANIM", "anim/wayne_cough_fx.zip"),
}

local function Update(inst, dt)
	if inst.parent and inst.parent:IsValid() then
		local face = inst.parent.Transform:GetFacing()
		if face == 2 then
			inst.AnimState:SetScale(-1, 1)
		else
			inst.AnimState:SetScale(1, 1)
		end
	end
end

local function ClientInit(inst)
	local parent = inst.entity:GetParent()
	if parent then
		inst.parent = parent
		inst:AddComponent("updatelooper")
		inst.components.updatelooper:AddOnWallUpdateFn(Update)
		Update(inst, 0)

		-- Fox: Init anim only after we updated rotation
		inst.AnimState:SetBank("wayne_cough_fx")
		inst.AnimState:SetBuild("wayne_cough_fx")
		inst:DoTaskInTime(FRAMES, function(inst)
			inst.AnimState:PlayAnimation("idle")
		end)
	end
end

local function fn()
	local inst = CreateEntity()

	inst.entity:AddTransform()
	inst.entity:AddAnimState()
	inst.entity:AddNetwork()

	inst:AddTag("NOCLICK")

	if not TheNet:IsDedicated() then
		inst:DoTaskInTime(0, ClientInit)
	end

	inst.entity:SetPristine()

	if not TheWorld.ismastersim then
		return inst
	end

	inst.persists = false

	inst:ListenForEvent("animover", inst.Remove)

	return inst
end

return Prefab("wayne_cough_fx", fn, assets)
