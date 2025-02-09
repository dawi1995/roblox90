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
