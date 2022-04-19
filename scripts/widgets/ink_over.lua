local Widget = require "widgets/widget"
local Image = require "widgets/image"

local TINT_ON = {r = 1, g = 1, b = 1, a = 1}
local TINT_OFF = {r = 1, g = 1, b = 1, a = 0}

local InkOver = Class(Widget, function(self, persists)
    Widget._ctor(self, "InkOver")
	
    self:SetClickable(false)

    self.bg = self:AddChild(Image("images/wayne_ink_over.xml", "wayne_ink_over.tex"))
    self.bg:SetVRegPoint(ANCHOR_TOP)
    self.bg:SetHRegPoint(ANCHOR_MIDDLE)
    self.bg:SetVAnchor(ANCHOR_TOP)
    self.bg:SetHAnchor(ANCHOR_MIDDLE)
    self.bg:SetScaleMode(SCALEMODE_FILLSCREEN)
	self.bg:SetPosition(0, 200)
	self.bg:MoveTo(Vector3(0, 200), Vector3(), 0.5)
	self.bg:SetTint(1, 1, 1, 0)
	self.bg:TintTo(TINT_OFF, TINT_ON, 0.5)

	self.t = 0
	self.persists = false

	self.bg:SetEffect(resolvefilepath("shaders/wayne_ink.ksh"))
	self:OnUpdate(0)
	self:StartUpdating()

	-- rawset(_G, "ink", self)

	self.remove_task = self.inst:DoTaskInTime(1, function() self:Perish() end)
end)

function InkOver:SetPersists()
	self.persists = true

	self.remove_task:Cancel()
	self.remove_task = nil
end

function InkOver:Perish()
	-- self.bg:MoveTo(Vector3(), Vector3(0, -50), 1)
	self.bg:TintTo(TINT_ON, TINT_OFF, 1, function ()
		self:Kill()
	end)
end

function InkOver:OnUpdate(dt)
	self.t = self.t + dt
	
	self.bg:SetEffectParams(self.t, 0.015, 20, 1.5)
end

return InkOver