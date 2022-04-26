local AddAction = AddAction
local AddComponentAction = AddComponentAction
local AddStategraphActionHandler = AddStategraphActionHandler

_G.setfenv(1, _G)

require("actions")

local REFILL = Action({priority=1})
REFILL.str = STRINGS.ACTIONS.REFILL
REFILL.id = "WETZEL_REFILL"

REFILL.fn = function(act)
    if act.invobject and act.doer and act.target then
        return act.invobject.components.wetzel_bottle:Refill(act.doer, act.target)
    end
end

AddAction(REFILL)

-- Fox: For when equipped for the puddle to be clickable
AddComponentAction("EQUIPPED", "wetzel_bottle", function(inst, doer, target, actions, right)
	if doer:HasTag("shadowartist") and target:HasTag("shadow_ink_source") and
	GetFiniteusesPercent(inst) ~= 1 then
		table.insert(actions, REFILL)
	end
end)

AddComponentAction("USEITEM", "wetzel_bottle", function(inst, doer, target, actions, right)
	if doer:HasTag("shadowartist") and target:HasTag("shadow_ink_source") and
	GetFiniteusesPercent(inst) ~= 1 then
		table.insert(actions, REFILL)
	end
end)

AddStategraphActionHandler("wilson", ActionHandler(REFILL, "dolongaction"))
AddStategraphActionHandler("wilson_client", ActionHandler(REFILL, "dolongaction"))

----------------------------------------------------------------------------------------------

local DRAW = Action({priority=1})
DRAW.str = STRINGS.ACTIONS.DRAW
DRAW.id = "WETZEL_DRAW"

DRAW.fn = function(act)
    if act.invobject and act.doer and act.target then
        return act.invobject.components.wetzel_paper:Draw(act.target, act.doer)
    end
end

AddAction(DRAW)

AddComponentAction("USEITEM", "wetzel_paper", function(inst, doer, target, actions, right)
	if not doer:HasTag("shadowartist") or target:HasTag("wetzel_drawnitem") then
		return
	end

	for k, v in pairs(FOODGROUP) do
		if doer:HasTag(v.name.."_eater") then
			for i, v2 in ipairs(v.types) do
				if target:HasTag("edible_"..v2) then
					table.insert(actions, DRAW)
					return
				end
			end
		end
	end
	
	for k, v in pairs(FOODTYPE) do
		if target:HasTag("edible_"..v) and doer:HasTag(v.."_eater") then
			table.insert(actions, DRAW)
			return
		end
	end
end)

AddStategraphActionHandler("wilson", ActionHandler(DRAW, "wetzel_draw"))
AddStategraphActionHandler("wilson_client", ActionHandler(DRAW, "wetzel_draw"))

----------------------------------------------------------------------------------------------

local FEATHER = Action({priority=1})
FEATHER.str = STRINGS.ACTIONS.USE_FEATHER
FEATHER.id = "WETZEL_FEATHER"
FEATHER.distance = math.huge

FEATHER.fn = function(act)
    if act.doer:HasTag("shadowartist") and act.invobject then
        return act.invobject.components.wetzel_feather:Use(act.doer)
    end
end

AddAction(FEATHER)

AddComponentAction("POINT", "wetzel_feather", function(inst, doer, pos, actions, right)
	if doer:HasTag("shadowartist") and right then
		table.insert(actions, FEATHER)
	end
end)

AddStategraphActionHandler("wilson", ActionHandler(FEATHER, "wetzel_feather_pre"))
AddStategraphActionHandler("wilson_client", ActionHandler(FEATHER, "wetzel_feather_pre"))

-- local POUR = Action({priority=1})
-- POUR.str = "Pour out"
-- POUR.id = "WETZEL_POUR"

-- POUR.fn = function(act)
--     if act.invobject and act.invobject.components.wetzel_bottle then
--         return act.invobject.components.wetzel_bottle:PourOut(act:GetActionPoint(), act.doer)
-- 	end
-- end

-- env.AddAction(POUR)

-- env.AddStategraphActionHandler("wilson", ActionHandler(POUR, "dolongaction"))
-- env.AddStategraphActionHandler("wilson_client", ActionHandler(POUR, "dolongaction"))

-- env.AddComponentAction("POINT", "wetzel_bottle", function(inst, doer, pos, actions, right)
-- 	local x, y, z = pos:Get()
-- 	if doer:HasTag("wetzel") and not right and GetPercent(inst) == 1 and
-- 	(TheWorld.Map:IsAboveGroundAtPoint(x, y, z) or TheWorld.Map:GetPlatformAtPoint(x, z) ~= nil) and
-- 	not TheWorld.Map:IsGroundTargetBlocked(pos) and not doer:HasTag("steeringboat") then
-- 		table.insert(actions, POUR)
-- 	end
-- end)

-- local SWALLOW = Action({priority=1})
-- SWALLOW.str = "Swallow"
-- SWALLOW.id = "WETZEL_SWALLOW"

-- SWALLOW.fn = function(act)
--     if act.invobject and act.invobject.components.wetzel_bottle then
--         return act.invobject.components.wetzel_bottle:Swallow(act.doer)
-- 	end
-- end

-- env.AddAction(SWALLOW)

-- env.AddComponentAction("INVENTORY", "wetzel_bottle", function(inst, doer, actions, right)
-- 	if doer:HasTag("wetzel") and GetPercent(inst) > 0 then
-- 		table.insert(actions, SWALLOW)
-- 	end
-- end)

-- env.AddStategraphActionHandler("wilson", ActionHandler(SWALLOW, "eat"))
-- env.AddStategraphActionHandler("wilson_client", ActionHandler(SWALLOW, "eat"))