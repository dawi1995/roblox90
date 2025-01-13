-- Pobieranie odniesienia do platformy
local killpart = script.Parent

local function KillPart(part)
	-- Pobieranie danych gracza
	local humanoid = part.Parent:FindFirstChild("Humanoid")
	-- Jeśli gracz stanął na platformie, to
	-- Zerowanie zdrowia gracza
	if humanoid then
		humanoid.Health = 0
	end
end
-- Wywoływanie funkcji napisanej powyżej przy dotyku
killpart.Touched:Connect(KillPart)
