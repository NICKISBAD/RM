--[[

		Gui2Lua™
		10zOfficial
		Version 1.0.0

]]


-- Instances

local Shortcuts = Instance.new("ScreenGui")
local Frame1 = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local topbarframe = Instance.new("Frame")
local UICorner_2 = Instance.new("UICorner")
local CloseButton = Instance.new("TextButton")
local UICorner_3 = Instance.new("UICorner")
local MinimizeButton = Instance.new("TextButton")
local UICorner_4 = Instance.new("UICorner")
local WindowFarm = Instance.new("Frame")
local UICorner_5 = Instance.new("UICorner")
local barframe = Instance.new("Frame")
local ScriptList = Instance.new("ScrollingFrame")
local UICorner_6 = Instance.new("UICorner")
local InfiniteYield = Instance.new("TextButton")
local DarkDex = Instance.new("TextButton")
local UIListLayout = Instance.new("UIListLayout")
local ResidenceMassacre = Instance.new("TextButton")
local ALegacyTime = Instance.new("TextButton")
local UTBossBattles = Instance.new("TextButton")
local HoursINFStats = Instance.new("TextButton")
local HOURSallchars = Instance.new("TextButton")
local AStereotypicalObby = Instance.new("TextButton")
local Execute = Instance.new("TextButton")
local ABDGame = Instance.new("TextButton")
local PlayerESP = Instance.new("TextButton")
local UICorner_7 = Instance.new("UICorner")
local Execute_2 = Instance.new("TextButton")
local UICorner_8 = Instance.new("UICorner")
local ScriptViewer = Instance.new("TextLabel")
local UICorner_9 = Instance.new("UICorner")
local TOPLABEL = Instance.new("TextLabel")
local ReopenButton = Instance.new("TextButton")
local UICorner_10 = Instance.new("UICorner")
_G.Script = nil

-- Properties

Shortcuts.Name = "Shortcuts"
Shortcuts.Parent = game.CoreGui
Shortcuts.ZIndexBehavior = Enum.ZIndexBehavior.Sibling


Frame1.Name = "Frame1"
Frame1.Parent = Shortcuts
Frame1.BackgroundColor3 = Color3.new(0.164706, 0.164706, 0.164706)
Frame1.BorderColor3 = Color3.new(0, 0, 0)
Frame1.BorderSizePixel = 0
Frame1.Position = UDim2.new(0.238820165, 0, 0.232812494, 0)
Frame1.Size = UDim2.new(0, 469, 0, 254)


local UserInputService = game:GetService("UserInputService")

local dragging
local dragInput
local dragStart
local startPos

Frame1.InputBegan:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.Touch then
		dragging = true
		dragStart = input.Position
		startPos = Frame1.Position

		input.Changed:Connect(function()
			if input.UserInputState == Enum.UserInputState.End then
				dragging = false
			end
		end)
	end
end)

Frame1.InputChanged:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.Touch then
		dragInput = input
	end
end)

UserInputService.InputChanged:Connect(function(input)
	if input == dragInput and dragging then
		local delta = input.Position - dragStart
		Frame1.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
	end
end)


UICorner.Parent = Frame1

topbarframe.Name = "topbarframe"
topbarframe.Parent = Frame1
topbarframe.BackgroundColor3 = Color3.new(0.164706, 0.164706, 0.164706)
topbarframe.BorderColor3 = Color3.new(0, 0, 0)
topbarframe.BorderSizePixel = 0
topbarframe.Position = UDim2.new(0, 0, -0.0452830195, 0)
topbarframe.Size = UDim2.new(0, 469, 0, 25)

ReopenButton.Name = "ReopenButton"
ReopenButton.Parent = Shortcuts
ReopenButton.BackgroundColor3 = Color3.new(0.156863, 0.156863, 0.156863)
ReopenButton.BorderColor3 = Color3.new(0, 0, 0)
ReopenButton.BorderSizePixel = 0
ReopenButton.Position = UDim2.new(0.029495718, 0, 0.417187512, 0)
ReopenButton.Size = UDim2.new(0, 54, 0, 54)
ReopenButton.Visible = false
ReopenButton.Font = Enum.Font.SourceSansBold
ReopenButton.Text = "ReOpen"
ReopenButton.TextColor3 = Color3.new(1, 1, 1)
ReopenButton.TextScaled = true
ReopenButton.TextSize = 14
ReopenButton.TextWrapped = true
ReopenButton.MouseButton1Click:Connect(function()
	ReopenButton.Visible = false
	Frame1.Visible = true
end)

UICorner_2.Parent = topbarframe

CloseButton.Name = "CloseButton"
CloseButton.Parent = topbarframe
CloseButton.BackgroundColor3 = Color3.new(0.584314, 0, 0.00784314)
CloseButton.BackgroundTransparency = 0.800000011920929
CloseButton.BorderColor3 = Color3.new(0, 0, 0)
CloseButton.BorderSizePixel = 0
CloseButton.Position = UDim2.new(0.912579954, 0, 0, 0)
CloseButton.Size = UDim2.new(0, 41, 0, 25)
CloseButton.Font = Enum.Font.Arcade
CloseButton.Text = "X"
CloseButton.TextColor3 = Color3.new(1, 1, 1)
CloseButton.TextScaled = true
CloseButton.TextSize = 14
CloseButton.TextStrokeTransparency = 0
CloseButton.TextWrapped = true
CloseButton.MouseButton1Click:Connect(function()
	Shortcuts:Destroy()
end)

UICorner_3.Parent = CloseButton

MinimizeButton.Name = "MinimizeButton"
MinimizeButton.Parent = topbarframe
MinimizeButton.BackgroundColor3 = Color3.new(0, 0.0392157, 0.584314)
MinimizeButton.BackgroundTransparency = 0.800000011920929
MinimizeButton.BorderColor3 = Color3.new(0, 0, 0)
MinimizeButton.BorderSizePixel = 0
MinimizeButton.Position = UDim2.new(0.825159907, 0, 0, 0)
MinimizeButton.Size = UDim2.new(0, 41, 0, 25)
MinimizeButton.Font = Enum.Font.Arcade
MinimizeButton.Text = "-"
MinimizeButton.TextColor3 = Color3.new(1, 1, 1)
MinimizeButton.TextScaled = true
MinimizeButton.TextSize = 14
MinimizeButton.TextStrokeTransparency = 0
MinimizeButton.TextWrapped = true
MinimizeButton.MouseButton1Click:Connect(function()
	ReopenButton.Visible = true
	Frame1.Visible = false
end)

UICorner_4.Parent = MinimizeButton

WindowFarm.Name = "WindowFarm"
WindowFarm.Parent = topbarframe
WindowFarm.BackgroundColor3 = Color3.new(0.113725, 0.113725, 0.113725)
WindowFarm.BorderColor3 = Color3.new(0, 0, 0)
WindowFarm.BorderSizePixel = 0
WindowFarm.Position = UDim2.new(0.0298507456, 0, 1.16961908, 0)
WindowFarm.Size = UDim2.new(0, 441, 0, 230)

UICorner_5.Parent = WindowFarm

barframe.Name = "barframe"
barframe.Parent = WindowFarm
barframe.BackgroundColor3 = Color3.new(0.0784314, 0.0784314, 0.0784314)
barframe.BorderColor3 = Color3.new(0, 0, 0)
barframe.BorderSizePixel = 0
barframe.Position = UDim2.new(0.253968269, 0, 0, 0)
barframe.Size = UDim2.new(0, 6, 0, 230)

ScriptList.Name = "ScriptList"
ScriptList.Parent = WindowFarm
ScriptList.Active = true
ScriptList.BackgroundColor3 = Color3.new(0.113725, 0.113725, 0.113725)
ScriptList.BorderColor3 = Color3.new(0, 0, 0)
ScriptList.BorderSizePixel = 0
ScriptList.Size = UDim2.new(0, 112, 0, 230)
ScriptList.ScrollBarThickness = 4

ScriptViewer.Name = "ScriptViewer"
ScriptViewer.Parent = WindowFarm
ScriptViewer.BackgroundColor3 = Color3.new(0.0392157, 0.0392157, 0.0392157)
ScriptViewer.BorderColor3 = Color3.new(0, 0, 0)
ScriptViewer.BorderSizePixel = 0
ScriptViewer.Position = UDim2.new(0.283446699, 0, 0.0347826071, 0)
ScriptViewer.Size = UDim2.new(0, 306, 0, 182)
ScriptViewer.Font = Enum.Font.Arcade
ScriptViewer.Text = "Scripts appear here"
ScriptViewer.TextScaled = true
ScriptViewer.TextColor3 = Color3.new(1, 1, 1)
ScriptViewer.TextSize = 22
ScriptViewer.TextXAlignment = Enum.TextXAlignment.Left
ScriptViewer.TextYAlignment = Enum.TextYAlignment.Top

UICorner_6.Parent = ScriptList

InfiniteYield.Name = "InfiniteYield"
InfiniteYield.Parent = ScriptList
InfiniteYield.BackgroundColor3 = Color3.new(0.0941176, 0.0941176, 0.0941176)
InfiniteYield.BorderColor3 = Color3.new(0.156863, 0.156863, 0.156863)
InfiniteYield.BorderSizePixel = 2
InfiniteYield.Size = UDim2.new(0, 105, 0, 24)
InfiniteYield.Font = Enum.Font.Arcade
InfiniteYield.Text = "Infinite Yield"
InfiniteYield.TextColor3 = Color3.new(1, 1, 1)
InfiniteYield.TextScaled = true
InfiniteYield.TextSize = 12
InfiniteYield.TextWrapped = true
InfiniteYield.MouseButton1Click:Connect(function()
	_G.Script = 'loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()'
	ScriptViewer.Text = "EdgeIY - Infinite Yield"
end)

DarkDex.Name = "DarkDex"
DarkDex.Parent = ScriptList
DarkDex.BackgroundColor3 = Color3.new(0.0941176, 0.0941176, 0.0941176)
DarkDex.BorderColor3 = Color3.new(0.156863, 0.156863, 0.156863)
DarkDex.BorderSizePixel = 2
DarkDex.Position = UDim2.new(0, 0, 0.12608695, 0)
DarkDex.Size = UDim2.new(0, 105, 0, 24)
DarkDex.Font = Enum.Font.Arcade
DarkDex.Text = "Dark Dex"
DarkDex.TextColor3 = Color3.new(1, 1, 1)
DarkDex.TextScaled = true
DarkDex.TextSize = 19
DarkDex.TextWrapped = true
DarkDex.MouseButton1Click:Connect(function()
	_G.Script = 'loadstring(game:HttpGet("https://raw.githubusercontent.com/BabyHamsta/RBLX_Scripts/main/Universal/BypassedDarkDexV3.lua", true))()'
	ScriptViewer.Text = "Dex Explorer"
end)

UIListLayout.Parent = ScriptList
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Padding = UDim.new(0, 5)

ResidenceMassacre.Name = "Residence Massacre"
ResidenceMassacre.Parent = ScriptList
ResidenceMassacre.BackgroundColor3 = Color3.new(0.0941176, 0.0941176, 0.0941176)
ResidenceMassacre.BorderColor3 = Color3.new(0.156863, 0.156863, 0.156863)
ResidenceMassacre.BorderSizePixel = 2
ResidenceMassacre.Position = UDim2.new(0, 0, 0.252173901, 0)
ResidenceMassacre.Size = UDim2.new(0, 105, 0, 24)
ResidenceMassacre.Font = Enum.Font.Arcade
ResidenceMassacre.Text = "Residence Massacre"
ResidenceMassacre.TextColor3 = Color3.new(1, 1, 1)
ResidenceMassacre.TextScaled = true
ResidenceMassacre.TextSize = 19
ResidenceMassacre.TextWrapped = true
ResidenceMassacre.MouseButton1Click:Connect(function()
	_G.Script = 'loadstring(game:HttpGet("https://raw.githubusercontent.com/NICKISBAD/RM/main/xscript.lua"))()'
	ScriptViewer.Text = "Residence Massacre"
end)

ALegacyTime.Name = "A Legacy Time"
ALegacyTime.Parent = ScriptList
ALegacyTime.BackgroundColor3 = Color3.new(0.0941176, 0.0941176, 0.0941176)
ALegacyTime.BorderColor3 = Color3.new(0.156863, 0.156863, 0.156863)
ALegacyTime.BorderSizePixel = 2
ALegacyTime.Position = UDim2.new(0, 0, 0.378260881, 0)
ALegacyTime.Size = UDim2.new(0, 105, 0, 24)
ALegacyTime.Font = Enum.Font.Arcade
ALegacyTime.Text = "A legacy Time"
ALegacyTime.TextColor3 = Color3.new(1, 1, 1)
ALegacyTime.TextScaled = true
ALegacyTime.TextSize = 12
ALegacyTime.TextWrapped = true
ALegacyTime.MouseButton1Click:Connect(function()
	_G.Script = 'loadstring(game:HttpGet("https://raw.githubusercontent.com/NICKISBAD/RM/main/alt.lua"))()'
	ScriptViewer.Text = "A Legacy Time / Any AUT game with a bad anticheat"
end)

UTBossBattles.Name = "UT Boss Battles"
UTBossBattles.Parent = ScriptList
UTBossBattles.BackgroundColor3 = Color3.new(0.0941176, 0.0941176, 0.0941176)
UTBossBattles.BorderColor3 = Color3.new(0.156863, 0.156863, 0.156863)
UTBossBattles.BorderSizePixel = 2
UTBossBattles.Position = UDim2.new(0, 0, 0.378260881, 0)
UTBossBattles.Size = UDim2.new(0, 105, 0, 24)
UTBossBattles.Font = Enum.Font.Arcade
UTBossBattles.Text = "Undertale Boss Battles"
UTBossBattles.TextColor3 = Color3.new(1, 1, 1)
UTBossBattles.TextScaled = true
UTBossBattles.TextSize = 12
UTBossBattles.TextWrapped = true
UTBossBattles.MouseButton1Click:Connect(function()
	_G.Script = 'loadstring(game:HttpGet("https://raw.githubusercontent.com/NICKISBAD/UT-BB-Docs/main/BetaV1.8.lua"))()'
	ScriptViewer.Text = "Undertale Boss Battles"
end)

HoursINFStats.Name = "Hours INF Stats"
HoursINFStats.Parent = ScriptList
HoursINFStats.BackgroundColor3 = Color3.new(0.0941176, 0.0941176, 0.0941176)
HoursINFStats.BorderColor3 = Color3.new(0.156863, 0.156863, 0.156863)
HoursINFStats.BorderSizePixel = 2
HoursINFStats.Size = UDim2.new(0, 105, 0, 24)
HoursINFStats.Font = Enum.Font.Arcade
HoursINFStats.Text = "HOURS Inf Stats"
HoursINFStats.TextColor3 = Color3.new(1, 1, 1)
HoursINFStats.TextScaled = true
HoursINFStats.TextSize = 12
HoursINFStats.TextWrapped = true
HoursINFStats.MouseButton1Click:Connect(function()
	_G.Script = 'loadstring(game:HttpGet("https://raw.githubusercontent.com/NICKISBAD/RM/main/hours1.lua"))()'
	ScriptViewer.Text = "Hours (INF Stats all characters)"
end)

ABDGame.Name = "DarkDex"
ABDGame.Parent = ScriptList
ABDGame.BackgroundColor3 = Color3.new(0.0941176, 0.0941176, 0.0941176)
ABDGame.BorderColor3 = Color3.new(0.156863, 0.156863, 0.156863)
ABDGame.BorderSizePixel = 2
ABDGame.Position = UDim2.new(0, 0, 0.12608695, 0)
ABDGame.Size = UDim2.new(0, 105, 0, 24)
ABDGame.Font = Enum.Font.Arcade
ABDGame.Text = "ABD Game Item Grabber"
ABDGame.TextColor3 = Color3.new(1, 1, 1)
ABDGame.TextScaled = true
ABDGame.TextSize = 19
ABDGame.TextWrapped = true
ABDGame.MouseButton1Click:Connect(function()
	_G.Script = 'ABD Game'
	ScriptViewer.Text = "A Bizarre Day Knockoffs"
end)

HOURSallchars.Name = "A Legacy Time"
HOURSallchars.Parent = ScriptList
HOURSallchars.BackgroundColor3 = Color3.new(0.0941176, 0.0941176, 0.0941176)
HOURSallchars.BorderColor3 = Color3.new(0.156863, 0.156863, 0.156863)
HOURSallchars.BorderSizePixel = 2
HOURSallchars.Position = UDim2.new(0, 0, 0.378260881, 0)
HOURSallchars.Size = UDim2.new(0, 105, 0, 24)
HOURSallchars.Font = Enum.Font.Arcade
HOURSallchars.Text = "HOURS all characters"
HOURSallchars.TextColor3 = Color3.new(1, 1, 1)
HOURSallchars.TextScaled = true
HOURSallchars.TextSize = 12
HOURSallchars.TextWrapped = true
HOURSallchars.MouseButton1Click:Connect(function()
	_G.Script = 'loadstring(game:HttpGet("https://raw.githubusercontent.com/NICKISBAD/RM/main/HOURSunlockall.lua"))()'
	ScriptViewer.Text = "Hours (All Hosts+Tempos)"
end)

AStereotypicalObby.Name = "A Stereotypical Obby"
AStereotypicalObby.Parent = ScriptList
AStereotypicalObby.BackgroundColor3 = Color3.new(0.0941176, 0.0941176, 0.0941176)
AStereotypicalObby.BorderColor3 = Color3.new(0.156863, 0.156863, 0.156863)
AStereotypicalObby.BorderSizePixel = 2
AStereotypicalObby.Position = UDim2.new(0, 0, 0.378260881, 0)
AStereotypicalObby.Size = UDim2.new(0, 105, 0, 24)
AStereotypicalObby.Font = Enum.Font.Arcade
AStereotypicalObby.Text = "Stereotypical Obby"
AStereotypicalObby.TextColor3 = Color3.new(1, 1, 1)
AStereotypicalObby.TextScaled = true
AStereotypicalObby.TextSize = 12
AStereotypicalObby.TextWrapped = true
AStereotypicalObby.MouseButton1Click:Connect(function()
	_G.Script = 'loadstring(game:HttpGet("https://raw.githubusercontent.com/NICKISBAD/A-Stereotypical-Obby/main/Main.lua"))()'
	ScriptViewer.Text = "A stereotypical obby"
end)

PlayerESP.Name = "Player ESP"
PlayerESP.Parent = ScriptList
PlayerESP.BackgroundColor3 = Color3.new(0.0941176, 0.0941176, 0.0941176)
PlayerESP.BorderColor3 = Color3.new(0.156863, 0.156863, 0.156863)
PlayerESP.BorderSizePixel = 2
PlayerESP.Position = UDim2.new(0, 0, 0.378260881, 0)
PlayerESP.Size = UDim2.new(0, 105, 0, 24)
PlayerESP.Font = Enum.Font.Arcade
PlayerESP.Text = "PlayerESP"
PlayerESP.TextColor3 = Color3.new(1, 1, 1)
PlayerESP.TextScaled = true
PlayerESP.TextSize = 12
PlayerESP.TextWrapped = true
PlayerESP.MouseButton1Click:Connect(function()
	_G.Script = 'PlayerESP'
	ScriptViewer.Text = "Player ESP"
end)

Execute.Name = "Execute"
Execute.Parent = WindowFarm
Execute.BackgroundColor3 = Color3.new(0.0784314, 0.0784314, 0.0784314)
Execute.BorderColor3 = Color3.new(0, 0, 0)
Execute.BorderSizePixel = 0
Execute.Position = UDim2.new(0.283446699, 0, 0.860869586, 0)
Execute.Size = UDim2.new(0, 200, 0, 25)
Execute.Font = Enum.Font.Arcade
Execute.Text = "Execute"
Execute.TextColor3 = Color3.new(1, 1, 1)
Execute.TextSize = 14
Execute.MouseButton1Click:Connect(function()
	if _G.Script == 'loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()' then
		loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
	elseif _G.Script == 'loadstring(game:HttpGet("https://raw.githubusercontent.com/BabyHamsta/RBLX_Scripts/main/Universal/BypassedDarkDexV3.lua", true))()' then
		loadstring(game:HttpGet("https://raw.githubusercontent.com/BabyHamsta/RBLX_Scripts/main/Universal/BypassedDarkDexV3.lua", true))()
	elseif _G.Script == 'loadstring(game:HttpGet("https://raw.githubusercontent.com/NICKISBAD/RM/main/xscript.lua"))()' then
		loadstring(game:HttpGet("https://raw.githubusercontent.com/NICKISBAD/RM/main/xscript.lua"))()
	elseif _G.Script == 'loadstring(game:HttpGet("https://raw.githubusercontent.com/NICKISBAD/RM/main/alt.lua"))()' then
		loadstring(game:HttpGet("https://raw.githubusercontent.com/NICKISBAD/RM/main/alt.lua"))()
	elseif _G.Script == 'loadstring(game:HttpGet("https://raw.githubusercontent.com/NICKISBAD/UT-BB-Docs/main/BetaV1.8.lua"))()' then
		loadstring(game:HttpGet("https://raw.githubusercontent.com/NICKISBAD/UT-BB-Docs/main/BetaV1.8.lua"))()
	elseif _G.Script == 'loadstring(game:HttpGet("https://raw.githubusercontent.com/NICKISBAD/RM/main/hours1.lua"))()' then
		loadstring(game:HttpGet("https://raw.githubusercontent.com/NICKISBAD/RM/main/hours1.lua"))()
	elseif _G.Script == 'loadstring(game:HttpGet("https://raw.githubusercontent.com/NICKISBAD/RM/main/HOURSunlockall.lua"))()' then
		loadstring(game:HttpGet("https://raw.githubusercontent.com/NICKISBAD/RM/main/HOURSunlockall.lua"))()
	elseif _G.Script == 'loadstring(game:HttpGet("https://raw.githubusercontent.com/NICKISBAD/A-Stereotypical-Obby/main/Main.lua"))()' then
		loadstring(game:HttpGet("https://raw.githubusercontent.com/NICKISBAD/A-Stereotypical-Obby/main/Main.lua"))()	
	elseif _G.Script == "ABD Game" then
		for i,v in pairs(game.Workspace:GetChildren()) do
				if v:IsA"Tool" then
					local a = v:WaitForChild"Handle" or v:WaitForChild"Cover"
					a.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
			end
		end
	elseif _G.Script == "PlayerESP" then
		for i,v in pairs(game.Players:GetChildren()) do
			if v:IsA("Player") and v.Name ~= game.Players.LocalPlayer.Name then
				local bi = Instance.new("BillboardGui", v.Character.HumanoidRootPart)
				bi.Name = "ESP"
				bi.StudsOffset = Vector3.new(0, v.Character.HumanoidRootPart.Size.Y + 6, 0)
                bi.Adornee = v.Character.HumanoidRootPart
                bi.AlwaysOnTop = true
                bi.Size = UDim2.new(0, 200, 0, 50)
                
                local esplabelfr = Instance.new("TextLabel")
                esplabelfr.Name = "esplabelfr"
                esplabelfr.Text = v.Name
                esplabelfr.Size = UDim2.new(1, 0, 0, 70)
                esplabelfr.BackgroundColor3 = Color3.new(0, 0, 0)
                esplabelfr.TextColor3 = TextColor or Color3.fromRGB(255, 255, 255)
                esplabelfr.BackgroundTransparency = 1
                esplabelfr.TextStrokeTransparency = 0
                esplabelfr.TextStrokeColor3 = Color3.new(0, 0, 0)
                esplabelfr.TextSize = 12
                esplabelfr.TextScaled = false
                esplabelfr.Font = "Arcade"
                esplabelfr.Parent = bi
			end
		end
	else
		ScriptViewer.Text = "Error: No Script Entered!"
		ScriptViewer.TextColor = Color3.fromRGB(255,0,0)
		wait(3)
		ScriptViewer.Text = "Scripts appear here"
		ScriptViewer.TextColor = Color3.fromRGB(255,255,255)
	end
end)

UICorner_7.Parent = Execute

Execute_2.Name = "Execute"
Execute_2.Parent = WindowFarm
Execute_2.BackgroundColor3 = Color3.new(0.0784314, 0.0784314, 0.0784314)
Execute_2.BorderColor3 = Color3.new(0, 0, 0)
Execute_2.BorderSizePixel = 0
Execute_2.Position = UDim2.new(0.743764162, 0, 0.860869586, 0)
Execute_2.Size = UDim2.new(0, 103, 0, 25)
Execute_2.Font = Enum.Font.Arcade
Execute_2.Text = "Copy Script"
Execute_2.TextColor3 = Color3.new(1, 1, 1)
Execute_2.TextSize = 14
Execute_2.MouseButton1Click:Connect(function()
	setclipboard(_G.Script)
	ScriptViewer.Text = "Script Copied"
	wait(5)
	ScriptViewer.Text = "Current Script: Nil"
end)

UICorner_8.Parent = Execute_2


UICorner_9.Parent = ScriptViewer

TOPLABEL.Name = "TOPLABEL"
TOPLABEL.Parent = topbarframe
TOPLABEL.BackgroundColor3 = Color3.new(0.164706, 0.164706, 0.164706)
TOPLABEL.BackgroundTransparency = 0.5
TOPLABEL.BorderColor3 = Color3.new(0, 0, 0)
TOPLABEL.BorderSizePixel = 0
TOPLABEL.Position = UDim2.new(0.0298507456, 0, 0, 0)
TOPLABEL.Size = UDim2.new(0, 132, 0, 25)
TOPLABEL.Font = Enum.Font.Arcade
TOPLABEL.Text = "Nick's Shortcuts"
TOPLABEL.TextColor3 = Color3.new(1, 1, 1)
TOPLABEL.TextScaled = true
TOPLABEL.TextSize = 14
TOPLABEL.TextStrokeTransparency = 0
TOPLABEL.TextWrapped = true


UICorner_10.Parent = ReopenButton
