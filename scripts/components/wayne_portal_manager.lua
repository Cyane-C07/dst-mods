-- Every portal will add itself to self.portals table after initialisation.
-- Player will be accessing their portals only through this component

local function Debug(self)
	print("PortalManager:Debug")
	for id, portals in pairs(self.portals) do
		print(id)
		for i, portal in ipairs(portals) do
			print(portal, portal:IsValid())
		end
	end
end

local PortalManager = Class(function(self, inst)
    self.inst = inst
	
	self.portals = {}
	
	if CHEATS_ENABLED then
		rawset(_G, "db", function() Debug(self) end)
	end
end)

function PortalManager:LoadPortal(portal)
	local id = portal.owner
	if not self.portals[id] then
		self.portals[id] = {}
	end
	
	table.insert(self.portals[id], portal)
end

function PortalManager:CreatePortal(newp, id)
	if not self.portals[id] then
		self.portals[id] = {}
	end
	
	newp.owner = id
	
	local portals = self.portals[id]
	local count = #portals
	
	if count > 2 then
		printwrap(string.format("WARNING: player has 3+ portals (%s)", id), portals)
		for i = 3, #portals do
			portals[i]:Destroy()
			portals[i] = nil
		end
		return
	end
	
	if count == 2 then
		portals[1]:RemoveEventCallback("onremove", portals[1]._onremove)
		portals[1]:Destroy()
		portals[1] = portals[2]
		portals[2] = newp
	elseif count == 1 then
		portals[2] = newp
	end
	
	count = #portals
	if count > 0 then
		newp.components.teleporter.targetTeleporter = portals[1]
		portals[1].components.teleporter.targetTeleporter = newp
	else
		portals[1] = newp
	end
end

function PortalManager:GetPortals(id)
	return self.portals[id] or {}
end

function PortalManager:UnregisterPortal(portal)
	-- print("UnregisterPortal")
	if not portal or not portal:IsValid() or
	not portal.owner or not self.portals[portal.owner] then
		-- print("return")
		return
	end
	
	RemoveByValue(self.portals[portal.owner], portal)
	
	-- printwrap("raw", self.portals[portal.owner])
	
	local sorted = {}
	for k, v in ipairs(self.portals[portal.owner]) do
		if v ~= nil then
			if v.components.teleporter then
				v.components.teleporter.targetTeleporter = nil
			end
			table.insert(sorted, v)
		end
	end
	
	self.portals[portal.owner] = sorted
	
	-- printwrap("sorted", sorted)
end

function PortalManager:ClearPortals(id)
	if not self.portals[id] then
		return
	end
	
	for i, portal in ipairs(self.portals[id]) do
		portal:RemoveEventCallback("onremove", portal._onremove)
		portal:Destroy()
	end
	self.portals[id] = nil
end

return PortalManager
