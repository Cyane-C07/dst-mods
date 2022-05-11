modimport("scripts/libs/skins_api.lua")
modimport("scripts/libs/item_skins_api.lua")

local env = env
_G.setfenv(1, _G)

require("skinsutils")
-- local SKIN_AFFINITY_INFO = require("skin_affinity_info")

-- SKIN_AFFINITY_INFO.wetzel = {
-- 	"wetzel_shadow",
-- }

-- PREFAB_SKINS["wetzel"] = {
-- 	"wetzel_none", 
-- 	-- "wetzel_shadow",
-- }

-- PREFAB_SKINS_IDS = {}
-- for prefab, skins in pairs(PREFAB_SKINS) do
--     PREFAB_SKINS_IDS[prefab] = {}
--     for k, v in pairs(skins) do
-- 		PREFAB_SKINS_IDS[prefab][v] = k
--     end
-- end

-- AddSkinnableCharacter("wetzel")

--------------------------------------------------------------------------------------------

-- Custom rarity
-- #c35d73
SKIN_RARITY_COLORS.ModdedElegant = {195/255, 93/255, 115/255, 1}
RARITY_ORDER.ModdedElegant = -math.huge

env.AddClassPostConstruct("widgets/redux/accountitemframe", function(self)
	local _SetRarity = self._SetRarity
	function self:_SetRarity(rarity, ...)
		if rarity == "ModdedElegant" then
			self:GetAnimState():OverrideSymbol("SWAP_frameBG", "frame_BG_modded", "modded")
		else
			return _SetRarity(self, rarity)
		end
	end
end)

--------------------------------------------------------------------------------------------

-- for name, _ in pairs(WETZEL_FEATHERS) do
-- 	name = name:lower()
-- 	print("***********MadeRecipeSkinnable", name)
-- 	MadeRecipeSkinnable("wetzel_feather_"..name, {
-- 		feather_formal = {
-- 			atlas = "images/inventoryimages/wetzel_inv.xml",
-- 			image = "wetzel_feather_"..name.."_royal.tex",
-- 		},
-- 	})	
-- end