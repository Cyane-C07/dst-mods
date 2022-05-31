local env = env


_G.setfenv(1, _G)

if not env.MODROOT:find("workshop-") then
	CHEATS_ENABLED = true
	require( 'debugkeys' )
end

require("wetzel/tuning")
require("wetzel/strings")


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

TALKINGFONT_WETZEL = "talkingfont_wetzel"

env.AddSimPostInit(function()
	TheSim:UnloadFont(TALKINGFONT_WETZEL)
	TheSim:UnloadPrefabs({"wetzel_fonts"})

	local font = resolvefilepath("fonts/talkingfont_wetzel.zip")
	local assets = {
		Asset("FONT", font),
	}

	local FontsPrefab = Prefab("wetzel_fonts", function() return CreateEntity() end, assets)
	RegisterPrefabs(FontsPrefab)
	TheSim:LoadPrefabs({"wetzel_fonts"})
	TheSim:LoadFont(font, TALKINGFONT_WETZEL)
end)
