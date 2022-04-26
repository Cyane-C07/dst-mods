local WetzelBottle = Class(function(self, inst)
    self.inst = inst
	
	self.finiteuses = inst.components.finiteuses
end)

function WetzelBottle:Refill(doer, target)
	target:PushEvent("fill_bottle")
	
    self.finiteuses:SetUses(self.finiteuses.total)
    return true
end

function WetzelBottle:Use(num)
	self.finiteuses:Use(num)
end

function WetzelBottle:CanBeUsed(uses)
	return self.finiteuses:GetUses() >= uses
end

--[[
function WetzelBottle:PourOut(pos, doer)
	if not doer or not doer:HasTag("wetzel") or not TheWorld.components.wetzel_portal_manager then
		return false
	end
	
	local manager = TheWorld.components.wetzel_portal_manager
	
	doer.components.sanity:DoDelta(TUNING.WETZEL.PORTAL_SANITY)
	self.finiteuses:SetUses(0)
	
	local portal = SpawnAt("wetzel_teleport", pos)
	manager:CreatePortal(portal, doer.userid)
	
	return true
end

function WetzelBottle:Swallow(doer)
	self.finiteuses:Use(1)
	doer:PushEvent("swallowed_ink", self.inst)
	return true
end]]

return WetzelBottle
