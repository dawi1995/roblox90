local killpart = script.Parent

local function KillPart(part)
    local humanoid = part.Parent:FindFirstChild("Humanoid")
    if humanoid then
        humanoid.Health = 0
    end
end

killpart.Touched:Connect(KillPart)
