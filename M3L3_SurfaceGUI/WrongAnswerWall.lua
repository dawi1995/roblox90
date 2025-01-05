local block = script.Parent

local function Health(player)
    local Humanoid = player.Character:FindFirstChild("Humanoid")
    if Humanoid then
        wait(0.5)
        local expl = Instance.new('Explosion')
        expl.Position = block.Position
        expl.BlastPressure = 20
        expl.Parent = game.Workspace
        Humanoid.Health = 0
    end
end

script.Parent.ClickDetector.MouseClick:Connect(Health)
