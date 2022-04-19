local WayneBottle = Class(function(self, inst)
    self.inst = inst
	
	self.finiteuses = inst.components.finiteuses
end)

function WayneBottle:Refill(doer, target)
	target:PushEvent("fill_bottle")
	
    self.finiteuses:SetUses(self.finiteuses.total)
    return true
end

function WayneBottle:Use(num)
	self.finiteuses:Use(num)
end

function WayneBottle:CanBeUsed(uses)
	return self.finiteuses:GetUses() >= uses
end

--[[
function WayneBottle:PourOut(pos, doer)
	if not doer or not doer:HasTag("wayne") or not TheWorld.components.wayne_portal_manager then
		return false
	end
	
	local manager = TheWorld.components.wayne_portal_manager
	
	doer.components.sanity:DoDelta(TUNING.WAYNE.PORTAL_SANITY)
	self.finiteuses:SetUses(0)
	
	local portal = SpawnAt("wayne_teleport", pos)
	manager:CreatePortal(portal, doer.userid)
	
	return true
end

function WayneBottle:Swallow(doer)
	self.finiteuses:Use(1)
	doer:PushEvent("swallowed_ink", self.inst)
	return true
end]]

return WayneBottle
