local assets =
{
	Asset( "ANIM", "anim/wetzel.zip" ),
	Asset( "ANIM", "anim/ghost_wetzel_build.zip" ),
}

local skins =
{
	normal_skin = "wetzel",
	ghost_skin = "ghost_wetzel_build",
}

return CreatePrefabSkin("wetzel_none",
{
	base_prefab = "wetzel",
	type = "base",
	assets = assets,
	skins = skins,
	skin_tags = {"WETZEL", "CHARACTER", "BASE"},
	build_name_override = "wetzel",
	rarity = "Character",
})