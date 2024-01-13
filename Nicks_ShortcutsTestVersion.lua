repeat wait() until game:IsLoaded()

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
local HOURSallchars = Instance.new("TextButton")
local AStereotypicalObby = Instance.new("TextButton")
local Execute = Instance.new("TextButton")
local antiafk = Instance.new("TextButton")
local ABDGame = Instance.new("TextButton")
local PlayerESP = Instance.new("TextButton")
local RGD = Instance.new("TextButton")
local UICorner_7 = Instance.new("UICorner")
local Execute_2 = Instance.new("TextButton")
local UICorner_8 = Instance.new("UICorner")
local ScriptViewer = Instance.new("TextLabel")
local UICorner_9 = Instance.new("UICorner")
local TOPLABEL = Instance.new("TextLabel")
local ReopenButton = Instance.new("TextButton")
local RSpy = Instance.new("TextButton")
local UTMM = Instance.new("TextButton")
local UICorner_10 = Instance.new("UICorner")
local heavenstand = Instance.new("TextButton")
local Dexv2 = Instance.new("TextButton")

_G.Script = nil

local Player = game:GetService("Players").LocalPlayer
local PlrChar = Player.Character
local PlayerHum = PlrChar:WaitForChild("Humanoid")
local PlrRoot = PlrChar:WaitForChild("HumanoidRootPart")

local function SA()
    local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
    local Window = OrionLib:MakeWindow({Name = "Nick's SA gui", HidePremium = false, SaveConfig = true, ConfigFolder = "SA", IntroText = "Stands Awakened"})
    local Tab = Window:MakeTab({Name = "main", Icon = "rbxassetid://4483345998", PremiumOnly = false})

	function addLabel(toolName)
	    local label = Tab:AddLabel(toolName .. ", (" .. tostring(os.time()) .. ")")
	end
	
	local toolsToTrack = {
	    "DIO's Skull 2",
	    "Pot Platinum's Diary",
	    "Uncanny Key",
	    "Canny Key",
	    "Camera",
	    "Ice Shard",
	}


game:GetService("Workspace").ChildAdded:Connect(function(child)
    	if child:IsA("Tool") and table.find(toolsToTrack, child.Name) then
        	addLabel(child.Name)
    	end
	end)
end

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

local function CreateButton(Name, loadstring2, SVText)
    local Button = Instance.new("TextButton")
    
    Button.Name = Name
    Button.Parent = ScriptList
    Button.BackgroundColor3 = Color3.new(0.0941176, 0.0941176, 0.0941176)
    Button.BorderColor3 = Color3.new(0.156863, 0.156863, 0.156863)
    Button.BorderSizePixel = 2
    Button.Size = UDim2.new(0, 105, 0, 24)
    Button.Font = Enum.Font.Arcade
    Button.Text = Name
    Button.TextColor3 = Color3.new(1, 1, 1)
    Button.TextScaled = true
    Button.TextSize = 12
    Button.TextWrapped = true
    Button.MouseButton1Click:Connect(function()
	    _G.Script = loadstring2
	    ScriptViewer.Text = SVText
	    Button.BackgroundColor3 = Color3.fromRGB(0, 68, 255)
    end)

    ScriptList.CanvasSize = ScriptList.CanvasSize + UDim2.new(0, 0, 0, 30)
end

InfiniteYield.Name = "InfiniteYield"
InfiniteYield.Parent = ScriptList
InfiniteYield.BackgroundColor3 = Color3.fromRGB(240, 202, 34)
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
DarkDex.BackgroundColor3 = Color3.fromRGB(240, 202, 34)
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

Dexv2.Name = "Dexv2"
Dexv2.Parent = ScriptList
Dexv2.BackgroundColor3 = Color3.fromRGB(240, 202, 34)
Dexv2.BorderColor3 = Color3.new(0.156863, 0.156863, 0.156863)
Dexv2.BorderSizePixel = 2
Dexv2.Position = UDim2.new(0, 0, 0.12608695, 0)
Dexv2.Size = UDim2.new(0, 105, 0, 24)
Dexv2.Font = Enum.Font.Arcade
Dexv2.Text = "Dark Dex V2"
Dexv2.TextColor3 = Color3.new(1, 1, 1)
Dexv2.TextScaled = true
Dexv2.TextSize = 19
Dexv2.TextWrapped = true
Dexv2.MouseButton1Click:Connect(function()
	_G.Script = 'Dexv2'
	ScriptViewer.Text = "Dex Explorer but better (laggy)"
end)

RSpy.Name = "RSpy"
RSpy.Parent = ScriptList
RSpy.BackgroundColor3 = Color3.fromRGB(240, 202, 34)
RSpy.BorderColor3 = Color3.new(0.156863, 0.156863, 0.156863)
RSpy.BorderSizePixel = 2
RSpy.Position = UDim2.new(0, 0, 0.12608695, 0)
RSpy.Size = UDim2.new(0, 105, 0, 24)
RSpy.Font = Enum.Font.Arcade
RSpy.Text = "Remote Spy"
RSpy.TextColor3 = Color3.new(1, 1, 1)
RSpy.TextScaled = true
RSpy.TextSize = 19
RSpy.TextWrapped = true
RSpy.MouseButton1Click:Connect(function()
	_G.Script = 'loadstring(game:HttpGet("https://raw.githubusercontent.com/REDzHUB/RS/main/SimpleSpyMobile"))()'
	ScriptViewer.Text = "Remote Spy"
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
	ResidenceMassacre.BackgroundColor3 = Color3.fromRGB(0, 68, 255)
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
	ALegacyTime.BackgroundColor3 = Color3.fromRGB(0, 68, 255)
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
	UTBossBattles.BackgroundColor3 = Color3.fromRGB(0, 68, 255)
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
	ABDGame.BackgroundColor3 = Color3.fromRGB(0, 68, 255)
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
	HOURSallchars.BackgroundColor3 = Color3.fromRGB(0, 68, 255)
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
	AStereotypicalObby.BackgroundColor3 = Color3.fromRGB(0, 68, 255)
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
	PlayerESP.BackgroundColor3 = Color3.fromRGB(0, 68, 255)
end)

local function Decompiler()
	local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

_G.Debug = false

if not _G.Debug then
    _G.Window = OrionLib:MakeWindow({Name = "Beat your meat", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})
elseif _G.Debug then
	_G.Window = OrionLib:MakeWindow({Name = "DebugMode", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})
end

local Tab = _G.Window:MakeTab({
	Name = "Tab 1",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})


function SimpleDecompile(module)
    local Module = require(module)
    local DecompiledModule = ""

    for i, v in pairs(Module) do
        if typeof(v) == "table" then
            for j, z in pairs(v) do
                if typeof(z) == "table" then
                    for c, b in pairs(z) do
                        if typeof(b) == "function" then
                            DecompiledModule = DecompiledModule .. "\n" .. tostring(c) .. " = function"
                        else
                            DecompiledModule = DecompiledModule .. "\n" .. tostring(c) .. " = " .. tostring(b)
                        end
                    end
                elseif typeof(z) == "function" then
                    DecompiledModule = DecompiledModule .. "\n" .. tostring(j) .. " = function"
                else
                    DecompiledModule = DecompiledModule .. "\n" .. tostring(j) .. " = " .. tostring(z)
                end
            end
        elseif typeof(v) == "function" then
            DecompiledModule = DecompiledModule .. "\n" .. tostring(i) .. " = function"
        else
            DecompiledModule = DecompiledModule .. "\n" .. tostring(i) .. " = " .. tostring(v)
        end
    end

    return DecompiledModule
end


local CopyDecompiled = false

Tab:AddTextbox({
	Name = "Enter Script Path",
	TextDisappearing = true,
	Callback = function(v)
		local a = (v)
		local b = SimpleDecompile(a)
		print(b)
		if CopyDecompiled then
			setclipboard(b)
		end
	end
})

local Tab2 = _G.Window:MakeTab({
	Name = "Script Locations",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})


Tab2:AddToggle({
	Name = "Copy decompiled script",
	Default = false,
	Callback = function(v)
		CopyDecompiled = v
	end
})

local function Label(text, text2)
	Tab2:AddButton({
		Name = text,
		Callback = function()
			local a = text2
			local b = SimpleDecompile(a)
			print(b)
			if CopyDecompiled then
				setclipboard(b)
			end
		end
	})
end

for i,v in pairs(game.ReplicatedStorage:GetDescendants()) do
	if v:IsA"ModuleScript" then
		Label(v.Name, v)
	end
end

for i,v in pairs(game.ReplicatedFirst:GetDescendants()) do
	if v:IsA"ModuleScript" then
		Label(v.Name, v)
	end
end

for i,v in pairs(game.Workspace:GetDescendants()) do
	if v:IsA"ModuleScript" then
	    Label(v.Name, v)
	end
end
end

RGD.Name = "Randomly Generated Droids"
RGD.Parent = ScriptList
RGD.BackgroundColor3 = Color3.new(0.0941176, 0.0941176, 0.0941176)
RGD.BorderColor3 = Color3.new(0.156863, 0.156863, 0.156863)
RGD.BorderSizePixel = 2
RGD.Position = UDim2.new(0, 0, 0.378260881, 0)
RGD.Size = UDim2.new(0, 105, 0, 24)
RGD.Font = Enum.Font.Arcade
RGD.Text = "Randomly Generated Droids"
RGD.TextColor3 = Color3.new(1, 1, 1)
RGD.TextScaled = true
RGD.TextSize = 12
RGD.TextWrapped = true
RGD.MouseButton1Click:Connect(function()
	_G.Script = 'loadstring(game:HttpGet("https://raw.githubusercontent.com/NICKISBAD/Randomly-Generated-Droids/main/V1.1"))()'
	ScriptViewer.Text = "Randomly Generated Droids"
	RGD.BackgroundColor3 = Color3.fromRGB(0, 68, 255)
end)

antiafk.Name = "AntiAfk"
antiafk.Parent = ScriptList
antiafk.BackgroundColor3 = Color3.new(0.0941176, 0.0941176, 0.0941176)
antiafk.BorderColor3 = Color3.new(0.156863, 0.156863, 0.156863)
antiafk.BorderSizePixel = 2
antiafk.Size = UDim2.new(0, 105, 0, 24)
antiafk.Font = Enum.Font.Arcade
antiafk.Text = "ANTI AFK"
antiafk.TextColor3 = Color3.new(1, 1, 1)
antiafk.TextScaled = true
antiafk.TextSize = 12
antiafk.TextWrapped = true
antiafk.MouseButton1Click:Connect(function()
	_G.Script = 'AntiAFK'
	ScriptViewer.Text = "AntiAFK"
	antiafk.BackgroundColor3 = Color3.fromRGB(0, 68, 255)
end)

heavenstand.Name = "HS"
heavenstand.Parent = ScriptList
heavenstand.BackgroundColor3 = Color3.new(0.0941176, 0.0941176, 0.0941176)
heavenstand.BorderColor3 = Color3.new(0.156863, 0.156863, 0.156863)
heavenstand.BorderSizePixel = 2
heavenstand.Size = UDim2.new(0, 105, 0, 24)
heavenstand.Font = Enum.Font.Arcade
heavenstand.Text = "Heaven Stand"
heavenstand.TextColor3 = Color3.new(1, 1, 1)
heavenstand.TextScaled = true
heavenstand.TextSize = 12
heavenstand.TextWrapped = true
heavenstand.MouseButton1Click:Connect(function()
	_G.Script = 'loadstring(game:HttpGet("https://raw.githubusercontent.com/SmellLikeHacker/MyEdit/main/Hub"))()'
	ScriptViewer.Text = "Heaven Stand"
	heavenstand.BackgroundColor3 = Color3.fromRGB(0, 68, 255)
end)

local function spychat()

	enabled = true --chat "/spy" to toggle!
	spyOnMyself = false --if true will check your messages too
	public = false --if true will chat the logs publicly (fun, risky)
	publicItalics = true --if true will use /me to stand out
	privateProperties = { --customize private logs
		Color = Color3.fromRGB(255,0,0); 
		Font = Enum.Font.Arcade;
		TextSize = 14;
	}
	
	local StarterGui = game:GetService("StarterGui")
	local Players = game:GetService("Players")
	local player = Players.LocalPlayer or Players:GetPropertyChangedSignal("LocalPlayer"):Wait() or Players.LocalPlayer
	local saymsg = game:GetService("ReplicatedStorage"):WaitForChild("DefaultChatSystemChatEvents"):WaitForChild("SayMessageRequest")
	local getmsg = game:GetService("ReplicatedStorage"):WaitForChild("DefaultChatSystemChatEvents"):WaitForChild("OnMessageDoneFiltering")
	local instance = (_G.chatSpyInstance or 0) + 1
	_G.chatSpyInstance = instance
	
	local function onChatted(p,msg)
		if _G.chatSpyInstance == instance then
			if p==player and msg:lower():sub(1,4)=="/spy" then
				enabled = not enabled
				wait(0.3)
				privateProperties.Text = "{SPY "..(enabled and "EN" or "DIS").."ABLED}"
				StarterGui:SetCore("ChatMakeSystemMessage",privateProperties)
			elseif enabled and (spyOnMyself==true or p~=player) then
				msg = msg:gsub("[\n\r]",''):gsub("\t",' '):gsub("[ ]+",' ')
				local hidden = true
				local conn = getmsg.OnClientEvent:Connect(function(packet,channel)
					if packet.SpeakerUserId==p.UserId and packet.Message==msg:sub(#msg-#packet.Message+1) and (channel=="All" or (channel=="Team" and public==false and Players[packet.FromSpeaker].Team==player.Team)) then
						hidden = false
					end
				end)
				wait(1)
				conn:Disconnect()
				if hidden and enabled then
					if public then
						saymsg:FireServer((publicItalics and "/me " or '').."{SPY} [".. p.Name .."]: "..msg,"All")
					else
						privateProperties.Text = "{SPY} [".. p.Name .."]: "..msg
						StarterGui:SetCore("ChatMakeSystemMessage",privateProperties)
					end
				end
			end
		end
	end
	
	for _,p in ipairs(Players:GetPlayers()) do
		p.Chatted:Connect(function(msg) onChatted(p,msg) end)
	end
	Players.PlayerAdded:Connect(function(p)
		p.Chatted:Connect(function(msg) onChatted(p,msg) end)
	end)
	privateProperties.Text = "{SPY "..(enabled and "EN" or "DIS").."ABLED}"
	StarterGui:SetCore("ChatMakeSystemMessage",privateProperties)
	if not player.PlayerGui:FindFirstChild("Chat") then wait(3) end
	local chatFrame = player.PlayerGui.Chat.Frame
	chatFrame.ChatChannelParentFrame.Visible = true
	chatFrame.ChatBarParentFrame.Position = chatFrame.ChatChannelParentFrame.Position+UDim2.new(UDim.new(),chatFrame.ChatChannelParentFrame.Size.Y)
end

local function Roll()
	local args = {
	    [1] = "Cousin",
	    [2] = "Buy"
	}
	
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end

CreateButton("UTMM all weapons", 'loadstring(game:HttpGet("https://raw.githubusercontent.com/NICKISBAD/The-roblox-utmm-kit-destroyer/main/The%20UTMM%20KIT%20destroyer.lua",true))()', "UTMM KIT Game")
CreateButton("UTMM all weapons 2", "UTMM2", "UTMM All weapons 2")
CreateButton("CFrame Copy", "TPSCRIPT", "CFRAME Changer Script Maker")
CreateButton("Mobile Fly", "MFLY", "Mobile Fly GUI")
CreateButton("Beat The Robloxians", 'loadstring(game:HttpGet("https://raw.githubusercontent.com/NICKISBAD/UT-BB-Docs/main/Some.lua"))()', "Beat the Robloxians")
CreateButton("Mobile Shiftlock" , 'loadstring(game:HttpGet("https://pastefy.app/uPPNGgf2/raw"))()', "mobile shiftlock")
CreateButton("ChatSpy", "spychat", "spy on private chats")
CreateButton("Script Decompiler", "Decom", "Module Script Decompiler")
CreateButton("Stands Awakening", "SA", "Item Lister")
CreateButton("Hours Unlock Gamepasses", "HOURS", "Unlock all GPs")
CreateButton("AimLock GUI Pack", 'loadstring(game:HttpGet("https://raw.githubusercontent.com/NICKISBAD/Aimlockstuff/main/AimlockGUIPack.lua"))()', "Aimlock GUI Pack")
CreateButton("Hitbox Expander", "HBE", "Hitbox Expander")
CreateButton("Blox Fruits AutoSpin", "SPIN", "Blox Fruits AutoRoll")

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
	elseif _G.Script == 'loadstring(game:HttpGet("https://raw.githubusercontent.com/NICKISBAD/RM/main/HOURSunlockall.lua"))()' then
		loadstring(game:HttpGet("https://raw.githubusercontent.com/NICKISBAD/RM/main/HOURSunlockall.lua"))()
	elseif _G.Script == 'loadstring(game:HttpGet("https://raw.githubusercontent.com/NICKISBAD/A-Stereotypical-Obby/main/Main.lua"))()' then
		loadstring(game:HttpGet("https://raw.githubusercontent.com/NICKISBAD/A-Stereotypical-Obby/main/Main.lua"))()	
	elseif _G.Script == 'loadstring(game:HttpGet("https://raw.githubusercontent.com/REDzHUB/RS/main/SimpleSpyMobile"))()' then
	    loadstring(game:HttpGet("https://raw.githubusercontent.com/REDzHUB/RS/main/SimpleSpyMobile"))()
	elseif _G.Script == 'loadstring(game:HttpGet("https://raw.githubusercontent.com/NICKISBAD/Randomly-Generated-Droids/main/V1.1"))()' then
		loadstring(game:HttpGet("https://raw.githubusercontent.com/NICKISBAD/Randomly-Generated-Droids/main/V1.1"))()
	elseif _G.Script == 'loadstring(game:HttpGet("https://raw.githubusercontent.com/SmellLikeHacker/MyEdit/main/Hub"))()' then
        loadstring(game:HttpGet("https://raw.githubusercontent.com/SmellLikeHacker/MyEdit/main/Hub"))()
	elseif _G.Script == 'loadstring(game:HttpGet("https://raw.githubusercontent.com/NICKISBAD/The-roblox-utmm-kit-destroyer/main/The%20UTMM%20KIT%20destroyer.lua",true))()' then
	    loadstring(game:HttpGet("https://raw.githubusercontent.com/NICKISBAD/The-roblox-utmm-kit-destroyer/main/The%20UTMM%20KIT%20destroyer.lua",true))()
	elseif _G.Script == 'loadstring(game:HttpGet("https://raw.githubusercontent.com/NICKISBAD/UT-BB-Docs/main/Some.lua"))()' then
		loadstring(game:HttpGet("https://raw.githubusercontent.com/NICKISBAD/UT-BB-Docs/main/Some.lua"))()
	elseif _G.Script == 'loadstring(game:HttpGet("https://pastefy.app/uPPNGgf2/raw"))()' then
		loadstring(game:HttpGet("https://pastefy.app/uPPNGgf2/raw"))()
	elseif _G.Script == "spychat" then
		spychat()
	elseif _G.Script == "HBE" then
		_G.HeadSize = 100
		_G.Disabled = true
		 
		game:GetService('RunService').RenderStepped:connect(function()
			if _G.Disabled then
				for i,v in next, game:GetService('Players'):GetPlayers() do
					if v.Name ~= game:GetService('Players').LocalPlayer.Name then
						pcall(function()
							v.Character.HumanoidRootPart.Size = Vector3.new(_G.HeadSize,_G.HeadSize,_G.HeadSize)
							v.Character.HumanoidRootPart.Transparency = 0.7
							v.Character.HumanoidRootPart.BrickColor = BrickColor.new("Really blue")
							v.Character.HumanoidRootPart.Material = "Neon"
							v.Character.HumanoidRootPart.CanCollide = false
						end)
					end
				end
			end
		end)
	elseif _G.Script == "SA" then
		SA()
	elseif _G.Script == "Dexv2" then
		getgenv().Key = "Bash"
		loadstring(game:HttpGet("https://raw.githubusercontent.com/Hosvile/Refinement/main/MC%3AIY%20Dex",true))()
	elseif _G.Script == "HOURS" then
		getrenv()._G.Premium = true
		getrenv()._G.Cheats = true 
		game.Players.LocalPlayer.PlayerGui.AllGui.Menu.CheatRight.Visible = true
		game.Players.LocalPlayer.PlayerGui.AllGui.Menu.CheatLeft.Visible = true
	elseif _G.Script == "Decom" then
		Decompiler()
	elseif _G.Script == 'MFLY' then
        loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\40\39\104\116\116\112\115\58\47\47\103\105\115\116\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\109\101\111\122\111\110\101\89\84\47\98\102\48\51\55\100\102\102\57\102\48\97\55\48\48\49\55\51\48\52\100\100\100\54\55\102\100\99\100\51\55\48\47\114\97\119\47\101\49\52\101\55\52\102\52\50\53\98\48\54\48\100\102\53\50\51\51\52\51\99\102\51\48\98\55\56\55\48\55\52\101\98\51\99\53\100\50\47\97\114\99\101\117\115\37\50\53\50\48\120\37\50\53\50\48\102\108\121\37\50\53\50\48\50\37\50\53\50\48\111\98\102\108\117\99\97\116\111\114\39\41\44\116\114\117\101\41\41\40\41\10\10")()
	elseif _G.Script == "UTMM2" then
		for i,v in pairs(game.Players.LocalPlayer.Weapons:GetChildren()) do
			if v.Value == false then
				v.Value = true
			end
		end
	elseif _G.Script == "TPSCRIPT" then
		setclipboard(tostring(game.Players.LocalPlayer.Character.PrimaryPart.CFrame))
	elseif _G.Script == "AntiAFK" then
		local GC = getconnections or get_signal_cons
        if GC then
            for i,v in pairs(GC(game.Players.LocalPlayer.Idled)) do
                if v["Disable"] then
                    v["Disable"](v)
                elseif v["Disconnect"] then
                    v["Disconnect"](v)
                end
            end
        end
        game.Players.LocalPlayer.Idled:Connect(function()
            local VU = game.VirtualUser
            VU:CaptureController()
            VU:ClickButton2(Vector2.new())
        end)
	elseif _G.Script == "ABD Game" then
		for i,v in pairs(game.Workspace:GetDescendants()) do
				if v:IsA"Tool" then
					local a = v.Handle or v:FindFirstChildWhichIsA("Part") or v:FindFirstChildWhichIsA("BasePart") or v:FindFirstChildWhichIsA("MeshPart")
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
	elseif _G.Script == 'loadstring(game:HttpGet("https://raw.githubusercontent.com/NICKISBAD/Aimlockstuff/main/AimlockGUIPack.lua"))()' then
		loadstring(game:HttpGet("https://raw.githubusercontent.com/NICKISBAD/Aimlockstuff/main/AimlockGUIPack.lua"))()
	elseif _G.Script == "SPIN" then
		Roll()
	elseif _G.Script == nil then
		ScriptViewer.Text = "Error: No Script Entered!"
		ScriptViewer.TextColor3 = Color3.new(255,0,0)
		wait(3)
		ScriptViewer.Text = "Scripts appear here"
		ScriptViewer.TextColor3 = Color3.new(255,255,255)
	end
end)

UICorner_7.Parent = Execute


CreateButton("Sirius", 'https://sirius.menu/sirius', "Sirius Free")

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
	if _G.Script ~= nil then
	    setclipboard(_G.Script)
	    ScriptViewer.Text = "Script Copied"
	    ScriptViewer.TextColor3 = Color3.new(0,255,0)
	    wait(5)
	    ScriptViewer.Text = "Current Script: Nil"
	    ScriptViewer.TextColor3 = Color3.new(255,255,255)
	elseif _G.Script == nil then
		ScriptViewer.Text = "Script is Nil!"
		ScriptViewer.TextColor3 = Color3.new(255,0,0)
		wait(3)
		ScriptViewer.TextColor3 = Color3.new(255,255,255)
	end
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
TOPLABEL.Text = "Nick's Shortcuts v1.0.0"
TOPLABEL.TextColor3 = Color3.new(1, 1, 1)
TOPLABEL.TextScaled = true
TOPLABEL.TextSize = 14
TOPLABEL.TextStrokeTransparency = 0
TOPLABEL.TextWrapped = true


UICorner_10.Parent = ReopenButton

local function UpdateVersion(Version)
	TOPLABEL.Text = "Nick's Shortcuts v"..Version
	game.StarterGui:SetCore("SendNotification",{
		Title = "Loaded Latest Version",
		Text = "Loaded Nick's Shortcuts v"..Version
	})
end

wait(2)

UpdateVersion("1.2")
