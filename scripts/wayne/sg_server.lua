return {
	State{
		name = "wayne_make_puddle",
		tags = { "doing", "busy", "nocraftinginterrupt", "nomorph" },

		onenter = function(inst)
			inst.components.locomotor:Stop()

			-- inst.Transform:SetNoFaced()
			inst.AnimState:PlayAnimation("sing_pre")
			inst.AnimState:PushAnimation("sing_fail", false)
			
			inst.sg.statemem.action = inst.bufferedaction
		end,

		timeline =
		{
			TimeEvent(9 * FRAMES, function(inst)
				inst.SoundEmitter:PlaySound("wayne/characters/wayne/cough")
			end),

			-- Fox: Start at 13 instead of 14 bc fx needs to be initialised
			TimeEvent(13 * FRAMES, function(inst)
				inst:SpawnChild("wayne_cough_fx")

				inst:PerformBufferedAction()
			end),

			TimeEvent(26 * FRAMES, function(inst)
				inst:SpawnChild("wayne_cough_fx")
			end),
		},

		events =
		{
			EventHandler("animqueueover", function(inst)
				if inst.AnimState:AnimDone() then
					inst.sg:GoToState("idle")
				end
			end),
		},

		onexit = function(inst)
			if inst.bufferedaction == inst.sg.statemem.action and
			(inst.components.playercontroller == nil or inst.components.playercontroller.lastheldaction ~= inst.bufferedaction) then
				inst:ClearBufferedAction()
			end
			-- inst.Transform:SetFourFaced()
		end,
	},

	State{
		name = "wayne_feather_pre",
		tags = { "doing", "busy", "nomorph" },

		onenter = function(inst, feather)
			inst.components.locomotor:Stop()

			inst.AnimState:PlayAnimation("tornado")

			local act = inst:GetBufferedAction()
			local feather = act and act.invobject
			if feather then
				inst.sg.statemem.spawnfx = feather.components.wayne_feather:Useable(inst)
				inst.sg.statemem.colour = feather.components.wayne_feather:GetColour()
			end
		end,

		timeline =
		{
			TimeEvent(20 * FRAMES, function(inst)
				if inst.sg.statemem.spawnfx then
					SpawnPrefab("feather_buff_fx"):SetTarget(inst, inst.sg.statemem.colour)
					inst.SoundEmitter:PlaySound("dontstarve/sanity/transform/two", "feather_cast")
				end
			end),

			TimeEvent(40 * FRAMES, function(inst)
				inst.SoundEmitter:KillSound("feather_cast")
				inst:PerformBufferedAction()

				if inst.sg.statemem.teleport then
					inst.sg.mem.shadow_fx = SpawnAt("wayne_teleport_fx", inst)
				end

				if inst.sg.statemem.spawnfx then
					local x, _, z = inst.AnimState:GetSymbolPosition("swap_object", 0, 0, 0)
					local fx = SpawnPrefab("wayne_portal_splash")
					fx.Transform:SetScale(0.5, 0.5, 0.5)
					fx.Transform:SetPosition(x, 0, z)
				end
			end),
			
			TimeEvent(44 * FRAMES, function(inst)
				if not inst.sg.statemem.teleport then
					inst.sg:RemoveStateTag("busy")
				end
			end),
		},

		events =
		{
			EventHandler("animqueueover", function(inst)
				if inst.AnimState:AnimDone() then
					inst.sg.statemem.noremove_fx = inst.sg.statemem.teleport
					inst.sg:GoToState(inst.sg.statemem.teleport and "wayne_teleport" or "idle")
				end
			end),
		},

		onexit = function(inst)
			if not inst.sg.statemem.noremove_fx and inst.sg.mem.shadow_fx then
				inst.sg.mem.shadow_fx:Kill()
				inst.sg.mem.shadow_fx = nil
			end

			if inst.sg.statemem.onexit then
				inst.sg.statemem.onexit(inst)
			end
		end
	},

	State{
		name = "wayne_teleport",
		tags = { "doing", "busy", "nomorph" },

		onenter = function(inst)
			inst.components.locomotor:Stop()

			local heavy = inst.components.inventory:IsHeavyLifting()
			inst.AnimState:PlayAnimation(heavy and "heavy_jump_pre" or "jump_pre")
			inst.AnimState:PushAnimation(heavy and "heavy_jump" or "jump", false)
		end,

		timeline =
		{
			TimeEvent(4 * FRAMES, function(inst)
				inst.sg:AddStateTag("nointerrupt")
			end),

			TimeEvent(23 * FRAMES, function(inst)
				SpawnAt("wayne_portal_splash", inst)
			end),

			TimeEvent(26 * FRAMES, function(inst)
				if inst.components.debuffable then
					inst.components.debuffable:AddDebuff("buff_wayne_teleport", "buff_wayne_teleport")
				end
			end),
		},

		events =
		{
			EventHandler("animqueueover", function(inst)
				if inst.AnimState:AnimDone() then
					inst.sg:GoToState("idle")
				end
			end),
		},

		onexit = function(inst)
			if inst.sg.mem.shadow_fx then
				inst.sg.mem.shadow_fx:Kill()
				inst.sg.mem.shadow_fx = nil
			end
		end,
	},

	State{
        name = "wayne_draw",
        tags = { "doing", "busy", "nodangle" },

        onenter = function(inst)
            inst.components.locomotor:Stop()
            inst.SoundEmitter:PlaySound("wayne/common/wayne_paper/draw", "draw_LP")
			inst.AnimState:OverrideSymbol("wrap_paper", "wayne_draw_paper", "wrap_paper")
			inst.AnimState:HideSymbol("wrap_string")
            inst.AnimState:PlayAnimation("wrap_pre")
            inst.AnimState:PushAnimation("wrap_loop", true)
            inst.sg:SetTimeout(.7)
        end,

        timeline =
        {
            TimeEvent(7 * FRAMES, function(inst)
                inst.sg:RemoveStateTag("busy")
            end),
            TimeEvent(9 * FRAMES, function(inst)
                inst:PerformBufferedAction()
            end),
        },

        ontimeout = function(inst)
            inst.SoundEmitter:KillSound("draw_LP")
            inst.AnimState:PlayAnimation("wrap_pst")
        end,

        events =
        {
            EventHandler("animqueueover", function(inst)
                if inst.AnimState:AnimDone() then
                    inst.sg:GoToState("idle")
                end
            end),
        },

        onexit = function(inst)
			inst.SoundEmitter:KillSound("make")
			
			inst.AnimState:ShowSymbol("wrap_string")
			inst.AnimState:AddOverrideBuild("player_wrap_bundle")
        end,
    },
}