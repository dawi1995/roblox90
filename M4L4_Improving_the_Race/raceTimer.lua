-- Tworzenie GUI dla timera
local playerGui = game.Players.LocalPlayer:WaitForChild("PlayerGui")
local screenGui = Instance.new("ScreenGui", playerGui)
local textLabel = Instance.new("TextLabel", screenGui)
-- Konfiguracja GUI
textLabel.Text = ""
textLabel.TextSize = 60
textLabel.Font = Enum.Font.SourceSansBold
-- Umieszczanie tekstu TextLabel
textLabel.Position = UDim2.new(0.5, 0, 0.1, 0)
-- Przechowywanie nazw bloków Start i Finish
local startName = "Start"
local finishName = "Finish"

-- Funkcja, która wyszukuje obiekt po jego nazwie
local function findObject(objectName)
	return game.Workspace:WaitForChild(objectName)
end

local function checkObject(object)
	while true do
		if object then
			print("Located the object: " .. object.Name)
			object.Touched:Connect(function(hit)
				if hit.Parent.Name == game.Players.LocalPlayer.Name then
					if object.Name == startName then
						timerStarted = true
						startTime = os.clock()
						textLabel.TextColor3 = Color3.new(0, 0.3, 1)
						textLabel.Text = "Start!"
					elseif object.Name == finishName and timerStarted then
						timerStarted = false
						textLabel.TextColor3 = Color3.new(1, 0, 0)
						local finishTime = os.clock()
						local raceTime = finishTime - startTime
						local seconds = math.floor(raceTime)
						local milliseconds = math.floor((raceTime - seconds) * 100)
						local timeend = string.format("%02d:%02d", seconds, milliseconds)
						textLabel.Text = "Your time is: "..timeend.." seconds"
					end
				end
			end)
			return
		else
			wait(1) -- Pauza na 1 sekundę przed kolejną próbą wyszukiwania
		end
	end
end

-- Uruchamianie coroutiny, która wyszukuje obiekt Start
coroutine.wrap(function()
	local startObject = findObject(startName)
	checkObject(startObject)
end)()

-- Uruchamianie coroutiny, która wyszukuje obiekt Finish
coroutine.wrap(function()
	local finishObject = findObject(finishName)
	checkObject(finishObject)
end)()

-- Ten kod aktualizuje timer co setną sekundy
while wait(0.01) do
	if timerStarted then
		local currentTime = os.clock()
		local elapsedTime = currentTime - startTime
		local seconds = math.floor(elapsedTime)
		local milliseconds = math.floor((elapsedTime - seconds) * 100)
		textLabel.Text = string.format("%02d:%02d", seconds, milliseconds)
	end
end
