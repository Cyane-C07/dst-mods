local WETZEL_MENU = GetModConfigData("wetzel_main_menu")
print("WETZEL_MENU", WETZEL_MENU)

_G = GLOBAL

PrefabFiles = {
	"wetzel",
	"wetzel_none",
}

Assets = {
    Asset( "IMAGE", "images/saveslot_portraits/wetzel.tex" ),
    Asset( "ATLAS", "images/saveslot_portraits/wetzel.xml" ),

    Asset( "IMAGE", "images/selectscreen_portraits/wetzel.tex" ),
    Asset( "ATLAS", "images/selectscreen_portraits/wetzel.xml" ),
 
    Asset( "IMAGE", "images/selectscreen_portraits/wetzel_silho.tex" ),
    Asset( "ATLAS", "images/selectscreen_portraits/wetzel_silho.xml" ),

    Asset( "IMAGE", "bigportraits/wetzel.tex" ),
    Asset( "ATLAS", "bigportraits/wetzel.xml" ),

	Asset( "IMAGE", "images/map_icons/wetzel.tex" ),
	Asset( "ATLAS", "images/map_icons/wetzel.xml" ),

	Asset( "IMAGE", "images/avatars/avatar_wetzel.tex" ),
    Asset( "ATLAS", "images/avatars/avatar_wetzel.xml" ),

	Asset( "IMAGE", "images/avatars/avatar_ghost_wetzel.tex" ),
    Asset( "ATLAS", "images/avatars/avatar_ghost_wetzel.xml" ),

	Asset( "IMAGE", "images/avatars/self_inspect_wetzel.tex" ),
    Asset( "ATLAS", "images/avatars/self_inspect_wetzel.xml" ),

	Asset( "IMAGE", "images/names_wetzel.tex" ),
    Asset( "ATLAS", "images/names_wetzel.xml" ),

	Asset( "IMAGE", "images/names_gold_wetzel.tex" ),
    Asset( "ATLAS", "images/names_gold_wetzel.xml" ),

    Asset("SOUNDPACKAGE","sound/wetzel.fev"),
    Asset("SOUND","sound/wetzel.fsb"),
}

if WETZEL_MENU then
	table.insert(Assets, Asset("DYNAMIC_ANIM", "anim/dynamic/dst_menu_wetzel.zip"))
	table.insert(Assets, Asset("PKGREF", "anim/dynamic/dst_menu_wetzel.dyn"))
end

local env = env
_G.setfenv(1, _G)

require("wetzel/strings")
require("wetzel/tuning")
env.modimport("scripts/wetzel/skins.lua")

local skin_modes = {
    {
        type = "ghost_skin",
        anim_bank = "ghost",
        idle_anim = "idle",
        scale = 0.75,
        offset = { 0, -25 }
    },
}

env.AddModCharacter("wetzel", "NEUTRAL", skin_modes)

require("simutil")
do
	local UpvalueHacker = require("tools/upvaluehacker")
	local _GetInventoryItemAtlas = GetInventoryItemAtlas
	local inventoryItemAtlasLookup = UpvalueHacker.GetUpvalue(GetInventoryItemAtlas, "inventoryItemAtlasLookup")

	GetInventoryItemAtlas = function(imagename, ...)
		if inventoryItemAtlasLookup[imagename] then
			return inventoryItemAtlasLookup[imagename]
		end
		return _GetInventoryItemAtlas(imagename, ...)
	end
end

if WETZEL_MENU then
	require("screens/redux/multiplayermainscreen")

	local _MakeBanner = MakeBanner
	function MakeBanner(self, ...)
		local Widget = require "widgets/widget"
		local UIAnim = require "widgets/uianim"

		local baner_root = Widget("banner_root")
		local anim = baner_root:AddChild(UIAnim())
		
        anim:GetAnimState():SetBuild("dst_menu_wetzel")
        anim:GetAnimState():SetBank ("dst_menu_wetzel")
        anim:GetAnimState():PlayAnimation("loop", true)
        anim:SetScale(.667)

		return baner_root
	end
end