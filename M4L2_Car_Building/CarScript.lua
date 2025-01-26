-- zmienne
local seat = script.Parent.VehicleSeat
local backLeft = script.Parent.BackLeft
local backRight = script.Parent.BackRight
local frontLeft = script.Parent.FrontLeft
local frontRight = script.Parent.FrontRight

-- kąt sterowania
local steerAngle = 30

-- prędkość samochodu
local speed = 60

-- funkcja która obraca samochodem, gdy odpowiedni klawisz jest naciśnięty
seat:GetPropertyChangedSignal("Steer"):Connect(function()
	frontLeft.Rotate.Steer.TargetAngle = steerAngle * seat.Steer
	frontRight.Rotate.Steer.TargetAngle = steerAngle * seat.Steer
end)

-- fukcja, która przyspiesza oraz zwalnia samochód kiedy naciśnięty zostaje odpowiedni przycisk
seat:GetPropertyChangedSignal("Throttle"):Connect(function()
	frontLeft.Wheel.Motor.AngularVelocity = speed * seat.Throttle
	frontRight.Wheel.Motor.AngularVelocity = speed * -seat.Throttle
	backLeft.Wheel.Motor.AngularVelocity = speed * seat.Throttle
	backRight.Wheel.Motor.AngularVelocity = speed * -seat.Throttle
end)
