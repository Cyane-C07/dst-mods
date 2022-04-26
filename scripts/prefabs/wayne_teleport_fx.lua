local INK = WETZEL_INK_COLOUR

local assets =
{
	Asset("DYNAMIC_ANIM", "anim/dynamic/box_shared_spiral.zip"),
	Asset("PKGREF", "anim/dynamic/box_shared_spiral.dyn"),
}

local function Kill(inst)
	inst.AnimState:PlayAnimation("skin_out")
	inst:ListenForEvent("animover", inst.Remove)
end

local function fn()
	local inst = CreateEntity()

	inst.entity:AddTransform()
	inst.entity:AddAnimState()
	inst.entity:AddNetwork()

	inst.AnimState:SetBank("box_shared_spiral")
	inst.AnimState:SetBuild("box_shared_spiral")
	inst.AnimState:PlayAnimation("activate", false)
	inst.AnimState:PushAnimation("idle_loop", true)
	inst.AnimState:SetMultColour(INK[1], INK[2], INK[3], 1)
	inst.AnimState:SetScale(0.75, 0.75)
	inst.AnimState:SetLayer(LAYER_BACKGROUND)
	inst.AnimState:SetOrientation(ANIM_ORIENTATION.OnGround)
	inst.AnimState:SetSortOrder(3)

	inst:AddTag("FX")

	inst.entity:SetPristine()

	if not TheWorld.ismastersim then
		return inst
	end

	inst.persists = false
	inst.entity:SetCanSleep(false)

	inst.Kill = Kill

	return inst
end

return Prefab("wetzel_teleport_fx", fn, assets)
