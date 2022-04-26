_G.setfenv(1, _G)

require("wetzel/tuning")

function GetFiniteusesPercent(inst)
	if inst.components.finiteuses then
		return inst.components.finiteuses:GetPercent()
	end
	
	-- Fox: Yeah, it's pretty hacky, but there's no other way to get persantage on client side
	local val = inst.replica and inst.replica.inventoryitem and 
	inst.replica.inventoryitem.classified and
	inst.replica.inventoryitem.classified.percentused:value() or 0
	return (val == 255) and 0 or val/100
end

function GetFirstAvalibleFiniteusesIng(inst, name, percent)
	local items = inst.replica.inventory and inst.replica.inventory:ReferenceAllItems() or {}
	for i, item in ipairs(items) do
		if item.prefab == name and GetFiniteusesPercent(item) >= percent then
			return item
		end
	end
end

-- Fox: Useable from client side too!
function GetWetzelBottle(inst, percent)
	if not inst.replica.inventory then
		return
	end

	for i, item in ipairs(inst.replica.inventory:ReferenceAllItems()) do
		if item:HasTag("wetzel_bottle") and GetFiniteusesPercent(item) >= percent then
			return item
		end
	end
end

function MakeBuilder(OnBuilt, CustomFn)
	return function()
		local inst = CreateEntity()
	
		inst.entity:AddTransform()
	
		inst:AddTag("CLASSIFIED")
	
		--[[Non-networked entity]]
		inst.persists = false
	
		--Auto-remove if not spawned by builder
		inst:DoTaskInTime(0, inst.Remove)
	
		if not TheWorld.ismastersim then
			return inst
		end
	
		inst.OnBuiltFn = OnBuilt

		if CustomFn then
			CustomFn(inst)
		end
	
		return inst
	end
end