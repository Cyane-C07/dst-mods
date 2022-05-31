env._G = GLOBAL
env.require = _G.require

local ToLoad = require("to_load")

PrefabFiles = ToLoad.Prefabs
Assets = ToLoad.Assets

AddMinimapAtlas("images/map_icons/wetzel.xml")

modimport("scripts/wetzel/main.lua")
