-- local AddRecipe = AddRecipe
-- _G.setfenv(1, _G)

-- -- Fox: Here we add new craft type: wetzel ink.
-- -- Where value is prefab's name
-- FINITEUSES_INGREDIENT = {
--     INK = "wetzel_bottle",
-- }

-- local is_finiteuses_ingredient = {}
-- for k, v in pairs(FINITEUSES_INGREDIENT) do
--     is_finiteuses_ingredient[v] = true
-- end

-- function IsFiniteusesIngredient(ingredienttype)
--     return is_finiteuses_ingredient[ingredienttype] ~= nil
-- end

-- do
--     local FINITUSES_ING_IMAGE_OVERRIDE = {
--         wetzel_bottle = "wetzel_ink.tex",
--     }
-- 	require("recipe")
-- 	local _ctor = Recipe._ctor
-- 	Recipe._ctor = function(self, name, ingredients, ...)
-- 		for i, ing in ipairs(ingredients) do
--             if IsFiniteusesIngredient(ing.type) then
--                 if not self.finiteuses_ingredients then
--                     self.finiteuses_ingredients = {}
--                 end

--                 if FINITUSES_ING_IMAGE_OVERRIDE[ing.type] then
--                     ing.image = FINITUSES_ING_IMAGE_OVERRIDE[ing.type]
--                 end

--                 table.insert(self.finiteuses_ingredients, ing)
--                 table.remove(ingredients, i) -- Fox: This is removed so the default ctor won't add it as a common ingredient
--             end
--         end
        
-- 		return _ctor(self, name, ingredients, ...)
-- 	end
-- end

-- local pencil = AddRecipe("wetzel_featherpencil", {Ingredient(FINITEUSES_INGREDIENT.INK, 0.1), Ingredient("stinger", 1), Ingredient("twigs", 2)}, RECIPETABS.TOOLS, TECH.NONE, nil, nil, nil, nil, "shadowartist")
-- pencil.product = "featherpencil"
-- pencil.image = "featherpencil.tex"
-- pencil.sortkey = AllRecipes["featherpencil"].sortkey
