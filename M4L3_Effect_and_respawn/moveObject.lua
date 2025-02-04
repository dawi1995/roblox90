-- uzyskanie linku do naszego przycisku
local button = script.Parent
-- uzyskanie linku do naszego samochodu
local model = game.Workspace.NewKodlandCar
-- ustawienie pozycji, w której chcemy, aby samochód się pojawił
local targetPosition = Vector3.new(0, 0, 0)
local targetOrientation = Vector3.new(0,0,0)

-- funkcja, która przesuwa obiekt samochodu
local function moveModel()
    -- przesuwanie obiektu do pozycji, którą zdefiniowaliśmy powyżej
    -- model:SetPrimaryPartCFrame(CFrame.new(targetPosition))
    model:SetPrimaryPartCFrame(CFrame.new(targetPosition) * CFrame.Angles(math.rad(targetOrientation.X), math.rad(targetOrientation.Y), math.rad(targetOrientation.Z)))
end

-- funkcja ponownego pojawienia się będzie wywoływana za każdym razem, gdy gracz naciśnie przycisk
button.MouseButton1Click:Connect(moveModel)
