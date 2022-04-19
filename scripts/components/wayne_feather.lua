local WayneFeather = Class(function(self, inst)
	self.inst = inst

	self.cost = 0
	self.onuse = nil
	self.colour = {0, 0, 0}
	self.noeffect = false
end)

function WayneFeather:SetCost(cost)
	self.cost = cost
end

function WayneFeather:SetOnUse(fn)
	self.onuse = fn
end

function WayneFeather:SetColour(colour)
	self.colour = colour
end

function WayneFeather:GetColour()
	return WAYNE_FEATHERS_COLOURS[self.colour]
end

function WayneFeather:Useable(doer)
	return GetWayneBottle(doer, self.cost) ~= nil
end

function WayneFeather:Use(doer)
	local bottle = GetWayneBottle(doer, self.cost)
	if not bottle then
		return false, "NO_INK"
	end

	if not self.noeffect then
		SendModRPCToClient(GetClientModRPC("WAYNE", "INK"), doer--[[, self.colour]])
	end

	bottle.components.wayne_bottle:Use(self.cost * TUNING.WAYNE.BOTTLE_USES)
	
	-- Fox: Consume only after we're done, so feather stays in hand
	doer.sg.statemem.onexit = function() self:Consume(bottle) end

	return self.onuse(self.inst, doer, bottle)
end

function WayneFeather:Consume(bottle)
	self.inst.components.finiteuses:Use(1)
end

return WayneFeather
