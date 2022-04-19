local INK = Vector3(WAYNE_INK_COLOUR[1], WAYNE_INK_COLOUR[2], WAYNE_INK_COLOUR[3])

local function MakeInkColour(inst, colouradder)
	-- Fox: Used if we do colour tween
	if colouradder then
		inst:AddComponent("colouradder")
		inst.components.colouradder:PushColour("ink_colour", unpack(WAYNE_INK_COLOUR))
	else
		inst.AnimState:SetAddColour(unpack(WAYNE_INK_COLOUR))
	end
	inst.AnimState:SetMultColour(0, 0, 0, 1)
end

return {
	{
		name = "wayne_portal_splash",
		bank = "quagmire_portalspawn_fx",
		build = "quagmire_portalspawn_fx",
		anim = "exit",
		
		sound = "turnoftides/common/together/water/submerge/medium",
		sound2 = "turnoftides/common/together/water/splash/medium",

		fn = function(inst)
			MakeInkColour(inst)

			inst.AnimState:SetFinalOffset(1)
			inst.AnimState:SetHaunted(true)
		end,
	},

	{
		name = "wayne_heal_splash",
		bank = "quagmire_portalspawn_fx",
		build = "quagmire_portalspawn_fx",
		anim = "exit",
		
		sound = "turnoftides/common/together/water/submerge/medium",
		sound2 = "turnoftides/common/together/water/splash/medium",

		fn = function(inst)
			MakeInkColour(inst, true)

			inst.AnimState:SetFinalOffset(1)
			inst.AnimState:SetHaunted(true)
			SpawnPrefab("wayne_feather_fx"):SetTarget(inst, {1, 0, 0})
		end,
	},

	{
		name = "wayne_freeze_splash",
		bank = "quagmire_portalspawn_fx",
		build = "quagmire_portalspawn_fx",
		anim = "exit",

		sound = "turnoftides/common/together/water/submerge/medium",
		sound2 = "turnoftides/common/together/water/splash/medium",

		fn = function(inst)
			MakeInkColour(inst, true)

			inst.AnimState:SetFinalOffset(1)
			inst.AnimState:SetHaunted(true)
			SpawnPrefab("wayne_feather_fx"):SetTarget(inst, {51/255, 153/255, 1})
		end,
	},

	{
		name = "wayne_yellow_fx",
		bank = "quagmire_portalspawn_fx",
		build = "quagmire_portalspawn_fx",
		anim = "exit",
		
		sound = "turnoftides/common/together/water/submerge/medium",
		sound2 = "turnoftides/common/together/water/splash/medium",

		fn = function(inst)
			MakeInkColour(inst, true)

			inst.AnimState:SetFinalOffset(1)
			inst.AnimState:SetHaunted(true)
			SpawnPrefab("wayne_feather_fx"):SetTarget(inst, {1, 1, 0})
		end,
	},
	
	{
        name = "wayne_shadoweat_fx",
        bank = "quagmire_portaldrip_fx",
        build = "quagmire_portaldrip_fx",
        anim = "idle",

		fn = function(inst)
			MakeInkColour(inst)

			inst.AnimState:SetFinalOffset(2)
			-- inst.AnimState:SetSortOrder(1)
			inst.AnimState:SetScale(0.85, 0.7)
		end,
	},

	{
		name = "wayne_freeze_fx",
		bank = "crabking_ring_fx",
		build = "crabking_ring_fx",
		anim = "tweens",
		bloom = true,
		sound = "dontstarve/creatures/deerclops/swipe",
		sound2 = "turnoftides/common/together/water/splash/medium",
		tint = Vector3(),
        -- tintalpha = .75,
		fn = function(inst)
			inst.AnimState:SetOrientation(ANIM_ORIENTATION.OnGround)
			inst.AnimState:SetLayer(LAYER_BACKGROUND)
			inst.AnimState:SetSortOrder(3)
			inst.AnimState:SetFinalOffset(-1)
			
			inst:AddComponent("colourtweener")
			inst:DoTaskInTime(0.15, function() inst.components.colourtweener:StartTween({1, 1, 1, 1}, 0.25) end)
			-- SpawnPrefab("wayne_feather_fx"):SetTarget(inst, WAYNE_INK_COLOUR)
			-- inst.AnimState:SetAddColour(unpack(WAYNE_INK_COLOUR))
		end,
	}
}
