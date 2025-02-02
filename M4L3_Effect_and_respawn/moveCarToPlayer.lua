-- link do przycisku
local button = script.Parent
-- link do obiektu samochodu
local model = game.Workspace.NewKodlandCar
local seat = model:FindFirstChildWhichIsA("VehicleSeat")

-- funkcja, która teleportuje samochód obok gracza
local function moveModelToPlayer()
	local player = game.Players.LocalPlayer
	local playerCharacter = player.Character
	
	if seat then
		seat.Disabled = true -- Tymczasowo wyłącz VehicleSeat
	end

	if playerCharacter then
		local playerPosition = playerCharacter.PrimaryPart.Position
		-- przesuń obiekt do pozycji gracza
		model:SetPrimaryPartCFrame(CFrame.new(playerPosition) + Vector3.new(10,0,0))
	end
	
	task.wait(0.2)
	
	if seat then
		seat.Disabled = false -- Włącz ponownie VehicleSeat
	end
end

button.MouseButton1Click:Connect(moveModelToPlayer)
