local TIMEOUT = 2

return {
	State{
		name = "wetzel_make_puddle",
		tags = {"busy", "nointerrupt"},

		onenter = function(inst)
			inst.components.locomotor:Stop()
			
			inst.AnimState:PlayAnimation("sing_pre", false)
			inst.AnimState:PushAnimation("sing_lag", false)

			inst:PerformPreviewBufferedAction()
			inst.sg:SetTimeout(TIMEOUT)
		end,

		onupdate = function(inst)
			if inst:HasTag("busy") then
				if inst.entity:FlattenMovementPrediction() then
					inst.sg:GoToState("idle", "noanim")
				end
			elseif inst.bufferedaction == nil then
				inst.sg:GoToState("idle")
			end
		end,

		ontimeout = function(inst)
			inst:ClearBufferedAction()
			inst.sg:GoToState("idle")
		end,
	},

	State{
		name = "wetzel_feather_pre",
		tags = { "doing", "busy", "nomorph" },

		onenter = function(inst, feather)
			inst.components.locomotor:Stop()
			
			inst.AnimState:PlayAnimation("tornado", false)

			inst:PerformPreviewBufferedAction()
			inst.sg:SetTimeout(TIMEOUT)
		end,

		timeline =
		{
			TimeEvent(20 * FRAMES, function(inst)
				inst.AnimState:SetPercent("tornado", 20 * FRAMES / inst.AnimState:GetCurrentAnimationLength())
			end),
		},

		onupdate = function(inst)
			if inst:HasTag("busy") then
				if inst.entity:FlattenMovementPrediction() then
					inst.sg:GoToState("idle", "noanim")
				end
			elseif inst.bufferedaction == nil then
				inst.sg:GoToState("idle")
			end
		end,

		ontimeout = function(inst)
			inst:ClearBufferedAction()
			inst.sg:GoToState("idle")
		end,
	},

	State{
        name = "wetzel_draw",
        tags = { "doing", "busy" },

        onenter = function(inst)
            inst.components.locomotor:Stop()
            inst.SoundEmitter:PlaySound("dontstarve/wilson/make_trap", "make_preview")
            inst.AnimState:PlayAnimation("wrap_pre")
            inst.AnimState:PushAnimation("wrap_lag", true)

            inst:PerformPreviewBufferedAction()
            inst.sg:SetTimeout(TIMEOUT)
        end,

        timeline =
        {
            TimeEvent(7 * FRAMES, function(inst)
                inst.sg:RemoveStateTag("busy")
            end),
        },

        onupdate = function(inst)
            if inst:HasTag("doing") then
                if inst.entity:FlattenMovementPrediction() then
                    inst.sg:GoToState("idle", "noanim")
                end
            elseif inst.bufferedaction == nil then
                inst.AnimState:PlayAnimation("wrap_pst")
                inst.sg:GoToState("idle", true)
            end
        end,

        ontimeout = function(inst)
            inst:ClearBufferedAction()
            inst.AnimState:PlayAnimation("wrap_pst")
            inst.sg:GoToState("idle", true)
        end,

        onexit = function(inst)
            inst.SoundEmitter:KillSound("make_preview")
        end,
    },
}
