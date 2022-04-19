local assets =
{
	Asset("ANIM", "anim/wayne_paper.zip"),
}

local function fn()
	local inst = CreateEntity()

	inst.entity:AddTransform()
	inst.entity:AddAnimState()
	inst.entity:AddNetwork()

	MakeInventoryPhysics(inst)

	inst.AnimState:SetBank("wayne_paper")
	inst.AnimState:SetBuild("wayne_paper")
	inst.AnimState:PlayAnimation("idle")

	MakeInventoryFloatable(inst, "med", 0.15, 0.65)

	inst.entity:SetPristine()

	if not TheWorld.ismastersim then
		return inst
	end

	inst:AddComponent("inspectable")
	inst:AddComponent("wayne_paper")

	inst:AddComponent("inventoryitem")
	inst.components.inventoryitem.atlasname = "images/wayne_inv.xml"
	
	inst:AddComponent("finiteuses")
	inst.components.finiteuses:SetMaxUses(TUNING.WAYNE.BRUSH_USES)
	inst.components.finiteuses:SetUses(TUNING.WAYNE.BRUSH_USES)
	inst.components.finiteuses:SetOnFinished(inst.Remove)

	inst:AddComponent("fuel")
	inst.components.fuel.fuelvalue = TUNING.SMALL_FUEL

	MakeSmallBurnable(inst, TUNING.SMALL_BURNTIME)
	MakeSmallPropagator(inst)
	MakeHauntableLaunchAndIgnite(inst)

	return inst
end

return Prefab("wayne_paper", fn, assets)
