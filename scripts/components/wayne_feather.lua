local WetzelFeather = Class(function(self, inst)
	self.inst = inst

	self.cost = 0
	self.onuse = nil
	self.colour = {0, 0, 0}
	self.noeffect = false
end)

function WetzelFeather:SetCost(cost)
	self.cost = cost
end

function WetzelFeather:SetOnUse(fn)
	self.onuse = fn
end

function WetzelFeather:SetColour(colour)
	self.colour = colour
end

function WetzelFeather:GetColour()
	return WETZEL_FEATHERS_COLOURS[self.colour]
end

function WetzelFeather:Useable(doer)
	return GetWetzelBottle(doer, self.cost) ~= nil
end

function WetzelFeather:Use(doer)
	local bottle = GetWetzelBottle(doer, self.cost)
	if not bottle then
		return false, "NO_INK"
	end

	if not self.noeffect then
		SendModRPCToClient(GetClientModRPC("WETZEL", "INK"), doer--[[, self.colour]])
	end

	bottle.components.wetzel_bottle:Use(self.cost * TUNING.WETZEL.BOTTLE_USES)
	
	-- Fox: Consume only after we're done, so feather stays in hand
	doer.sg.statemem.onexit = function() self:Consume(bottle) end

	return self.onuse(self.inst, doer, bottle)
end

function WetzelFeather:Consume(bottle)
	self.inst.components.finiteuses:Use(1)
end

return WetzelFeather
