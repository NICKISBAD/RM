--[[

		Gui2Lua™
		10zOfficial
		Version 1.0.0

]]


-- Instances

local HOURS = Instance.new("ScreenGui")
local FrameOutline = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local MainWindow = Instance.new("Frame")
local UICorner_2 = Instance.new("UICorner")
local Invader = Instance.new("TextButton")
local UICorner_3 = Instance.new("UICorner")
local Reopen = Instance.new("TextButton")
local Prophet = Instance.new("TextButton")
local UICorner_4 = Instance.new("UICorner")
local Witness = Instance.new("TextButton")
local UICorner_5 = Instance.new("UICorner")
local Artisan = Instance.new("TextButton")
local UICorner_6 = Instance.new("UICorner")
local UICorner_b2 = Instance.new("UICorner")
local Vestige = Instance.new("TextButton")
local UICorner_7 = Instance.new("UICorner")
local Visitor = Instance.new("TextButton")
local buffoon_2 = Instance.new("TextButton")
local UICorner_8 = Instance.new("UICorner")
local Subject = Instance.new("TextButton")
local UICorner_9 = Instance.new("UICorner")
local Parting = Instance.new("TextButton")
local UICorner_10 = Instance.new("UICorner")
local Dreamer = Instance.new("TextButton")
local UICorner_11 = Instance.new("UICorner")
local Bloxxer = Instance.new("TextButton")
local UICorner_12 = Instance.new("UICorner")
local Hellion = Instance.new("TextButton")
local UICorner_13 = Instance.new("UICorner")
local hotrash = Instance.new("TextButton")
local UICorner_14 = Instance.new("UICorner")
local equinox = Instance.new("TextButton")
local UICorner_15 = Instance.new("UICorner")
local buffoon = Instance.new("TextButton")
local UICorner_16 = Instance.new("UICorner")
local TextLabel = Instance.new("TextLabel")
local CloseButton = Instance.new("TextButton")
local UICorner_17 = Instance.new("UICorner")
local Minimize = Instance.new("TextButton")
local TOPLABEL = Instance.new("TextLabel")
local UICorner_18 = Instance.new("UICorner")

-- Properties

HOURS.Name = "HOURS"
HOURS.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
HOURS.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

FrameOutline.Name = "FrameOutline"
FrameOutline.Parent = HOURS
FrameOutline.BackgroundColor3 = Color3.new(0.0941176, 0.0941176, 0.0941176)
FrameOutline.BorderColor3 = Color3.new(0, 0, 0)
FrameOutline.BorderSizePixel = 0
FrameOutline.Position = UDim2.new(0.298763096, 0, 0.231250003, 0)
FrameOutline.Size = UDim2.new(0, 427, 0, 243)

local UserInputService = game:GetService("UserInputService")

local dragging
local dragInput
local dragStart
local startPos

FrameOutline.InputBegan:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.Touch then
		dragging = true
		dragStart = input.Position
		startPos = FrameOutline.Position

		input.Changed:Connect(function()
			if input.UserInputState == Enum.UserInputState.End then
				dragging = false
			end
		end)
	end
end)

FrameOutline.InputChanged:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.Touch then
		dragInput = input
	end
end)

UserInputService.InputChanged:Connect(function(input)
	if input == dragInput and dragging then
		local delta = input.Position - dragStart
		FrameOutline.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
	end
end)

UICorner.Parent = FrameOutline

MainWindow.Name = "MainWindow"
MainWindow.Parent = FrameOutline
MainWindow.BackgroundColor3 = Color3.new(0, 0, 0)
MainWindow.BorderColor3 = Color3.new(0, 0, 0)
MainWindow.BorderSizePixel = 0
MainWindow.Position = UDim2.new(0.0159760602, 0, 0.1144109, 0)
MainWindow.Size = UDim2.new(0, 413, 0, 204)

local function INFStats(Class)
	local a = require(game.ReplicatedStorage.Creatures.Host[Class])
	
	a.Power = "inf"
	a.Speed = 150
	a.MaxHealth = "inf"
	a.HealthRegen = "inf"
end

UICorner_2.Parent = MainWindow

Invader.Name = "Invader"
Invader.Parent = MainWindow
Invader.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
Invader.BorderColor3 = Color3.new(0, 0, 0)
Invader.BorderSizePixel = 0
Invader.Position = UDim2.new(0.0290556904, 0, 0.0539215691, 0)
Invader.Size = UDim2.new(0, 95, 0, 29)
Invader.Font = Enum.Font.Arcade
Invader.Text = "Invader"
Invader.TextColor3 = Color3.new(0, 1, 0)
Invader.TextScaled = true
Invader.TextSize = 14
Invader.TextStrokeTransparency = 0
Invader.TextWrapped = true
Invader.MouseButton1Click:Connect(function()
		INFStats("Class1")
end)

UICorner_3.Parent = Invader

Prophet.Name = "Prophet"
Prophet.Parent = MainWindow
Prophet.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
Prophet.BorderColor3 = Color3.new(0, 0, 0)
Prophet.BorderSizePixel = 0
Prophet.Position = UDim2.new(0.27602905, 0, 0.0539215691, 0)
Prophet.Size = UDim2.new(0, 95, 0, 29)
Prophet.Font = Enum.Font.Arcade
Prophet.Text = "Prophet"
Prophet.TextColor3 = Color3.new(0, 1, 0.968628)
Prophet.TextScaled = true
Prophet.TextSize = 14
Prophet.TextStrokeTransparency = 0
Prophet.TextWrapped = true
Prophet.MouseButton1Click:Connect(function()
	INFStats("Class2")
end)

UICorner_4.Parent = Prophet

Witness.Name = "Witness"
Witness.Parent = MainWindow
Witness.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
Witness.BorderColor3 = Color3.new(0, 0, 0)
Witness.BorderSizePixel = 0
Witness.Position = UDim2.new(0.534629822, 0, 0.051225476, 0)
Witness.Size = UDim2.new(0, 95, 0, 29)
Witness.Font = Enum.Font.Arcade
Witness.Text = "Witness"
Witness.TextColor3 = Color3.new(1, 0, 0)
Witness.TextScaled = true
Witness.TextSize = 14
Witness.TextStrokeTransparency = 0
Witness.TextWrapped = true
Witness.MouseButton1Click:Connect(function()
	INFStats("Class3")
end)

UICorner_5.Parent = Witness

Artisan.Name = "Artisan"
Artisan.Parent = MainWindow
Artisan.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
Artisan.BorderColor3 = Color3.new(0, 0, 0)
Artisan.BorderSizePixel = 0
Artisan.Position = UDim2.new(0.776760578, 0, 0.051225476, 0)
Artisan.Size = UDim2.new(0, 86, 0, 29)
Artisan.Font = Enum.Font.Arcade
Artisan.Text = "Artisan"
Artisan.TextColor3 = Color3.new(1, 0.403922, 0.00392157)
Artisan.TextScaled = true
Artisan.TextSize = 14
Artisan.TextStrokeTransparency = 0
Artisan.TextWrapped = true
Artisan.MouseButton1Click:Connect(function()
	INFStats("Class4")
end)

UICorner_6.Parent = Artisan

Vestige.Name = "Vestige"
Vestige.Parent = MainWindow
Vestige.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
Vestige.BorderColor3 = Color3.new(0, 0, 0)
Vestige.BorderSizePixel = 0
Vestige.Position = UDim2.new(0.0285765715, 0, 0.242401943, 0)
Vestige.Size = UDim2.new(0, 95, 0, 29)
Vestige.Font = Enum.Font.Arcade
Vestige.Text = "Vestige"
Vestige.TextColor3 = Color3.new(0.572549, 0, 0.623529)
Vestige.TextScaled = true
Vestige.TextSize = 14
Vestige.TextStrokeTransparency = 0
Vestige.TextWrapped = true
Vestige.MouseButton1Click:Connect(function()
	INFStats("Class5")
end)

UICorner_7.Parent = Vestige

Visitor.Name = "Visitor"
Visitor.Parent = MainWindow
Visitor.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
Visitor.BorderColor3 = Color3.new(0, 0, 0)
Visitor.BorderSizePixel = 0
Visitor.Position = UDim2.new(0.285235167, 0, 0.242401943, 0)
Visitor.Size = UDim2.new(0, 91, 0, 29)
Visitor.Font = Enum.Font.Arcade
Visitor.Text = "Visitor"
Visitor.TextColor3 = Color3.new(0.0313726, 0, 1)
Visitor.TextScaled = true
Visitor.TextSize = 14
Visitor.TextStrokeTransparency = 0
Visitor.TextWrapped = true
Visitor.MouseButton1Click:Connect(function()
	INFStats("Class6")
end)

UICorner_8.Parent = Visitor

Subject.Name = "Subject"
Subject.Parent = MainWindow
Subject.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
Subject.BorderColor3 = Color3.new(0, 0, 0)
Subject.BorderSizePixel = 0
Subject.Position = UDim2.new(0.534629822, 0, 0.242401943, 0)
Subject.Size = UDim2.new(0, 95, 0, 29)
Subject.Font = Enum.Font.Arcade
Subject.Text = "Subject"
Subject.TextColor3 = Color3.new(0.933333, 0, 1)
Subject.TextScaled = true
Subject.TextSize = 14
Subject.TextStrokeTransparency = 0
Subject.TextWrapped = true
Subject.MouseButton1Click:Connect(function()
	INFStats("Class7")
end)

UICorner_9.Parent = Subject

Parting.Name = "Parting"
Parting.Parent = MainWindow
Parting.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
Parting.BorderColor3 = Color3.new(0, 0, 0)
Parting.BorderSizePixel = 0
Parting.Position = UDim2.new(0.776760578, 0, 0.242401943, 0)
Parting.Size = UDim2.new(0, 86, 0, 29)
Parting.Font = Enum.Font.Arcade
Parting.Text = "Parting"
Parting.TextColor3 = Color3.new(0, 1, 0.282353)
Parting.TextScaled = true
Parting.TextSize = 14
Parting.TextStrokeTransparency = 0
Parting.TextWrapped = true
Parting.MouseButton1Click:Connect(function()
	INFStats("Class9")
end)

UICorner_10.Parent = Parting

Dreamer.Name = "Dreamer"
Dreamer.Parent = MainWindow
Dreamer.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
Dreamer.BorderColor3 = Color3.new(0, 0, 0)
Dreamer.BorderSizePixel = 0
Dreamer.Position = UDim2.new(0.0290556904, 0, 0.426470578, 0)
Dreamer.Size = UDim2.new(0, 95, 0, 29)
Dreamer.Font = Enum.Font.Arcade
Dreamer.Text = "Dreamer"
Dreamer.TextColor3 = Color3.new(1, 1, 1)
Dreamer.TextScaled = true
Dreamer.TextSize = 25
Dreamer.TextStrokeTransparency = 0
Dreamer.TextWrapped = true
Dreamer.MouseButton1Click:Connect(function()
	INFStats("Class8")
end)

UICorner_11.Parent = Dreamer

Bloxxer.Name = "Bloxxer"
Bloxxer.Parent = MainWindow
Bloxxer.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
Bloxxer.BorderColor3 = Color3.new(0, 0, 0)
Bloxxer.BorderSizePixel = 0
Bloxxer.Position = UDim2.new(0.283292979, 0, 0.426470578, 0)
Bloxxer.Size = UDim2.new(0, 92, 0, 29)
Bloxxer.Font = Enum.Font.Arcade
Bloxxer.Text = "Bloxxerman"
Bloxxer.TextColor3 = Color3.new(0.92549, 0.341176, 0)
Bloxxer.TextScaled = true
Bloxxer.TextSize = 14
Bloxxer.TextStrokeTransparency = 0
Bloxxer.TextWrapped = true
Bloxxer.MouseButton1Click:Connect(function()
	INFStats("Class999")
end)

UICorner_12.Parent = Bloxxer

Hellion.Name = "Hellion"
Hellion.Parent = MainWindow
Hellion.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
Hellion.BorderColor3 = Color3.new(0, 0, 0)
Hellion.BorderSizePixel = 0
Hellion.Position = UDim2.new(0.534629822, 0, 0.426470578, 0)
Hellion.Size = UDim2.new(0, 94, 0, 29)
Hellion.Font = Enum.Font.Arcade
Hellion.Text = "Hellion"
Hellion.TextColor3 = Color3.new(0.92549, 0.341176, 0)
Hellion.TextScaled = true
Hellion.TextSize = 14
Hellion.TextStrokeTransparency = 0
Hellion.TextWrapped = true
Hellion.MouseButton1Click:Connect(function()
	INFStats("Class1337")
	INFStats("Class1338")
end)

UICorner_13.Parent = Hellion

hotrash.Name = "hotrash"
hotrash.Parent = MainWindow
hotrash.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
hotrash.BorderColor3 = Color3.new(0, 0, 0)
hotrash.BorderSizePixel = 0
hotrash.Position = UDim2.new(0.776760578, 0, 0.426470578, 0)
hotrash.Size = UDim2.new(0, 86, 0, 29)
hotrash.Font = Enum.Font.Arcade
hotrash.Text = "Hot Rash"
hotrash.TextColor3 = Color3.new(0, 0.368627, 0.92549)
hotrash.TextScaled = true
hotrash.TextSize = 14
hotrash.TextStrokeTransparency = 0
hotrash.TextWrapped = true
hotrash.MouseButton1Click:Connect(function()
	INFStats("Class01")
end)

UICorner_14.Parent = hotrash

equinox.Name = "equinox"
equinox.Parent = MainWindow
equinox.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
equinox.BorderColor3 = Color3.new(0, 0, 0)
equinox.BorderSizePixel = 0
equinox.Position = UDim2.new(0.0290556904, 0, 0.632352948, 0)
equinox.Size = UDim2.new(0, 94, 0, 29)
equinox.Font = Enum.Font.Arcade
equinox.Text = "Equinox"
equinox.TextColor3 = Color3.new(0.866667, 0.639216, 0.92549)
equinox.TextScaled = true
equinox.TextSize = 14
equinox.TextStrokeTransparency = 0
equinox.TextWrapped = true
equinox.MouseButton1Click:Connect(function()
	INFStats("Class0")
end)

UICorner_15.Parent = equinox

buffoon.Name = "buffoon"
buffoon.Parent = MainWindow
buffoon.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
buffoon.BorderColor3 = Color3.new(0, 0, 0)
buffoon.BorderSizePixel = 0
buffoon.Position = UDim2.new(0.285235167, 0, 0.632352948, 0)
buffoon.Size = UDim2.new(0, 91, 0, 29)
buffoon.Font = Enum.Font.Arcade
buffoon.Text = "Buffoon"
buffoon.TextColor3 = Color3.new(0.92549, 0.788235, 0)
buffoon.TextScaled = true
buffoon.TextSize = 14
buffoon.TextStrokeTransparency = 0
buffoon.TextWrapped = true
buffoon.MouseButton1Click:Connect(function()
	INFStats("ClassDuck")
end)

UICorner_16.Parent = buffoon

buffoon_2.Name = "Ronin"
buffoon_2.Parent = MainWindow
buffoon_2.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
buffoon_2.BorderColor3 = Color3.new(0, 0, 0)
buffoon_2.BorderSizePixel = 0
buffoon_2.Position = UDim2.new(0.534629822, 0, 0.632352948, 0)
buffoon_2.Size = UDim2.new(0, 95, 0, 29)
buffoon_2.Font = Enum.Font.Arcade
buffoon_2.Text = "Ronin"
buffoon_2.TextColor3 = Color3.new(0.92549, 0.788235, 0)
buffoon_2.TextScaled = true
buffoon_2.TextSize = 14
buffoon_2.TextStrokeTransparency = 0
buffoon_2.TextWrapped = true
buffoon_2.MouseButton1Click:Connect(function()
	INFStats("Class5318008")
end)

UICorner_b2.Parent = buffoon_2

TextLabel.Parent = MainWindow
TextLabel.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel.BackgroundTransparency = 1
TextLabel.BorderColor3 = Color3.new(0, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0.0290556904, 0, 0.829402685, 0)
TextLabel.Size = UDim2.new(0, 175, 0, 26)
TextLabel.Font = Enum.Font.Arcade
TextLabel.Text = "Inf Stats GUI"
TextLabel.TextColor3 = Color3.new(1, 1, 1)
TextLabel.TextScaled = true
TextLabel.TextSize = 14
TextLabel.TextStrokeTransparency = 0
TextLabel.TextWrapped = true

CloseButton.Name = "CloseButton"
CloseButton.Parent = FrameOutline
CloseButton.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
CloseButton.BorderColor3 = Color3.new(0, 0, 0)
CloseButton.BorderSizePixel = 0
CloseButton.Position = UDim2.new(0.911007047, 0, 0, 0)
CloseButton.Size = UDim2.new(0, 38, 0, 27)
CloseButton.Font = Enum.Font.Arcade
CloseButton.Text = "X"
CloseButton.TextColor3 = Color3.new(1, 1, 1)
CloseButton.TextScaled = true
CloseButton.TextSize = 14
CloseButton.TextStrokeTransparency = 0
CloseButton.TextWrapped = true
CloseButton.MouseButton1Click:Connect(function()
	HOURS:Destroy()
end)

Reopen.Name = "Reopen"
Reopen.Parent = HOURS
Reopen.BackgroundColor3 = Color3.new(0.156863, 0.156863, 0.156863)
Reopen.BorderColor3 = Color3.new(0, 0, 0)
Reopen.BorderSizePixel = 0
Reopen.Position = UDim2.new(0.029495718, 0, 0.417187512, 0)
Reopen.Size = UDim2.new(0, 54, 0, 54)
Reopen.Visible = false
Reopen.Font = Enum.Font.Arcade
Reopen.Text = "ReOpen"
Reopen.TextColor3 = Color3.new(1, 1, 1)
Reopen.TextScaled = true
Reopen.TextSize = 14
Reopen.TextWrapped = true
Reopen.MouseButton1Click:Connect(function()
	Reopen.Visible = false
	FrameOutline.Visible = true
end)

UICorner_17.Parent = CloseButton

Minimize.Name = "Minimize"
Minimize.Parent = FrameOutline
Minimize.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
Minimize.BorderColor3 = Color3.new(0, 0, 0)
Minimize.BorderSizePixel = 0
Minimize.Position = UDim2.new(0.83606559, 0, 0, 0)
Minimize.Size = UDim2.new(0, 38, 0, 27)
Minimize.Font = Enum.Font.Arcade
Minimize.Text = "-"
Minimize.TextColor3 = Color3.new(1, 1, 1)
Minimize.TextScaled = true
Minimize.TextSize = 14
Minimize.TextStrokeTransparency = 0
Minimize.TextWrapped = true
Minimize.MouseButton1Click:Connect(function()
	FrameOutline.Visible = false
	Reopen.Visible = true
end)

TOPLABEL.Name = "TOPLABEL"
TOPLABEL.Parent = FrameOutline
TOPLABEL.BackgroundColor3 = Color3.new(1, 1, 1)
TOPLABEL.BackgroundTransparency = 1
TOPLABEL.BorderColor3 = Color3.new(0, 0, 0)
TOPLABEL.BorderSizePixel = 0
TOPLABEL.Position = UDim2.new(0.0421545655, 0, 0, 0)
TOPLABEL.Size = UDim2.new(0, 321, 0, 27)
TOPLABEL.Font = Enum.Font.Arcade
TOPLABEL.Text = "HOURS GUI by NICKISBAD"
TOPLABEL.TextColor3 = Color3.new(1, 1, 1)
TOPLABEL.TextSize = 25
TOPLABEL.TextWrapped = true

UICorner_18.Parent = TOPLABEL
