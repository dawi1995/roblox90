--Dodać w ServerScriptService
local light = game:GetService('Lighting')

while true do
	light.ClockTime += 0.01
	wait(0.01)
end
