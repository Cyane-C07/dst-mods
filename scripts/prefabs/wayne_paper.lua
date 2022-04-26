local assets =
{
	Asset("ANIM", "anim/wetzel_paper.zip"),
}

local function fn()
	local inst = CreateEntity()

	inst.entity:AddTransform()
	inst.entity:AddAnimState()
	inst.entity:AddNetwork()

	MakeInventoryPhysics(inst)

	inst.AnimState:SetBank("wetzel_paper")
	inst.AnimState:SetBuild("wetzel_paper")
	inst.AnimState:PlayAnimation("idle")

	MakeInventoryFloatable(inst, "med", 0.15, 0.65)

	inst.entity:SetPristine()

	if not TheWorld.ismastersim then
		return inst
	end

	inst:AddComponent("inspectable")
	inst:AddComponent("wetzel_paper")

	inst:AddComponent("inventoryitem")
	
	inst:AddComponent("finiteuses")
	inst.components.finiteuses:SetMaxUses(TUNING.WETZEL.BRUSH_USES)
	inst.components.finiteuses:SetUses(TUNING.WETZEL.BRUSH_USES)
	inst.components.finiteuses:SetOnFinished(inst.Remove)

	inst:AddComponent("fuel")
	inst.components.fuel.fuelvalue = TUNING.SMALL_FUEL

	MakeSmallBurnable(inst, TUNING.SMALL_BURNTIME)
	MakeSmallPropagator(inst)
	MakeHauntableLaunchAndIgnite(inst)

	return inst
end

return Prefab("wetzel_paper", fn, assets)
