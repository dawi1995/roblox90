local clickDetector = script.Parent.ClickDetector

function onMouseClick(Player)
    local humanoid = Player.Character:findFirstChild("Humanoid")
    if humanoid then
        -- włączanie super skoku
        humanoid.UseJumpPower = true
        -- ustawienie siły skoku
        humanoid.JumpPower = 140
        humanoid.WalkSpeed = 70
        -- wyłączanie super skoku
        wait(30)
        humanoid.UseJumpPower = false
        humanoid.WalkSpeed = 16
    end
end

clickDetector.MouseClick:connect(onMouseClick)
