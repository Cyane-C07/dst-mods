local prefabs = {}

table.insert(prefabs, CreatePrefabSkin("wetzel_none",
	{
		base_prefab = "wetzel",
		build_name_override = "wetzel",
		type = "base",
		rarity = "Character",
		skin_tags = {"WETZEL", "CHARACTER", "BASE"},
		skins = {
			normal_skin = "wetzel",
			ghost_skin = "ghost_wetzel_build",
		},
		assets = {
			Asset( "ANIM", "anim/wetzel.zip" ),
			Asset( "ANIM", "anim/ghost_wetzel_build.zip" ),
		},
	}
))

return unpack(prefabs)