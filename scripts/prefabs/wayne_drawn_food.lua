local preparedfoods = require("preparedfoods")
local preparedfoods_warly = require("preparedfoods_warly")
local spicedfoods = require("spicedfoods")

local FADEOUT_TIME = TUNING.WETZEL.FOOD_PERISH_TIME
local TIMER_NAME = "wetzel_item_fadeout"
local MAX_FADE = 0.10
local INK = WETZEL_INK_COLOUR

local function LookupPreparedfoodData(item)
	return preparedfoods[item] or preparedfoods_warly[item] or spicedfoods[item]
end

local function SplitSpice(prefab, base)
	local idx = prefab:find("spice") or 0
	local spice = prefab:sub(idx)
	return spice, base and prefab:sub(0, idx - 2)
end

local function GetCurrentAnim(inst)
	local anim = (inst.entity:GetDebugString():match("anim: [%w_]+"))
	return anim and (anim:gsub("anim: ", ""))
end

local function GetCurrentBank(inst)
	local anim = (inst.entity:GetDebugString():match("bank: [%w_]+"))
	return anim and (anim:gsub("bank: ", ""))
end

local function Erode(inst)
	local val = MAX_FADE
	if not inst.components.updatelooper then
		inst:AddComponent("updatelooper")
	end
	inst.components.updatelooper:AddOnUpdateFn(function(inst, dt)
		val = val + dt
		inst.AnimState:SetErosionParams(math.min(val, 1), 0.1, 1.0)
		if val >= 1 then
			inst:Remove()
		end
	end)
end

local function Update(inst)
	if not inst.components.timer:TimerExists(TIMER_NAME) then
		inst.components.timer:StartTimer(TIMER_NAME, FADEOUT_TIME)
	end

	local prcnt = math.max((inst.components.timer:GetTimeLeft(TIMER_NAME) - 1) / FADEOUT_TIME, 0)
	inst._perish:set(prcnt * 100)

	inst.AnimState:SetErosionParams(MAX_FADE - prcnt * MAX_FADE, 0.1, 1.0)
	inst.AnimState:SetMultColour(prcnt, prcnt, prcnt, 1)
	
	prcnt = 1 - prcnt

	inst.components.colouradder:PushColour(inst, INK[1] * prcnt, INK[2] * prcnt, INK[3] * prcnt, 0)
end

local function OnTimerDone(inst, data)
	if not data or not data.name == TIMER_NAME then
		return
	end

	if inst.upd_task then
		inst.upd_task:Cancel()
		inst.upd_task = nil
	end
	
	--Spawn fx here
	
	Erode(inst)
end

local function OnEat(inst, ...)
	local origin = SpawnPrefab(inst.origin_data.origin)
	origin.components.edible.oneaten(inst, ...)
	if origin and origin:IsValid() then
		origin:Remove()
	end
end

local function DisplayNameFn(inst)
	return subfmt(STRINGS.NAMES[string.upper(inst.spice).."_FOOD"], { food = STRINGS.NAMES[string.upper(inst.base_name)] })
end

-- Fox: Also gets called on load
local function ApplyData(inst, target)
	if inst.remove_task then
		inst.remove_task:Cancel()
		inst.remove_task = nil
	end

	inst._origin:set(inst.origin_data.origin)

	if inst.origin_data.spicedfood then
		inst.AnimState:SetBuild("plate_food")
		inst.AnimState:SetBank("plate_food")
		inst.AnimState:OverrideSymbol("swap_garnish", "spices", SplitSpice(inst.origin_data.origin) or "")

		inst:AddTag("spicedfood")
	elseif inst.origin_data.preparedfood then
		inst.AnimState:SetBuild(inst.origin_data.build or "cook_pot_food")
		inst.AnimState:SetBank(inst.origin_data.bank or "cook_pot_food")

		inst:AddTag("preparedfood")
	else
		inst.AnimState:SetBank(inst.origin_data.bank)
		inst.AnimState:SetBuild(inst.origin_data.build)
	end
	if inst.origin_data.preparedfood or inst.origin_data.spicedfood then
		local data = LookupPreparedfoodData(inst.origin_data.origin)
		if data then
			inst.AnimState:OverrideSymbol("swap_food", data.overridebuild or "cook_pot_food", data.basename or data.name)
		end
	end
	inst.AnimState:PlayAnimation(inst.origin_data.anim, true)

	if not inst.origin_data.image or type(inst.origin_data.image) ~= "string" then
		inst.origin_data.image = inst.origin_data.origin .. ".tex"
		inst.origin_data.atlas = GetInventoryItemAtlas(inst.origin_data.image)
	end

	inst.components.inventoryitem.atlasname = inst.origin_data.atlas
	inst.components.inventoryitem:ChangeImageName(inst.origin_data.image:sub(0, -5))

	inst.components.edible.healthvalue = inst.origin_data.edible_data.healthvalue or 0
	inst.components.edible.hungervalue = inst.origin_data.edible_data.hungervalue or 0
	inst.components.edible.sanityvalue = inst.origin_data.edible_data.sanityvalue or 0
	inst.components.edible.foodtype = inst.origin_data.edible_data.foodtype or FOODTYPE.GENERIC
	inst.components.edible.secondaryfoodtype = inst.origin_data.edible_data.secondaryfoodtype

	inst.components.edible.temperaturedelta = inst.origin_data.edible_data.temperaturedelta or 0
	inst.components.edible.temperatureduration = inst.origin_data.edible_data.temperatureduration or 0

	inst.components.edible.nochill = inst.origin_data.edible_data.nochill
	inst.components.edible.spice = inst.origin_data.edible_data.spice

	if inst.origin_data.edible_data.customfn then
		inst.components.edible:SetOnEatenFn(OnEat)
	end
end

-- Fox: Not using GetSaveRecord bc we don't fully copy prefabs, only some data gets saved
local function Clone(inst, target)
	inst.origin_data = {
		origin = target.prefab, -- Original prefab
		bank = GetCurrentBank(target),
		build = target.AnimState:GetBuild(),
		anim = GetCurrentAnim(target),
		atlas = target.replica.inventoryitem:GetAtlas(),
		image = target.replica.inventoryitem:GetImage(),
		preparedfood = target:HasTag("preparedfood") or nil,
		spicedfood = target:HasTag("spicedfood") or nil,
		
		edible_data = {
			healthvalue = target.components.edible.healthvalue or 0,
			hungervalue = target.components.edible.hungervalue or 0,
			sanityvalue = target.components.edible.sanityvalue or 0,
			foodtype = target.components.edible.foodtype,
			secondaryfoodtype = target.components.edible.secondaryfoodtype,

			temperaturedelta = target.components.edible.temperaturedelta,
			temperatureduration = target.components.edible.temperatureduration,

			nochill = target.components.edible.nochill,
			spice = target.components.edible.spice,

			customfn = target.components.edible.oneaten ~= nil
		}
	}


	if target:HasTag("spicedfood") then
		local spice = SplitSpice(target.prefab)
		inst.origin_data.image = spice .. "_over.tex"
		inst.origin_data.atlas = GetInventoryItemAtlas(inst.origin_data.image)
	elseif type(inst.origin_data.image) ~= "string" then -- Fox: fixing image being hash for some reason
		inst.origin_data.image = target.prefab .. ".tex"
		inst.origin_data.atlas = GetInventoryItemAtlas(inst.origin_data.image)
	end

	ApplyData(inst, target)
end

local function OnOriginDirty(inst)
	local name = inst._origin:value()
	if inst:HasTag("spicedfood") then
		local spice, actual_name = SplitSpice(name, true)

		inst.spice = spice
		inst.base_name = actual_name
		inst.displaynamefn = DisplayNameFn
		
		inst.inv_image_bg = { image = actual_name .. ".tex" }
		inst.inv_image_bg.atlas = GetInventoryItemAtlas(inst.inv_image_bg.image)
	end
	inst:SetPrefabNameOverride(name)
end

local function OnSave(inst, data)
	data.origin_data = inst.origin_data
end

local function OnLoad(inst, data)
	if data and data.origin_data then
		inst.origin_data = data.origin_data

		-- Fox: VERY small data validation
		if inst.origin_data.bank then
			ApplyData(inst)
		end
	end
end

local function fn()
	local inst = CreateEntity()

	inst.entity:AddTransform()
	inst.entity:AddAnimState()
	inst.entity:AddNetwork()

	MakeInventoryPhysics(inst)

	MakeInventoryFloatable(inst)

	inst:AddTag("wetzel_drawnitem")

	inst._origin = net_string(inst.GUID, "wetzel_drawn_food._origin", "origindirty")
	inst._perish = net_byte(inst.GUID, "wetzel_drawn_food._perish", "perishdirty")
	inst:ListenForEvent("origindirty", OnOriginDirty)
	
	inst.entity:SetPristine()

	if not TheWorld.ismastersim then
		return inst
	end

	inst.origin_data = {}

	inst:AddComponent("edible")
	inst:AddComponent("inspectable")
	inst:AddComponent("inventoryitem")
	inst:AddComponent("colouradder")
	inst:AddComponent("timer")

	MakeSmallBurnable(inst)
	MakeSmallPropagator(inst)
	MakeHauntableLaunch(inst)

	inst.Clone = Clone
	inst.OnSave = OnSave
	inst.OnLoad = OnLoad

	inst.remove_task = inst:DoTaskInTime(0, inst.Remove) -- Fox: If we spawned without init

	inst:ListenForEvent("timerdone", OnTimerDone)
	
	inst.upd_task = inst:DoPeriodicTask(1, Update)
	inst:DoTaskInTime(0, Update)

	return inst
end

return Prefab("wetzel_drawn_food", fn)