local AddRecipe = AddRecipe
_G.setfenv(1, _G)

-- Fox: Here we add new craft type: wayne ink.
-- Where value is prefab's name
FINITEUSES_INGREDIENT = {
    INK = "wayne_bottle",
}

local is_finiteuses_ingredient = {}
for k, v in pairs(FINITEUSES_INGREDIENT) do
    is_finiteuses_ingredient[v] = true
end

function IsFiniteusesIngredient(ingredienttype)
    return is_finiteuses_ingredient[ingredienttype] ~= nil
end

do
    local FINITUSES_ING_IMAGE_OVERRIDE = {
        wayne_bottle = "wayne_ink.tex",
    }
	require("recipe")
	local _ctor = Recipe._ctor
	Recipe._ctor = function(self, name, ingredients, ...)
		for i, ing in ipairs(ingredients) do
            if IsFiniteusesIngredient(ing.type) then
                if not self.finiteuses_ingredients then
                    self.finiteuses_ingredients = {}
                end

                if FINITUSES_ING_IMAGE_OVERRIDE[ing.type] then
                    ing.image = FINITUSES_ING_IMAGE_OVERRIDE[ing.type]
                end

                table.insert(self.finiteuses_ingredients, ing)
                table.remove(ingredients, i) -- Fox: This is removed so the default ctor won't add it as a common ingredient
            end
        end
        
		return _ctor(self, name, ingredients, ...)
	end
end

CUSTOM_RECIPETABS.SHADOWARTS = { str = "SHADOWARTS", sort = 999, icon = "tab_shadowart.tex", icon_atlas = "images/wayne_ui.xml",  owner_tag = "shadowartist"}

local pencil = AddRecipe("wayne_featherpencil", {Ingredient(FINITEUSES_INGREDIENT.INK, 0.1), Ingredient("stinger", 1), Ingredient("twigs", 2)}, RECIPETABS.TOOLS, TECH.NONE, nil, nil, nil, nil, "shadowartist")
pencil.product = "featherpencil"
pencil.image = "featherpencil.tex"
pencil.sortkey = AllRecipes["featherpencil"].sortkey

AddRecipe("wayne_puddle_builder", {Ingredient(CHARACTER_INGREDIENT.SANITY, TUNING.WAYNE.PUDDLE_SANITY_AMOUNT), Ingredient(CHARACTER_INGREDIENT.MAX_SANITY, TUNING.WAYNE.PUDDLE_SANITY)}, CUSTOM_RECIPETABS.SHADOWARTS, TECH.NONE, nil, nil, nil, nil, "shadowartist").image = "wayne_ink.tex"
AddRecipe("wayne_paper", {Ingredient("papyrus", 1), Ingredient("charcoal", 1), Ingredient("featherpencil", 1)}, CUSTOM_RECIPETABS.SHADOWARTS, TECH.NONE, nil, nil, nil, nil, "shadowartist")
AddRecipe("wayne_bottle", {Ingredient("turf_desertdirt", 4), Ingredient("slurtle_shellpieces", 2), Ingredient("marble", 2)}, CUSTOM_RECIPETABS.SHADOWARTS, TECH.NONE, nil, nil, nil, nil, "shadowartist")
AddRecipe("wayne_teleport_builder", {Ingredient(FINITEUSES_INGREDIENT.INK, 0.5)}, CUSTOM_RECIPETABS.SHADOWARTS, TECH.NONE, "wayne_teleport_placer", nil, nil, nil, "shadowartist")
AddRecipe("wayne_feather_black", {Ingredient("featherpencil", 2), Ingredient("feather_crow", 1)}, CUSTOM_RECIPETABS.SHADOWARTS, TECH.SCIENCE_ONE, nil, nil, nil, nil, "shadowartist")
AddRecipe("wayne_feather_red", {Ingredient("featherpencil", 2), Ingredient("feather_robin", 1)}, CUSTOM_RECIPETABS.SHADOWARTS, TECH.SCIENCE_ONE, nil, nil, nil, nil, "shadowartist")
AddRecipe("wayne_feather_white", {Ingredient("featherpencil", 2), Ingredient("feather_robin_winter", 1)}, CUSTOM_RECIPETABS.SHADOWARTS, TECH.SCIENCE_TWO, nil, nil, nil, nil, "shadowartist")
AddRecipe("wayne_feather_yellow", {Ingredient("featherpencil", 2), Ingredient("feather_canary", 1)}, CUSTOM_RECIPETABS.SHADOWARTS, TECH.SCIENCE_TWO, nil, nil, nil, nil, "shadowartist")
