local INK = WETZEL_INK_COLOUR

local function OnRemoveHit(inst)
	if inst.target ~= nil and inst.target:IsValid() then
		if inst.target.components.colouradder == nil then
			if inst.target.components.freezable ~= nil then
				inst.target.components.freezable:UpdateTint()
			else
				inst.target.AnimState:SetAddColour(0, 0, 0, 0)
			end
		end
		if inst.target.components.bloomer == nil then
			inst.target.AnimState:ClearBloomEffectHandle()
		end
	end
end

local function UpdateHit(inst, target)
	if target:IsValid() then
		local oldflash = inst.flash
		inst.flash = math.max(0, inst.flash - .075)
		if inst.flash > 0 then
			local c = math.min(1, inst.flash)
			local colour = inst.colour
			if target.components.colouradder ~= nil then
				target.components.colouradder:PushColour(inst, colour[1] * c, colour[2] * c, colour[3] * c, 0)
			else
				target.AnimState:SetAddColour(colour[1] * c, colour[2] * c, colour[3] * c, 0)
			end
			if inst.flash < .3 and oldflash >= .3 then
				if target.components.bloomer ~= nil then
					target.components.bloomer:PopBloom(inst)
				else
					target.AnimState:ClearBloomEffectHandle()
				end
			end
			return
		end
	end
	inst:Remove()
end

local function SetTarget(inst, target, colour)
	if inst.inittask ~= nil then
		inst.inittask:Cancel()
		inst.inittask = nil

		inst.colour = colour

		inst.target = target
		inst.OnRemoveEntity = OnRemoveHit

		if target.components.bloomer then
			target.components.bloomer:PushBloom(inst, "shaders/anim.ksh", -1)
		else
			target.AnimState:SetBloomEffectHandle("shaders/anim.ksh")
		end
		inst.flash = .8 + math.random() * .4
		inst:DoPeriodicTask(0, UpdateHit, nil, target)
		UpdateHit(inst, target)
	end
end

local function fn()
	local inst = CreateEntity()

	inst:AddTag("CLASSIFIED")
	--[[Non-networked entity]]
	inst.persists = false

	inst.SetTarget = SetTarget
	inst.inittask = inst:DoTaskInTime(0, inst.Remove)

	return inst
end

local function fx()
	local inst = CreateEntity()

	inst.entity:AddTransform()
	inst.entity:AddAnimState()
	inst.entity:AddSoundEmitter()
	inst.entity:AddNetwork()

	inst.AnimState:SetBank("attune_fx")
	inst.AnimState:SetBuild("attune_fx")
	inst.AnimState:PlayAnimation("attune_in")

	inst.AnimState:SetMultColour(INK[1], INK[2], INK[3], 0.75)
	inst.AnimState:SetLightOverride(1)
	local s = 0.75
	inst.AnimState:SetScale(s, s)
	
	inst.entity:SetPristine()

	if not TheWorld.ismastersim then
		return inst
	end

	inst.SetTarget = function(inst, target, colour)
		inst.entity:AddFollower():FollowSymbol(target.GUID, "swap_object", 0, 0, 0)
		SpawnPrefab("wetzel_feather_fx"):SetTarget(inst, colour)

		inst.SoundEmitter:PlaySound("dontstarve/sanity/bishop/appear")
	end
	
	inst.persists = false
	inst:ListenForEvent("animover", inst.Remove)

	return inst
end

return Prefab("wetzel_feather_fx", fn),
	   Prefab("feather_buff_fx", fx)