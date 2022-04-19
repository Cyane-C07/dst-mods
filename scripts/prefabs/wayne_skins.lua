local prefabs = {}

table.insert(prefabs, CreatePrefabSkin("wayne_none",
{
	base_prefab = "wayne",
	build_name_override = "wayne",
	type = "base",
	rarity = "Character",
	skip_item_gen = true,
	skip_giftable_gen = true,
	skin_tags = { "BASE", "WAYNE", },
	skins = {
		normal_skin = "wayne",
		ghost_skin = "ghost_wayne_build",
	},
	assets = {
		Asset("DYNAMIC_ANIM", "anim/dynamic/ghost_wayne_build.zip"),
		Asset("PKGREF", "anim/dynamic/ghost_wayne_build.dyn"),
		Asset("DYNAMIC_ANIM", "anim/dynamic/wayne.zip"),
		Asset("PKGREF", "anim/dynamic/wayne.dyn"),
	},

}))

table.insert(prefabs, CreatePrefabSkin("wayne_shadow",
{
	base_prefab = "wayne",
	build_name_override = "wayne_shadow",
	type = "base",
	rarity = "ModdedElegant",
	skip_item_gen = true,
	skip_giftable_gen = true,
	skin_tags = { "BASE", "WAYNE", "SHADOW"},
	skins = {
		normal_skin = "wayne_shadow",
		ghost_skin = "ghost_wayne_shadow",
	},

	assets = {
		Asset("DYNAMIC_ANIM", "anim/dynamic/wayne_shadow.zip"),
		Asset("PKGREF", "anim/dynamic/wayne_shadow.dyn"),
		Asset("DYNAMIC_ANIM", "anim/dynamic/ghost_wayne_shadow.zip"),
		Asset("PKGREF", "anim/dynamic/ghost_wayne_shadow.dyn"),
	},

}))

return unpack(prefabs)