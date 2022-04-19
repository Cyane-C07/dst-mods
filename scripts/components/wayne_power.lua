local PENALTY_KEY = "wayne_puddle_penality"

local function OnTimer(inst, data)
	if data and data.name == PENALTY_KEY then
		inst.components.wayne_power:DecreasePenalty()
	end
end

local WaynePower = Class(function(self, inst)
    self.inst = inst

	self.penalty_level = 0
	
	self.timer = inst.components.timer
	inst:ListenForEvent("timerdone", OnTimer)
end)

-- Fox: From loading
function WaynePower:InitPenality()
	local function Init()
		if self.penalty_level > 0 then
			for i = 1, self.penalty_level do
				self:IncreasePenalty()
			end
		end
	end

	self.inst:DoTaskInTime(0, Init)
end

function WaynePower:MadePuddle(puddle)
	self:IncreasePenalty()
end

function WaynePower:IncreasePenalty()
	-- print("IncreasePenalty", CalledFrom())

	self.penalty_level = self.penalty_level + 1

	local sanity = self.inst.components.sanity 
	if sanity then
		sanity:AddSanityPenalty(PENALTY_KEY..self.penalty_level, TUNING.WAYNE.PUDDLE_SANITY)
	end

	self:SetupTimer()
end

function WaynePower:DecreasePenalty()
	local sanity = self.inst.components.sanity 
	if sanity then
		sanity:RemoveSanityPenalty(PENALTY_KEY..self.penalty_level)
	end

	self.penalty_level = math.max(self.penalty_level - 1, 0)

	if self.penalty_level > 0 then
		self:SetupTimer()
	end
end

function WaynePower:SetupTimer()
	if self.timer:TimerExists(PENALTY_KEY) then
		self.timer:SetTimeLeft(PENALTY_KEY, TUNING.WAYNE.SANITY_PENALTY_DURATION)
	else
		self.timer:StartTimer(PENALTY_KEY, TUNING.WAYNE.SANITY_PENALTY_DURATION)
	end
end

function WaynePower:OnSave()
	return {penalty_level = self.penalty_level}
end

function WaynePower:OnLoad(data)
	if data and data.penalty_level then
		self.penalty_level = data.penalty_level
		self:InitPenality()
	end
end

return WaynePower

