env._G = GLOBAL
env.require = _G.require

local ToLoad = require("to_load")

PrefabFiles = ToLoad.Prefabs
Assets = ToLoad.Assets

AddMinimapAtlas("minimap/minimap_atlas_wayne.xml")

modimport("scripts/wayne/main.lua")
modimport("scripts/wayne/skins.lua")
