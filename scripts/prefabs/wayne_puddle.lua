local assets =
{
	Asset("ANIM", "anim/wetzel_puddle.zip"),
}

local function Perish(inst)
	inst.SoundEmitter:PlaySound("dontstarve/sanity/shadowrock_conseal")
	inst:RemoveTag("shadow_ink_source")
	ErodeAway(inst)
end

local function PushAnim(inst, mode)
	if not mode then
		inst.AnimState:SetMultColour(0, 0, 0, 0)
	end
	local c = mode and 1 or 0.5
	inst.components.colourtweener:StartTween({c, c, c, c}, .15)
end

local function SetOwner(inst, owner)
	inst.Network:SetClassifiedTarget(owner)
	PushAnim(inst)
	inst:DoTaskInTime(14 * FRAMES, PushAnim, true)
end

local function fn()
	local inst = CreateEntity()

	inst.entity:AddTransform()
	inst.entity:AddAnimState()
	inst.entity:AddSoundEmitter()
	inst.entity:AddNetwork()

	inst.AnimState:SetBuild("wetzel_puddle")
	inst.AnimState:SetBank("wetzel_puddle")
	inst.AnimState:PlayAnimation("idle", true)
	inst.AnimState:SetLayer(LAYER_BACKGROUND)
	inst.AnimState:SetSortOrder(3)
	inst.AnimState:SetScale(1.25, 1.25)
	-- inst.AnimState:SetMultColour(unpack(COLOR))

	inst:AddTag("CLASSIFIED")
	inst:AddTag("noblock")
	inst:AddTag("shadow_ink_source")

	inst.entity:SetPristine()

	if not TheWorld.ismastersim then
		return inst
	end
	
	-- inst:AddComponent("inspectable")
	inst:AddComponent("colourtweener")
	
	inst.SetOwner = SetOwner
	inst.PushAnim = PushAnim
	inst.Perish = Perish
	
	inst.persists = false

	inst:ListenForEvent("fill_bottle", Perish)

	inst:DoTaskInTime(TUNING.WETZEL.PUDDLE_DURATION, Perish)

	-- Hide entity and skip 2 frames for network to be initialised
	inst:Hide()
	inst:DoTaskInTime(FRAMES * 2, inst.Show)

	return inst
end

local function OnBuilt(inst, builder)
	local angle = builder.Transform:GetRotation() * DEGREES
	local range = 0.75
	SpawnAt("wetzel_puddle", builder:GetPosition() + Vector3(math.cos(angle) * range, 0, -math.sin(angle) * range)):SetOwner(builder)

	if builder.components.wetzel_power then
		builder.components.wetzel_power:MadePuddle(inst)
	end

	inst:Remove()
end

return Prefab("wetzel_puddle", fn, assets, prefabs),
	   Prefab("wetzel_puddle_builder", MakeBuilder(OnBuilt))