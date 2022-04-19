local env = env
local modimport = modimport

local AddStategraphState = AddStategraphState
local AddClassPostConstruct = AddClassPostConstruct
local AddComponentPostInit = AddComponentPostInit
local AddStategraphPostInit = AddStategraphPostInit

local FONT_SHAKE = GetModConfigData("wayne_font_shake")


_G.setfenv(1, _G)

if FONT_SHAKE == nil then
	WAYNE_FONT_SHAKE = true
else
	WAYNE_FONT_SHAKE = FONT_SHAKE
end

local SERVER_SIDE = TheNet:GetIsServer()
local UpvalueHacker = require("tools/upvaluehacker")

if not env.MODROOT:find("workshop-") then
	CHEATS_ENABLED = true
end

--------------------------------------------
----------------------------------------INIT
--------------------------------------------

require("wayne/tuning")
require("wayne/strings")
modimport("scripts/wayne/util.lua")
modimport("scripts/wayne/actions.lua")
modimport("scripts/wayne/recipes.lua")

-----------------------------------------------
----------------------------------------GENERAL
-----------------------------------------------

env.AddModCharacter("wayne", "MALE")

TALKINGFONT_WAYNE = "talkingfont_wayne"

env.AddSimPostInit(function()
	TheSim:UnloadFont(TALKINGFONT_WAYNE)
	TheSim:UnloadPrefabs({"wayne_fonts"})

	local font = resolvefilepath("fonts/talkingfont_wayne.zip")
	local assets = {
		Asset("FONT", font),
	}

	local FontsPrefab = Prefab("wayne_fonts", function() return CreateEntity() end, assets)
	RegisterPrefabs(FontsPrefab)
	TheSim:LoadPrefabs({"wayne_fonts"})
	TheSim:LoadFont(font, TALKINGFONT_WAYNE)
end)

-- Since we're using custom atlas
require("simutil")
do
	local _GetInventoryItemAtlas = GetInventoryItemAtlas
	local inventoryItemAtlasLookup = UpvalueHacker.GetUpvalue(GetInventoryItemAtlas, "inventoryItemAtlasLookup")
	local wayne_inv = resolvefilepath("images/wayne_inv.xml")

	GetInventoryItemAtlas = function(imagename, ...)
		if inventoryItemAtlasLookup[imagename] then
			return inventoryItemAtlasLookup[imagename]
		end
		if TheSim:AtlasContains(wayne_inv, imagename) then
			inventoryItemAtlasLookup[imagename] = wayne_inv
			return wayne_inv
		end
		return _GetInventoryItemAtlas(imagename, ...)
	end
end

do
	local _IsValid = BufferedAction.IsValid
	BufferedAction.IsValid = function(self, ...)
		if self.doer and self.doer:HasTag("player") and self.doer.blocked_actions then
			return self.action == ACTIONS.WALKTO
		end
		return _IsValid(self, ...)
	end
end

AddClientModRPCHandler("WAYNE", "TELEPORT", function(value)
	local inst = ThePlayer

	if inst and inst.OnWayneTeleport then
		inst:OnWayneTeleport(value)
	end
end)

AddClientModRPCHandler("WAYNE", "INK", function(persists --[[, colour]])
	local inst = ThePlayer

	if inst then
		inst:PushEvent("inkover", {persists = nil})
		-- , {
		-- 	colour = colour,
		-- 	persists = persists,
		-- })
	end
end)

-- Fox: Shader work goes here
-- env.AddModShadersInit(function()
-- 	PostProcessorEffects.WayneEffect = PostProcessor:AddPostProcessEffect(resolvefilepath("shaders/postprocess_lunacy.ksh"))
-- 	UniformVariables.WayneFrequency = PostProcessor:AddUniformVariable("FREQUENCY", 1)
-- 	UniformVariables.WayneVelocity = PostProcessor:AddUniformVariable("VELOCITY", 1)
-- 	UniformVariables.WayneAmplitude = PostProcessor:AddUniformVariable("AMPLITUDE", 1)
-- 	UniformVariables.WayneTime = PostProcessor:AddUniformVariable("TIME", 1)

-- 	PostProcessor:SetUniformVariable(UniformVariables.WayneFrequency, 1)
-- 	PostProcessor:SetUniformVariable(UniformVariables.WayneVelocity, 1)
-- 	PostProcessor:SetUniformVariable(UniformVariables.WayneAmplitude, 1)
-- 	PostProcessor:SetUniformVariable(UniformVariables.WayneTime, 1)

-- 	PostProcessor:SetEffectUniformVariables(
-- 		PostProcessorEffects.WayneEffect,
-- 		UniformVariables.WayneFrequency,
-- 		UniformVariables.WayneVelocity,
-- 		UniformVariables.WayneAmplitude,
-- 		UniformVariables.WayneTime
-- 	)
-- end)

-- env.AddModShadersSortAndEnable(function()
-- 	PostProcessor:SetPostProcessEffectAfter(PostProcessorEffects.WayneEffect, PostProcessorEffects.Lunacy)
-- 	PostProcessor:EnablePostProcessEffect(PostProcessorEffects.WayneEffect, false)
	
-- 	PostProcessor:SetUniformVariable(UniformVariables.WayneFrequency, 1)
-- 	PostProcessor:SetUniformVariable(UniformVariables.WayneVelocity, 1)
-- 	PostProcessor:SetUniformVariable(UniformVariables.WayneAmplitude, 1)
-- 	PostProcessor:SetUniformVariable(UniformVariables.WayneTime, 1)
-- end)

--------------------------------------------------
----------------------------------------COMPONENTS
--------------------------------------------------

AddClassPostConstruct("components/inventory_replica", function(self)
	-- Fox: Returns array-like table
	function self:ReferenceAllItems()
		local items = {}

		if self.inst.components.inventory then
			for k, v in pairs(self.inst.components.inventory:ReferenceAllItems()) do
				table.insert(items, v)
			end
		elseif self.classified then
			for k, v in pairs(self:GetItems()) do
				table.insert(items, v)
			end

			local container = self:GetOverflowContainer()
			if container then
				for _, item in pairs(container:GetItems()) do
					table.insert(items, item)
				end
			end
		end

		local active = self:GetActiveItem()
		if active then
			table.insert(items, active)
		end

		for _, v in pairs(self:GetEquips()) do
			table.insert(items, v)
		end

		return items
	end
end)

local function CanBuild(self)
	local _CanBuild = self.CanBuild
	function self:CanBuild(recname, ...)
		local val = _CanBuild(self, recname, ...)
		local recipe = GetValidRecipe(recname)
		if val and recipe.finiteuses_ingredients then
			for i, ing in ipairs(recipe.finiteuses_ingredients) do
				if not GetFirstAvalibleFiniteusesIng(self.inst, ing.type, ing.amount) then
					return false
				end
			end
		end
		return val
	end
end

AddClassPostConstruct("components/builder_replica", function(self)
	-- Fox: Since we're hacking in craft tabs, we use this to determine if we have enough resources or not
	local _HasCharacterIngredient = self.HasCharacterIngredient
	function self:HasCharacterIngredient(ing, ...)
		if IsFiniteusesIngredient(ing.type) then
			local item = GetFirstAvalibleFiniteusesIng(self.inst, ing.type, ing.amount)
			local uses = item and GetFiniteusesPercent(item) or 0
			return uses >= ing.amount, uses
		end
		return _HasCharacterIngredient(self, ing, ...)
	end

	CanBuild(self)
end)

AddComponentPostInit("playervision", function(self)
	local wayne_vision = false
	local texture = resolvefilepath("images/colour_cubes/wayne_cc.tex")
	local WAYNE_COLOURCUBES =
	{
		day = texture,
		dusk = texture,
		night = texture,
		full_moon = texture,
	}
	
	local WAYNE_PHASEFN =
	{
		blendtime = .5,
		events = {},
		fn = nil,
	}

	function self:SetWayneVision(val)
		wayne_vision = val
		self:ForceNightVision(val)
		self:UpdateCCTable()
	end

	local _UpdateCCTable = self.UpdateCCTable
	function self:UpdateCCTable(...)
		if wayne_vision then
			if WAYNE_COLOURCUBES ~= self.currentcctable then
				self.currentcctable = WAYNE_COLOURCUBES
				self.currentccphasefn = WAYNE_PHASEFN
				self.inst:PushEvent("ccoverrides", WAYNE_COLOURCUBES)
				self.inst:PushEvent("ccphasefn", WAYNE_PHASEFN)
			end
		else
			_UpdateCCTable(self, ...)
		end
	end
end)

------------------------------------------
----------------------------------------UI
------------------------------------------

AddClassPostConstruct("screens/playerhud", function(self)
	local InkOver = require("widgets/ink_over")

	local _CreateOverlays = self.CreateOverlays
	function self:CreateOverlays(owner, ...)
		local val = {_CreateOverlays(self, owner, ...)}
		
		self.inst:ListenForEvent("inkover", function(_, data)
			printwrap("inkover", data)
			print(debugstack())
			if data.persists ~= nil and not data.persists and self.wayne_ink_over_persistant then
				self.wayne_ink_over_persistant:Perish()
				return
			end

			local ink = self.overlayroot:AddChild(InkOver())
			--[[
			if data.colour then
				ink:SetInkColour(WAYNE_FEATHERS_COLOURS[data.colour])
			end]]

			if data.persists then
				ink:SetPersists()
				self.wayne_ink_over_persistant = ink
			end
			
		end, owner)
		
		return unpack(val)
	end
end)

AddClassPostConstruct("widgets/recipepopup", function(self)
	-- Fox: Super dirty hack! We check if recipe has finiteuses_ingredients, and then convert local recipe reference
	-- to have common fake ingredient with our icon
	local _Refresh = self.Refresh
	function self:Refresh(...)
		if self.recipe and self.recipe.finiteuses_ingredients then
			local _recipe = self.recipe
			self.recipe = deepcopy(_recipe)

			for i, v in ipairs(self.recipe.finiteuses_ingredients) do
				table.insert(self.recipe.character_ingredients, v)
			end

			local args = {_Refresh(self, ...)}

			self.recipe = _recipe

			return unpack(args)
		end
		return _Refresh(self, ...)
	end
end)

AddClassPostConstruct("widgets/ingredientui", function(self, atlas, image, quantity, on_hand, has_enough, desc, owner, name)
	if quantity and IsFiniteusesIngredient(name) then
		self.quant:SetString(string.format("-%2.0f%%", quantity * 100))
	end
end)

AddClassPostConstruct("widgets/hoverer", function(self, item)
	local COLOR = {186/255, 133/255, 255/255, 1}
	local _OnUpdate = self.OnUpdate
	function self:OnUpdate(...)
		local args = {_OnUpdate(self, ...)}
		
		local target = TheInput:GetHUDEntityUnderMouse()
		if target then
			target = target.widget and target.widget.parent and target.widget.parent.item -- Real item (on client)
		else
			target = TheInput:GetWorldEntityUnderMouse()
		end
		
		if target and target.HasTag and target:HasTag("wayne_drawnitem") then
			self.text:SetColour(unpack(COLOR))
		end
		
		return unpack(args)
	end
end)

AddClassPostConstruct("widgets/itemtile", function(self, item)
	local Image = require "widgets/image"
	local UIAnim = require "widgets/uianim"
	
	if item and item:HasTag("wayne_drawnitem") then
		-- Fox: Adding our widget infront of everything + this'll make sure it's not hiden when we drag this item
		self.drawn = self:AddChild(Image("images/wayne_ui.xml", "ink.tex"))
		self.drawn:SetClickable(false)
		self.drawn:MoveToBack()
		
		self.drawn_perish = self.image:AddChild(UIAnim())
        self.drawn_perish:GetAnimState():SetBank("recharge_meter")
        self.drawn_perish:GetAnimState():SetBuild("recharge_meter")
        self.drawn_perish:GetAnimState():HideSymbol("frame")
		self.drawn_perish:GetAnimState():SetAddColour(unpack(WAYNE_INK_COLOUR))
		self.drawn_perish:GetAnimState():SetMultColour(0, 0, 0, 1)
        self.drawn_perish:SetClickable(false)
		self.drawn_perish:MoveToBack()

		local function Update(item)
			local percent = 1 - math.clamp(item._perish:value()/100, 0, 1)
			self.drawn_perish:GetAnimState():SetPercent("recharge", percent)
		end
		Update(item)
		self.inst:ListenForEvent("perishdirty", Update, item)

		local _StartDrag = self.StartDrag
		function self:StartDrag(...)
			if self.item.replica.inventoryitem then
				if self.drawn_perish then
					self.drawn_perish:Hide()
				end

				-- if self.drawn then
				-- 	self.drawn:Hide()
				-- end
			end
			return _StartDrag(self, ...)
		end

	end
end)

--------------------------------------------------
----------------------------------------STATEGTAPH
--------------------------------------------------

local CLIENT_STATES = {
	State{
		name = "wayne_make_puddle",
		tags = {"busy", "nointerrupt"},

		onenter = function(inst)
			inst.components.locomotor:Stop()
			
			inst.AnimState:PlayAnimation("sing_pre", false)
			inst.AnimState:PushAnimation("sing_lag", false)

			inst:PerformPreviewBufferedAction()
			inst.sg:SetTimeout(2)
		end,

		onupdate = function(inst)
			if inst:HasTag("busy") then
				if inst.entity:FlattenMovementPrediction() then
					inst.sg:GoToState("idle", "noanim")
				end
			elseif inst.bufferedaction == nil then
				inst.sg:GoToState("idle")
			end
		end,

		ontimeout = function(inst)
			inst:ClearBufferedAction()
			inst.sg:GoToState("idle")
		end,
	},

	State{
		name = "wayne_feather_pre",
		tags = { "doing", "busy", "nomorph" },

		onenter = function(inst, feather)
			inst.components.locomotor:Stop()
			
			inst.AnimState:PlayAnimation("tornado", false)

			inst:PerformPreviewBufferedAction()
			inst.sg:SetTimeout(2)
		end,

		timeline =
		{
			TimeEvent(20 * FRAMES, function(inst)
				inst.AnimState:SetPercent("tornado", 0.25)
			end),
		},

		onupdate = function(inst)
			if inst:HasTag("busy") then
				if inst.entity:FlattenMovementPrediction() then
					inst.sg:GoToState("idle", "noanim")
				end
			elseif inst.bufferedaction == nil then
				inst.sg:GoToState("idle")
			end
		end,

		ontimeout = function(inst)
			inst:ClearBufferedAction()
			inst.sg:GoToState("idle")
		end,
	},
}

for _, state in ipairs(require("wayne/sg_client")) do
	AddStategraphState("wilson_client", state)
end

do
	local function SgPostinit(self)
		local _build = self.actionhandlers[ACTIONS.BUILD].deststate
		self.actionhandlers[ACTIONS.BUILD].deststate = function(inst, action, ...)
			if action.recipe == "wayne_puddle_builder" and inst:HasTag("shadowartist") then
				return "wayne_make_puddle"
			end
			return _build(inst, action, ...)
		end

		local _eat_dest = self.actionhandlers[ACTIONS.EAT].deststate
		self.actionhandlers[ACTIONS.EAT].deststate = function(inst, action)
			local state = _eat_dest(inst, action)
			if state and inst:HasTag("wayne") then
				return "eat"
			end
			return state
		end

		if not SERVER_SIDE then
			return
		end

		local _eat = self.states.eat.onenter
		self.states.eat.onenter = function(inst, foodinfo, ...)
			local act = inst:GetBufferedAction()
			local food = act and act.invobject
			
			if food and food:HasTag("wayne_drawnitem") then
				inst.sg.statemem.shadowfood = true
			end
			return _eat(inst, ...)
		end

		table.insert(self.states.eat.timeline, TimeEvent(21 * FRAMES, function(inst)
			if inst.sg.statemem.shadowfood then
				inst.sg.statemem.shadowfood_fx = inst:SpawnChild("wayne_shadoweat_fx").entity:AddFollower():FollowSymbol(inst.GUID, "headbase", 0, 160, 0)
				inst.sg.statemem.shadowfood = nil
			end
		end))

		local function pred(a,b)
			return a.time < b.time
		end
		table.sort(self.states.eat.timeline, pred)

		local _eat_onexit = self.states.eat.onexit
		self.states.eat.onexit = function(inst, ...)
			if inst.sg.statemem.shadowfood_fx then
				inst.sg.statemem.shadowfood_fx:Remove()
				inst.sg.statemem.shadowfood_fx = nil
			end
			return _eat_onexit(inst, ...)
		end
	end
	AddStategraphPostInit("wilson_client", SgPostinit)
	AddStategraphPostInit("wilson", SgPostinit)
end

---------------------------------------------------
----------------------------------------SERVER ONLY
---------------------------------------------------

if not SERVER_SIDE then
	return
end

--------------------------------------------------
----------------------------------------COMPONENTS
--------------------------------------------------

AddComponentPostInit("builder", function(self)
	local _RemoveIngredients = self.RemoveIngredients

	function self:RemoveIngredients(ingredients, recname, ...)
		local recipe = AllRecipes[recname]
		if recipe and recipe.finiteuses_ingredients then
			for i, ing in ipairs(recipe.finiteuses_ingredients) do
				local item = GetFirstAvalibleFiniteusesIng(self.inst, ing.type, ing.amount)
				if item then
					item.components.finiteuses:SetPercent(item.components.finiteuses:GetPercent() - ing.amount)
				end
			end
		end

		return _RemoveIngredients(self, ingredients, recname, ...)
	end

	CanBuild(self)
end)

--------------------------------------------------
----------------------------------------STATEGTAPH
--------------------------------------------------

for _, state in ipairs(require("wayne/sg_server")) do
	AddStategraphState("wilson", state)
end

--------------------------------------------
----------------------------------------MISC
--------------------------------------------

-- Fox: Since players can't save references to other entities, I'll have to make a manager component
-- to keep track of all portals
env.AddPrefabPostInit("world", function(w)
	w:AddComponent("wayne_portal_manager")
end)

do
	local _CanEntitySeeInDark = CanEntitySeeInDark
	CanEntitySeeInDark = function(inst, ...)
		if inst and inst.wayne_nightvision then
			return true
		end
		return _CanEntitySeeInDark(inst, ...)
	end
end

do
	-- local getcharacterstring = UpvalueHacker.GetUpvalue(GetActionString, "getcharacterstring")

	local function RandomWayneString()
		local str_end = {"...", ".", "?", "!"}
		local words = {}
		local letters = math.random(1, 3)
		for letter = 1, letters do
			local count = math.random(3, 5)
			for i = 1, count do
				local word = GetRandomItem(STRINGS.WAYNE_WORDS)
				if i == 1 then
					local let = word:sub(1, 1)
					word = string.upper(let) .. word:sub(2)

					if letter ~= 1 then
					word = " " .. word
					end
				end

				if i ~= count then
					word = word .. " "
				end

				table.insert(words, word)
			end
			table.insert(words, GetRandomItem(str_end))
		end
		return table.concat(words, "")
	end

	local _GetSpecialCharacterString = GetSpecialCharacterString
	GetSpecialCharacterString = function(character, ...)
		return string.lower(character) == "wayne" and
		RandomWayneString() or
		_GetSpecialCharacterString(character, ...)
	end
end