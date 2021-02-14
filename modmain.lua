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
}

AddMinimapAtlas("images/map_icons/wetzel.xml")

local require = GLOBAL.require
local STRINGS = GLOBAL.STRINGS

--

-- The character select screen lines
STRINGS.CHARACTER_TITLES.wetzel = "The Little Nightmare"
STRINGS.CHARACTER_NAMES.wetzel = "Wetzel"
STRINGS.CHARACTER_DESCRIPTIONS.wetzel = "*Insane\n*Can walk around at night, but suffers in the day\n*Grows unruly nighthair"
STRINGS.CHARACTER_QUOTES.wetzel = "\"i much prefer the dark\""
STRINGS.CHARACTER_SURVIVABILITY.wetzel = "Slim"

-- Custom speech strings
STRINGS.CHARACTERS.WETZEL = require "speech_wetzel"

-- The character's name as appears in-game
STRINGS.NAMES.WETZEL = "Wetzel"
STRINGS.SKIN_NAMES.wetzel_none = "Wetzel"

-- The skins shown in the cycle view window on the character select screen.
-- A good place to see what you can put in here is in skinutils.lua, in the function GetSkinModes
local skin_modes = {
    {
        type = "ghost_skin",
        anim_bank = "ghost",
        idle_anim = "idle",
        scale = 0.75,
        offset = { 0, -25 }
    },
}

-- Add mod character to mod character list. Also specify a gender. Possible genders are MALE, FEMALE, ROBOT, NEUTRAL, and PLURAL.
AddModCharacter("wetzel", "NEUTRAL", skin_modes)
