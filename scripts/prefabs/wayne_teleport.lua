local SCALE = 0.75
local INK = WETZEL_INK_COLOUR

local assets =
{
	Asset("DYNAMIC_ANIM", "anim/dynamic/box_shared_spiral.zip"),
	Asset("PKGREF", "anim/dynamic/box_shared_spiral.dyn"),
}

local function FixPosition(inst)
	local pos = FindWalkableOffset(inst:GetPosition(), inst:GetRotation() * RADIANS, 2.5, 10, false, false, nil, false, true)
	if pos then
		inst:ForceFacePoint(pos + inst:GetPosition())
	end
end

local function OnActivate(inst, doer)
	if not doer:HasTag("player") then
		return
	end

	if doer.components.talker then
		doer.components.talker:ShutUp()
	end
	if doer.components.sanity and not doer:HasTag("shadowartist") then
		doer.components.sanity:DoDelta(-TUNING.SANITY_MED)
	end
end

local function onaccept(inst, giver, item)
	SpawnAt("wetzel_portal_splash", inst).Transform:SetScale(0.5, 0.5, 0.5)
	inst.components.inventory:DropItem(item)
	inst.components.teleporter:Activate(item)
	
end

local function StartTravelSound(inst, doer)
	SpawnAt("wetzel_portal_splash", inst)
end

local function OnDoneTeleporting(inst, obj)
	local isplayer = obj and obj:HasTag("player")

	local fx = SpawnAt("wetzel_portal_splash", inst)
	
	if not isplayer then
		fx.Transform:SetScale(0.5, 0.5, 0.5)
	end

	if isplayer then
		FixPosition(obj)
	end
end

local function RegisterPortal(inst)
	local w = TheWorld
	
	if w and w.components.wetzel_portal_manager and inst.owner then
		w.components.wetzel_portal_manager:LoadPortal(inst)
	end
end

local function OnSave(inst, data)
	data.owner = inst.owner
end

local function OnLoad(inst, data)
	if not data then
		return
	end
	
	if not data.owner then
		inst:DoTaskInTime(0, inst.Remove)
	else
		inst.owner = data.owner
		inst:DoTaskInTime(0, RegisterPortal)
	end
end

local function OnRemove(inst)
	if not TheWorld.components.wetzel_portal_manager then
		return
	end
	TheWorld.components.wetzel_portal_manager:UnregisterPortal(inst)
end

local function Destroy(inst)
	inst.SoundEmitter:KillSound("portal_LP")

	if inst.components.teleporter.targetTeleporter then
		inst.components.teleporter.targetTeleporter.components.teleporter.targetTeleporter = nil -- Fox: Wow this is long
	end
	inst:RemoveComponent("teleporter")
	inst.AnimState:PlayAnimation("skin_out", false)
	inst:ListenForEvent("animover", inst.Remove)
end

local function rand() return math.random() < 0.5 end

local function fn()
	local inst = CreateEntity()

	inst.entity:AddTransform()
	inst.entity:AddAnimState()
	inst.entity:AddSoundEmitter()
	inst.entity:AddMiniMapEntity()
	inst.entity:AddNetwork()

	inst.entity:AddPhysics() -- no collision, this is just for buffered actions
	inst.Physics:ClearCollisionMask()
	inst.Physics:SetSphere(1)

	inst.MiniMapEntity:SetIcon("wormhole.png")

	inst.AnimState:SetBank("box_shared_spiral")
	inst.AnimState:SetBuild("box_shared_spiral")
	inst.AnimState:PlayAnimation("activate", false)
	inst.AnimState:PushAnimation("idle_loop", true)
	inst.AnimState:SetMultColour(INK[1], INK[2], INK[3], 1)
	inst.AnimState:SetScale(rand() and SCALE or -SCALE, rand() and SCALE or -SCALE)
	inst.AnimState:SetLayer(LAYER_BACKGROUND)
	inst.AnimState:SetOrientation(ANIM_ORIENTATION.OnGround)
	inst.AnimState:SetSortOrder(3)

	--trader, alltrader (from trader component) added to pristine state for optimization
	inst:AddTag("trader")
	inst:AddTag("alltrader")

	inst:AddTag("antlion_sinkhole_blocker")

	inst.entity:SetPristine()

	if not TheWorld.ismastersim then
		return inst
	end
	
	inst.owner = nil
	
	inst:AddComponent("inspectable")

	inst:AddComponent("teleporter")
	inst.components.teleporter.onActivate = OnActivate
	inst.components.teleporter.offset = 0
	inst.components.teleporter.travelcameratime = 0.75
	inst.components.teleporter.travelarrivetime = 1.5
	
	inst:ListenForEvent("starttravelsound", StartTravelSound) -- triggered by player stategraph
	inst:ListenForEvent("doneteleporting", OnDoneTeleporting)

	inst:AddComponent("inventory")

	inst:AddComponent("trader")
	inst.components.trader.acceptnontradable = true
	inst.components.trader.onaccept = onaccept
	inst.components.trader.deleteitemonaccept = false

	-- inst.SoundEmitter:PlaySound("dontstarve/quagmire/common/portal/LP", "portal_LP")
	inst.SoundEmitter:PlaySound("wetzel/common/wetzel_portal/LP", "portal_LP")

	inst.Destroy = Destroy
	
	inst.OnSave = OnSave
	inst.OnLoad = OnLoad
	
	inst._onremove = OnRemove
	inst:ListenForEvent("onremove", inst._onremove)
	
	return inst
end

local function OnBuilt(inst, builder)
	if not builder:HasTag("wetzel") or not TheWorld.components.wetzel_portal_manager then
		return false
	end
	
	local portal = SpawnAt("wetzel_teleport", inst)
	TheWorld.components.wetzel_portal_manager:CreatePortal(portal, builder.userid)
	
	inst:Remove()

	return true
end

local function placerfn(inst)
	inst.AnimState:SetMultColour(INK[1], INK[2], INK[3], 1)
	inst.AnimState:SetScale(SCALE, SCALE)
end

return Prefab("wetzel_teleport", fn, assets),
	   Prefab("wetzel_teleport_builder", MakeBuilder(OnBuilt)),
	   MakePlacer("wetzel_teleport_placer", "box_shared_spiral", "box_shared_spiral", "idle_loop", true, nil, nil, nil, nil, nil, placerfn)
