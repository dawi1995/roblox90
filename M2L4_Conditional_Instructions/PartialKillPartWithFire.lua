local killpart = script.Parent

local function KillPart(part)
	killpart.CanTouch = false
	local humanoid = part.Parent:FindFirstChild("Humanoid")
	if humanoid then
		local fire = Instance.new('Fire',killpart)
		fire.Size = 40
		fire.Heat = 5
		humanoid.Health -= 40
		wait(2)
		fire:Destroy()
		killpart.CanTouch = true
	end
end

killpart.Touched:Connect(KillPart)
