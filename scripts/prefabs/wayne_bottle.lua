local assets =
{
	Asset("ANIM", "anim/wayne_bottle.zip"),
	
	Asset("ATLAS", "images/wayne_inv.xml"),
	Asset("IMAGE", "images/wayne_inv.tex"),
}

local prefabs = {
	"wayne_poison",
	"ink_splash"
}

local function LaunchFrom(inst, from, basespeed)
	if inst ~= nil and inst.Physics and inst.Physics:IsActive() then
		local x, y, z = inst.Transform:GetWorldPosition()
		local x1, y1, z1 = from:Get()
		local vx, vz = x - x1, z - z1
		local spd = math.sqrt(vx * vx + vz * vz)
		local angle =
			spd > 0 and
			math.atan2(vz / spd, vx / spd) + (math.random() * 20 - 10) * DEGREES or
			math.random() * 2 * PI
		spd = (basespeed or 5) + math.random() * 2
		inst.Physics:Teleport(x, .1, z)
		inst.Physics:SetVel(math.cos(angle) * spd, 10, math.sin(angle) * spd)
	end
end

local function CalculateLevlel(inst)
	local percent = inst.components.finiteuses:GetPercent()
	if percent == 0 then
		return 0
	elseif percent == 1 then
		return 3
	elseif percent < .5 then
		return 1
	end
	return 2
end

local function Update(inst)
	local level = CalculateLevlel(inst)
	if level == 0 then
		inst.AnimState:HideSymbol("ink2")
	else
		inst.AnimState:ShowSymbol("ink2")
		inst.AnimState:OverrideSymbol("ink2", "wayne_bottle", "ink"..level - 1)
	end
	inst.components.inventoryitem:ChangeImageName("wayne_bottle_"..level)

	if inst.components.equippable:IsEquipped() and inst.components.inventoryitem.owner then
		inst.components.inventoryitem.owner.AnimState:OverrideSymbol("swap_object", "wayne_bottle", "swap_bottle"..level)
	end
end

local function DoImpact(inst)
	if TheWorld.Map:IsOceanAtPoint(inst.Transform:GetWorldPosition()) then
		SpawnAt("weregoose_splash_less"..math.random(1, 2), inst)
	else
		inst.SoundEmitter:PlaySound("wayne/common/wayne_bottle/impact")
		PlayFootstep(inst, 1, true)
	end
end

local function OnHit(inst, attacker, target)
	local x, y, z = inst.Transform:GetWorldPosition()
	local onocean = TheWorld.Map:IsOceanAtPoint(x, y, z)

	if inst.components.finiteuses:GetPercent() > 0 and
	not TheSim:FindEntities(x, 0, z, 6.5, {"wayne_poison"})[1] then
		SpawnAt("wayne_poison", inst):SetLevel(inst.components.finiteuses:GetPercent(), attacker)
		inst.components.finiteuses:SetUses(0)
	end   

	inst.Physics:Stop()
	MakeInventoryPhysics(inst)
	inst.Transform:SetPosition(x, y, z)

	inst:RemoveTag("NOCLICK")
	
	DoImpact(inst)
	Update(inst)

	
	inst.AnimState:PlayAnimation(onocean and "float" or "spin")
	inst.AnimState:PushAnimation("idle", false)

	if not onocean then
		if inst.throw_pos then
			LaunchFrom(inst, inst.throw_pos, 1)
			inst.throw_pos = nil
		else
			Launch(inst, inst, 1)
		end

		inst.components.inventoryitem:SetLanded(false, true)

		inst:DoTaskInTime(inst.AnimState:GetCurrentAnimationLength(), function(inst)
			inst.Transform:SetNoFaced()
			DoImpact(inst)
		end)
	end

	inst.throw_pos = nil
end

local function OnEquip(inst, owner)
	Update(inst)
	owner.AnimState:Show("ARM_carry")
	owner.AnimState:Hide("ARM_normal")
end

local function OnUnequip(inst, owner)
	owner.AnimState:Hide("ARM_carry")
	owner.AnimState:Show("ARM_normal")
end

local function OnThrown(inst)
	inst:AddTag("NOCLICK")

	inst.components.inventoryitem:SetLanded(false, true)
	
	inst.Transform:SetTwoFaced()
	inst.AnimState:PlayAnimation("toss")
	Update(inst)

	inst.throw_pos = inst:GetPosition()

	inst.Physics:SetMass(1)
	inst.Physics:SetFriction(0)
	inst.Physics:SetDamping(0)
	inst.Physics:SetCollisionGroup(COLLISION.CHARACTERS)
	inst.Physics:ClearCollisionMask()
	inst.Physics:CollidesWith(COLLISION.GROUND)
	inst.Physics:CollidesWith(COLLISION.OBSTACLES)
	inst.Physics:CollidesWith(COLLISION.ITEMS)
	inst.Physics:SetCapsule(.2, .2)
end

local function ReticuleTargetFn()
	local player = ThePlayer
	local ground = TheWorld.Map
	local pos = Vector3()
	--Attack range is 8, leave room for error
	--Min range was chosen to not hit yourself (2 is the hit range)
	for r = 6.5, 3.5, -.25 do
		pos.x, pos.y, pos.z = player.entity:LocalToWorldSpace(r, 0, 0)
		if ground:IsPassableAtPoint(pos:Get()) and not ground:IsGroundTargetBlocked(pos) then
			return pos
		end
	end
	return pos
end

local function fn()
	local inst = CreateEntity()

	inst.entity:AddTransform()
	inst.entity:AddAnimState()
	inst.entity:AddSoundEmitter()
	inst.entity:AddNetwork()

	MakeInventoryPhysics(inst)

	inst.AnimState:SetBank("wayne_bottle")
	inst.AnimState:SetBuild("wayne_bottle")
	inst.AnimState:PlayAnimation("idle")

	inst:AddComponent("reticule")
	inst.components.reticule.targetfn = ReticuleTargetFn
	inst.components.reticule.reticuleprefab = "reticuleaoe"
	inst.components.reticule.pingprefab = "reticuleaoeping"
	inst.components.reticule.ease = true
	inst.components.reticule.mouseenabled = true

	inst:AddTag("nopunch")
	inst:AddTag("wayne_bottle")

	MakeInventoryPhysics(inst)
	MakeInventoryFloatable(inst, "small", 0.3, {0.7, 1, 1})

	inst.entity:SetPristine()

	if not TheWorld.ismastersim then
		return inst
	end

	inst:AddComponent("inspectable")

	inst:AddComponent("locomotor")

	inst:AddComponent("complexprojectile")
	inst.components.complexprojectile:SetHorizontalSpeed(15)
	inst.components.complexprojectile:SetGravity(-35)
	inst.components.complexprojectile:SetLaunchOffset(Vector3(.25, 1, 0))
	inst.components.complexprojectile:SetOnLaunch(OnThrown)
	inst.components.complexprojectile:SetOnHit(OnHit)

	inst:AddComponent("inventoryitem")
	inst.components.inventoryitem.atlasname = "images/wayne_inv.xml"
	inst.components.inventoryitem.imagename = "wayne_bottle_4"

	inst:AddComponent("equippable")
	inst.components.equippable:SetOnEquip(OnEquip)
	inst.components.equippable:SetOnUnequip(OnUnequip)
	inst.components.equippable.restrictedtag = "shadowartist"
	
	inst:AddComponent("finiteuses")
	inst.components.finiteuses:SetMaxUses(TUNING.WAYNE.BOTTLE_USES)
	inst.components.finiteuses:SetUses(CHEATS_ENABLED and TUNING.WAYNE.BOTTLE_USES or 0)
	
	inst:AddComponent("wayne_bottle")
	
	inst:ListenForEvent("percentusedchange", Update)
	inst:DoTaskInTime(0, Update)
	Update(inst)

	return inst
end

return Prefab("wayne_bottle", fn, assets, prefabs)
