local MakePlayerCharacter = require("prefabs/player_common")

local assets =
{
    Asset("SCRIPT", "scripts/prefabs/player_common.lua"), --needed
	Asset("SOUND", "sound/wetzel.fsb"),
}

local prefabs = {}

local start_inv = {}
for k, v in pairs(TUNING.GAMEMODE_STARTING_ITEMS) do
	start_inv[string.lower(k)] = v.WETZEL
end

prefabs = FlattenTree({ prefabs, start_inv }, true)

local function common_postinit(inst)	
	inst:AddTag("wetzel")

	inst.components.talker.font = TALKINGFONT_WETZEL

	inst.MiniMapEntity:SetIcon( "wetzel.tex" )
end

local function onbecamehuman(inst)
	-- Set speed when not a ghost (optional)
	inst.components.locomotor:SetExternalSpeedMultiplier(inst, "wetzel_speed_mod", 1)
end

local function onbecameghost(inst)
	-- Remove speed modifier when becoming a ghost
   inst.components.locomotor:RemoveExternalSpeedMultiplier(inst, "wetzel_speed_mod")
end

local function onload(inst)
    inst:ListenForEvent("ms_respawnedfromghost", onbecamehuman)
    inst:ListenForEvent("ms_becameghost", onbecameghost)

    if inst:HasTag("playerghost") then
        onbecameghost(inst)
    else
        onbecamehuman(inst)
    end
end

local function master_postinit(inst)
	inst.starting_inventory = start_inv[TheNet:GetServerGameMode()] or start_inv.default

	inst.soundsname = "wetzel"
	inst.talker_path_override = "wetzel/"

	-- Stats
	inst.components.health:SetMaxHealth(TUNING.WETZEL_HEALTH)
	inst.components.hunger:SetMax(TUNING.WETZEL_HUNGER)
	inst.components.sanity:SetMax(TUNING.WETZEL_SANITY)
	-- self:SetSanityMode(GLOBAL.SANITY_MODE_INSANITY)

	-- Damage multiplier (optional)
    inst.components.combat.damagemultiplier = 1

	-- Hunger multiplier (optional)
	inst.components.hunger.hungerrate = 1 * TUNING.WILSON_HUNGER_RATE

	inst.OnLoad = onload
  	inst.OnNewSpawn = onload

end

return MakePlayerCharacter("wetzel", prefabs, assets, common_postinit, master_postinit)
