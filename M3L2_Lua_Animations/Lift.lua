local ts = game:GetService("TweenService")
local part = script.Parent
part.Anchored = true

local properties = {
    Position = part.Position + Vector3.new(0, 50, 0) -- change the 50 value here!
}

local info = TweenInfo.new(
    5, 
    Enum.EasingStyle.Sine,
    Enum.EasingDirection.Out,
    -1, 
    true    
)

local tween = ts:Create(part, info, properties)
tween:Play()
