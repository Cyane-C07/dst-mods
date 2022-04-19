local UIAnim = require "widgets/uianim"

local FadeableUIAnim = Class(UIAnim, function(self, addcolour)
    UIAnim._ctor(self)

    self.addcolour = addcolour
end)

function FadeableUIAnim:SetTint(r, g, b, a)
    if self.addcolour then
        self:GetAnimState():SetAddColour(r, g, b, a)
    else
	    self:GetAnimState():SetMultColour(r, g, b, a)
    end
end

return FadeableUIAnim
