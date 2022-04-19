local assets =
{
	Asset("ANIM", "anim/wayne_feather.zip"),
}

local prefs = {}

local SPEED = 0.002

local function CreateFeather(name, colour, uses, bottle_delta, onuse)
	local prefab_name = "wayne_feather_"..name
	local royal_skin_name = prefab_name.."_royal"

	local function OnEquip(inst, owner)
		owner.AnimState:OverrideSymbol("swap_object", inst.skinname or "wayne_feather", "feather_"..name)
		owner.AnimState:Show("ARM_carry")
		owner.AnimState:Hide("ARM_normal")
	end

	local function OnUnequip(inst, owner)
		owner.AnimState:Hide("ARM_carry")
		owner.AnimState:Show("ARM_normal")
	end

	local function fn(_, skinname)
		local inst = CreateEntity()

		inst.entity:AddTransform()
		inst.entity:AddAnimState()
		inst.entity:AddNetwork()

		inst.AnimState:SetBank("wayne_feather")
		inst.AnimState:SetBuild(skinname or "wayne_feather")
		inst.AnimState:PlayAnimation("idle_"..name)

		MakeInventoryPhysics(inst)
		MakeInventoryFloatable(inst, "med", 0.05, {1, 0.4, 0.7}, nil, -13)

		inst.entity:SetPristine()

		if not TheWorld.ismastersim then
			return inst
		end
		
		inst:AddComponent("inspectable")

		inst:AddComponent("inventoryitem")
		inst.components.inventoryitem.atlasname = "images/wayne_inv.xml"

		inst:AddComponent("equippable")
		inst.components.equippable:SetOnEquip(OnEquip)
		inst.components.equippable:SetOnUnequip(OnUnequip)
		inst.components.equippable.restrictedtag = "shadowartist"
		
		inst:AddComponent("finiteuses")
		inst.components.finiteuses:SetMaxUses(uses)
		inst.components.finiteuses:SetUses(uses)
		inst.components.finiteuses:SetOnFinished(inst.Remove)

		inst:AddComponent("weapon")
		inst.components.weapon.attackwear = 0

		inst:AddComponent("wayne_feather")
		inst.components.wayne_feather:SetCost(bottle_delta)
		inst.components.wayne_feather:SetOnUse(onuse)
		inst.components.wayne_feather:SetColour(colour)
		inst.components.wayne_feather.noeffect = (name == "black")
		
		inst:ListenForEvent("floater_startfloating", function(inst) inst.AnimState:PlayAnimation("float_"..name) end)
		inst:ListenForEvent("floater_stopfloating", function(inst) inst.AnimState:PlayAnimation("idle_"..name) end)

		return inst
	end

	table.insert(prefs, Prefab(prefab_name, fn, assets))
	if name ~= "yellow" then
		table.insert(prefs, CreateModPrefabSkin(royal_skin_name,
		{
			assets = {
				Asset("DYNAMIC_ANIM", "anim/dynamic/"..royal_skin_name..".zip"),
				Asset("PKGREF", "anim/dynamic/"..royal_skin_name..".dyn"),
			},
			base_prefab = prefab_name,
			fn = function() return fn(nil, royal_skin_name) end,
			rarity = "ModdedElegant",
			reskinable = true,
			
			build_name_override = royal_skin_name,
			
			type = "item",
			skin_tags = { },
			release_group = 0,
		}))
	end
end

-------------------------------------------------------------------------------

local function Black(inst, doer, bottle)
	doer.sg.statemem.teleport = true

	return true
end

-------------------------------------------------------------------------------

local function DoHeal(inst)
	local x, y, z = inst.Transform:GetWorldPosition()
	local targets = {}

	if TheNet:GetPVPEnabled() then
		targets = {inst}
	else
		local range = TUNING.WAYNE.FEATHER_HEALING_RANGE * TUNING.WAYNE.FEATHER_HEALING_RANGE

		for i, ent in ipairs(AllPlayers) do
			if not (ent.components.health:IsDead() or ent:HasTag("playerghost")) and
			ent.entity:IsVisible() and
				ent:GetDistanceSqToPoint(x, y, z) < range then
				table.insert(targets, ent)
			end
		end
	end

	if next(targets) then
		local amt = math.max(TUNING.WAYNE.FEATHER_HEALING_MAX + (#targets - 1) * TUNING.WAYNE.FEATHER_HEALING_PER_PLAYER, TUNING.WAYNE.FEATHER_HEALING_MIN)
		
		local function heal(ent)
			ent.components.health:DoDelta(ent == inst and TUNING.WAYNE.FEATHER_HEALING_MAX or amt, nil, inst.prefab)
			SpawnAt("wayne_heal_splash", ent)
		end

		for i, ent in ipairs(targets) do
			if ent == inst then
				heal(ent)
			else
				local t = 0.25 + ent:GetDistanceSqToPoint(x, y, z) * SPEED
				ent:DoTaskInTime(t, heal)
			end
			
		end
	end
end

local function Red(inst, doer, bottle)
	DoHeal(doer)
	return true
end

-------------------------------------------------------------------------------

local FREEZE_TAGS = { "freezable", "fire", "smolder", "canlight", "nolight" }
local FREEZE_NO_TAGS = { "FX", "DECOR", "INLIMBO", "invisible" }

local function ApplyFreeze(inst)
	if not inst:IsValid() or inst:IsInLimbo() then
		return
	end

	if inst.components.freezable then
		inst.components.freezable:AddColdness(10, inst:HasTag("player") and TUNING.WAYNE.FEATHER_FREEZE_PLAYER or TUNING.WAYNE.FEATHER_FREEZE)
	end

	if inst.components.burnable then 
		if inst.components.burnable:IsBurning() then
			inst.components.burnable:Extinguish()
		elseif inst.components.burnable:IsSmoldering() then
			inst.components.burnable:SmotherSmolder()
		end
	end
end

local function Freeze(inst)
	local x, y, z = inst.Transform:GetWorldPosition()

	for _, ent in ipairs(TheSim:FindEntities(x, 0, z, TUNING.WAYNE.FEATHER_FREEZE_RANGE, nil, FREEZE_NO_TAGS, FREEZE_TAGS)) do
		if ent ~= inst and (not TheNet:GetPVPEnabled() or not ent:HasTag("player")) then
			local t = 0.25 + ent:GetDistanceSqToPoint(x, y, z) * SPEED
			ent:DoTaskInTime(t, ApplyFreeze)
		end
	end

	SpawnPrefab("wayne_freeze_splash").Transform:SetPosition(x, 0, z)
	SpawnPrefab("wayne_freeze_fx").Transform:SetPosition(x, 0, z)
end

local function White(inst, doer, bottle)
	Freeze(doer)
	return true
end

local function Yellow(inst, doer, bottle)
	if doer.components.debuffable then
		doer.components.debuffable:AddDebuff("buff_wayne_light", "buff_wayne_light")
	end

	if doer.components.temperature then
		doer.components.temperature:SetTemperature(TUNING.WAYNE.FEATHER_LIGHT_TEMP)
	end

	SpawnAt("wayne_yellow_fx", doer)

	return true
end

-------------------------------------------------------------------------------

CreateFeather("black", WAYNE_FEATHERS.BLACK, TUNING.WAYNE.FEATHER_TELEPORT_USES, TUNING.WAYNE.TELEPORT_TELEPORT_COST, Black)
CreateFeather("red", WAYNE_FEATHERS.RED, TUNING.WAYNE.FEATHER_HEALING_USES, TUNING.WAYNE.FEATHER_HEALING_COST, Red)
CreateFeather("white", WAYNE_FEATHERS.WHITE, TUNING.WAYNE.FEATHER_FREEZE_USES, TUNING.WAYNE.FEATHER_FREEZE_COST, White)
CreateFeather("yellow", WAYNE_FEATHERS.YELLOW, TUNING.WAYNE.FEATHER_LIGHT_USES, TUNING.WAYNE.FEATHER_LIGHT_COST, Yellow)

return unpack(prefs)