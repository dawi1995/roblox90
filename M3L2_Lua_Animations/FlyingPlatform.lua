local ts = game:GetService("TweenService")
local part = script.Parent

local properties = {
	Position = part.Position + Vector3.new(0, 0, 50), -- miejsce docelowe obiektu (wartość 50 może być zmieniona: oznacza, jak daleko obiekt będzie się przemieszczać wzdłuż osi Z)
	Orientation = part.Orientation + Vector3.new(0, 90, 0), -- kąt obrotu obiektu (ustaw wszystko na 0, jeśli nie chcesz, aby obiekt się obracał)
}

local info = TweenInfo.new(
	5, -- Długość animacji (w sekundach)(to jest czas, w którym obiekt wróci do swojej pierwotnej pozycji)
	Enum.EasingStyle.Sine,
	Enum.EasingDirection.Out,
	-1, -- Liczba iteracji(jeśli mniejsza niż zero, animacja będzie trwać w nieskończoność)
	true -- Powrót do pierwotnego miejsca (ustawienie tego na true oznacza, że obiekt wróci do pierwotnej pozycji po odtworzeniu animacji)(jeśli ustawione na false, obiekt nie wróci do pierwotnej pozycji)
)

local tween = ts:Create(part, info, properties)
tween:Play()
