local WAYNE_MENU = GetModConfigData("wayne_main_menu")
print("WAYNE_MENU", WAYNE_MENU)

_G = GLOBAL

PrefabFiles = {
	"wayne",
	"wayne_skins",
	"wayne_feather",
}

Assets = {
	Asset("ANIM", "anim/frame_bg_modded.zip"),

	Asset("IMAGE", "bigportraits/wayne.tex"),
	Asset("ATLAS", "bigportraits/wayne.xml"),
	Asset("IMAGE", "bigportraits/wayne_none.tex"),
	Asset("ATLAS", "bigportraits/wayne_none.xml"),
	Asset("ATLAS", "bigportraits/wayne.xml"),
	Asset("IMAGE", "bigportraits/wayne_shadow.tex"),
	Asset("ATLAS", "bigportraits/wayne_shadow.xml"),

	Asset("IMAGE", "images/avatars/avatar_ghost_wayne.tex"),
	Asset("ATLAS", "images/avatars/avatar_ghost_wayne.xml"),
	Asset("IMAGE", "images/avatars/avatar_wayne.tex"),
	Asset("ATLAS", "images/avatars/avatar_wayne.xml"),
	Asset("IMAGE", "images/avatars/self_inspect_wayne.tex"),
	Asset("ATLAS", "images/avatars/self_inspect_wayne.xml"),
	Asset("IMAGE", "images/saveslot_portraits/wayne.tex"),
	Asset("ATLAS", "images/saveslot_portraits/wayne.xml"),
	
	Asset("IMAGE", "images/names_gold_wayne.tex"),
	Asset("ATLAS", "images/names_gold_wayne.xml"),
	Asset("IMAGE", "images/names_wayne.tex"),
	Asset("ATLAS", "images/names_wayne.xml"),
	Asset("IMAGE", "images/wayne_inv.tex"),
	Asset("ATLAS", "images/wayne_inv.xml"),
}

if WAYNE_MENU then
	table.insert(Assets, Asset("DYNAMIC_ANIM", "anim/dynamic/dst_menu_wayne.zip"))
	table.insert(Assets, Asset("PKGREF", "anim/dynamic/dst_menu_wayne.dyn"))
end

local env = env
_G.setfenv(1, _G)

require("wayne/strings")
require("wayne/tuning")
env.modimport("scripts/wayne/skins.lua")

env.AddModCharacter("wayne", "MALE")

require("simutil")
do
	local UpvalueHacker = require("tools/upvaluehacker")
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

if WAYNE_MENU then
	require("screens/redux/multiplayermainscreen")

	local _MakeBanner = MakeBanner
	function MakeBanner(self, ...)
		local Widget = require "widgets/widget"
		local UIAnim = require "widgets/uianim"

		local baner_root = Widget("banner_root")
		local anim = baner_root:AddChild(UIAnim())
		
        anim:GetAnimState():SetBuild("dst_menu_wayne")
        anim:GetAnimState():SetBank ("dst_menu_wayne")
        anim:GetAnimState():PlayAnimation("loop", true)
        anim:SetScale(.667)

		return baner_root
	end
end