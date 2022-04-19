local INK = WAYNE_INK_COLOUR

local function IsDrawable(item)
	return item.components.inventoryitem and item.components.inventoryitem.canbepickedup and
	not item:HasTag("wayne_drawnitem") and item.components.edible and
	not (item.components.health and item.components.inventory.owner)
end

local WayneBrush = Class(function(self, inst)
    self.inst = inst

	self.uses = TUNING.WAYNE.DRAW_USES
end)

function WayneBrush:CanDraw(owner)
	local owner = owner or self.inst.components.inventoryitem.owner
	if not owner or not owner.components.inventory then
		return nil
	end
	
	return GetWayneBottle(owner, self.uses)
end

local function Animate(inst)
	local had_cmp = inst.components.colourtweener ~= nil
	local clr = {inst.AnimState:GetMultColour()}
	if not had_cmp then
		inst:AddComponent("colourtweener")
	end
	inst.AnimState:SetMultColour(INK[1], INK[2], INK[3], 1)
	inst.AnimState:SetHaunted(true)
	
	inst.components.colourtweener:StartTween(clr, 1, function(inst)
		inst.AnimState:SetHaunted(false)
		if not had_cmp and inst.components.colourtweener then
			inst:RemoveComponent("colourtweener")
		end
	end)
end

function WayneBrush:Draw(item, doer)
	local bottle = self:CanDraw(doer)
	
	if not bottle or not item then
		return false, "NO_INK"
	end
	
	if not IsDrawable(item) then
		return false, "NOT_DRAWABLE"
	end

	bottle.components.wayne_bottle:Use(self.uses * TUNING.WAYNE.BOTTLE_USES)
	self.inst.components.finiteuses:Use(1)
	
	if doer.SoundEmitter then
		--"dontstarve/common/rebirth_amulet_poof"
		doer.SoundEmitter:PlaySound("dontstarve/common/rebirth_meat_effigy_attune_off")
		doer.SoundEmitter:PlaySound("dontstarve/common/together/draw")
		-- doer.SoundEmitter:PlaySound("wayne/common/wayne_paper/draw")
	end
	
	local spawned = SpawnAt("wayne_drawn_food", item)
	spawned:Clone(item)
	spawned.components.inventoryitem:OnDropped(true, .5)
	spawned:DoTaskInTime(0, function(inst) Launch(inst, doer, 1) end)

	Animate(spawned)

	if item.components.perishable then
		local count = item.components.stackable and item.components.stackable:StackSize() or 1
		local delta = TUNING.WAYNE.ITEM_PERISH_AMOUNT / count
		item.components.perishable:ReducePercent(delta)
	elseif math.random() <= TUNING.WAYNE.REMOVE_ITEM_CHANGE then
		(item.components.stackable and item.components.stackable:Get(1) or item):Remove()
	end
	
	return true
end

return WayneBrush

