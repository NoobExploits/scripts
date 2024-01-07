local AlSploitApi = loadstring(game:HttpGet("https://raw.githubusercontent.com/AlSploit/AlSploit/main/Api"))()

local LocalPlayer = game.Players.LocalPlayer

task.spawn(function()
	if not makefolder then
		LocalPlayer:Kick("Your executor does not support AlSploit. Switch to Delta or Fluxus")
	end

	if not writefile then
		LocalPlayer:Kick("Your executor does not support AlSploit. Switch to Delta or Fluxus")
	end

	if not readfile then
		LocalPlayer:Kick("Your executor does not support AlSploit. Switch to Delta or Fluxus")
	end

	if not isfile then
		LocalPlayer:Kick("Your executor does not support AlSploit. Switch to Delta or Fluxus")
	end
end)

local Camera = game:GetService("Workspace").CurrentCamera

local CollectionService = game:GetService("CollectionService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local StatisticsService = game:GetService("Stats")
local UserInputService = game:GetService("UserInputService")
local TextChatService = game:GetService("TextChatService")
local LightingService = game:GetService("Lighting")
local TweenService = game:GetService("TweenService")
local HttpService = game:GetService("HttpService")
local RunService = game:GetService("RunService")
local Players = game.Players:GetPlayers()

local AlSploit = Instance.new("ScreenGui")
local ContainerFrame = Instance.new("Frame")
local UIListLayoutContainerFrame = Instance.new("UIListLayout")

local DefaultLayoutOrder = 0

AlSploit.Name = "AlSploit"
AlSploit.Parent = LocalPlayer:WaitForChild("PlayerGui")
AlSploit.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
AlSploit.ResetOnSpawn = false

ContainerFrame.Name = "ContainerFrame"
ContainerFrame.Parent = AlSploit
ContainerFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ContainerFrame.BackgroundTransparency = 1.000
ContainerFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
ContainerFrame.BorderSizePixel = 0
ContainerFrame.Position = UDim2.new(0, 0, 0.0480132438, 0)
ContainerFrame.Size = UDim2.new(1, 0, 1, 0)
ContainerFrame.Visible = false

UIListLayoutContainerFrame.Parent = ContainerFrame
UIListLayoutContainerFrame.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayoutContainerFrame.Padding = UDim.new(0, 50)
UIListLayoutContainerFrame.FillDirection = Enum.FillDirection.Horizontal
UIListLayoutContainerFrame.HorizontalAlignment = Enum.HorizontalAlignment.Center

local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
local UIStroke = Instance.new("UIStroke")
local UICorner = Instance.new("UICorner")
local Open = Instance.new("ImageButton")

UIStroke.Parent = Open
UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
UIStroke.Thickness = 2
UIStroke.Color = Color3.new(0.635294, 0.313725, 1)

Open.Name = "Open"
Open.Parent = AlSploit
Open.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Open.BorderColor3 = Color3.fromRGB(0, 0, 0)
Open.BorderSizePixel = 0
Open.Position = UDim2.new(0.963096738, 0, 0.351765305, 0)
Open.Size = UDim2.new(0.0329854637, 0, 0.0837961882, 0)
Open.Image = "rbxassetid://15428841655"

UICorner.CornerRadius = UDim.new(0, 6)
UICorner.Parent = Open

UIAspectRatioConstraint.Parent = Open
UIAspectRatioConstraint.AspectRatio = 1

local Blur = Instance.new("BlurEffect")

Blur.Parent = LightingService
Blur.Enabled = false
Blur.Size = 16

task.spawn(function()
	Open.Activated:Connect(function()
		ContainerFrame.Visible = not ContainerFrame.Visible

		Blur.Enabled = not Blur.Enabled
	end)
end)

function CreateWindow(Name)
	local Window = Instance.new("Frame")
	local Decoration = Instance.new("Frame")
	local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
	local Decoration_2 = Instance.new("Frame")
	local UIAspectRatioConstraint_2 = Instance.new("UIAspectRatioConstraint")
	local Settings = Instance.new("ImageButton")
	local UIAspectRatioConstraint_3 = Instance.new("UIAspectRatioConstraint")
	local UICorner = Instance.new("UICorner")
	local ToggleContainer = Instance.new("Frame")
	local UIListLayout = Instance.new("UIListLayout")
	local Title = Instance.new("TextLabel")
	local UIAspectRatioConstraint_12 = Instance.new("UIAspectRatioConstraint")
	local UITextSizeConstraint_5 = Instance.new("UITextSizeConstraint")
	local UIAspectRatioConstraint_13 = Instance.new("UIAspectRatioConstraint")
	local UIAspectRatioConstraint_11 = Instance.new("UIAspectRatioConstraint")

	Window.Name = Name .. "Window"
	Window.Parent = ContainerFrame
	Window.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
	Window.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Window.BorderSizePixel = 0
	Window.Position = UDim2.new(0.172071472, 0, 0.027300043, 0)
	Window.Size = UDim2.new(0.154698864, 0, 0.0580125935, 0)

	Decoration.Name = "Decoration"
	Decoration.Parent = Window
	Decoration.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
	Decoration.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Decoration.BorderSizePixel = 0
	Decoration.Position = UDim2.new(0, 0, 0.588235319, 0)
	Decoration.Size = UDim2.new(1, 0, 0.588235319, 0)

	UIAspectRatioConstraint.Parent = Decoration
	UIAspectRatioConstraint.AspectRatio = 9.350

	Decoration_2.Name = "Decoration"
	Decoration_2.Parent = Window
	Decoration_2.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
	Decoration_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Decoration_2.BorderSizePixel = 0
	Decoration_2.Position = UDim2.new(0, 0, 1.17647064, 0)
	Decoration_2.Size = UDim2.new(1, 0, 0.0588235296, 0)

	UIAspectRatioConstraint_2.Parent = Decoration_2
	UIAspectRatioConstraint_2.AspectRatio = 93.500

	Settings.Name = "Settings"
	Settings.Parent = Window
	Settings.BackgroundTransparency = 1.000
	Settings.Position = UDim2.new(0.817474544, 0, 0.263130188, 0)
	Settings.Size = UDim2.new(0.133689836, 0, 0.735294104, 0)
	Settings.ZIndex = 2
	Settings.Image = "rbxassetid://3926307971"
	Settings.ImageColor3 = Color3.fromRGB(207, 207, 207)
	Settings.ImageRectOffset = Vector2.new(324, 124)
	Settings.ImageRectSize = Vector2.new(36, 36)

	UIAspectRatioConstraint_3.Parent = Settings

	UICorner.Parent = Window

	ToggleContainer.Name = "ToggleContainer"
	ToggleContainer.Parent = Window
	ToggleContainer.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ToggleContainer.BackgroundTransparency = 1.000
	ToggleContainer.BorderColor3 = Color3.fromRGB(0, 0, 0)
	ToggleContainer.BorderSizePixel = 0
	ToggleContainer.Position = UDim2.new(0, 0, 1.2352941, 0)
	ToggleContainer.Size = UDim2.new(1, 0, 14.7058821, 0)

	UIListLayout.Parent = ToggleContainer
	UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder

	Title.Name = "Title"
	Title.Parent = Window
	Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Title.BackgroundTransparency = 1.000
	Title.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Title.BorderSizePixel = 0
	Title.Position = UDim2.new(0, 0, 0.0294117648, 0)
	Title.Size = UDim2.new(0.641711235, 0, 1.17647064, 0)
	Title.Font = Enum.Font.FredokaOne
	Title.Text = Name
	Title.TextColor3 = Color3.fromRGB(207, 207, 207)
	Title.TextScaled = true
	Title.TextSize = 25.000
	Title.TextWrapped = true

	UIAspectRatioConstraint_12.Parent = Title
	UIAspectRatioConstraint_12.AspectRatio = 3.000

	UITextSizeConstraint_5.Parent = Title
	UITextSizeConstraint_5.MaxTextSize = 25

	UIAspectRatioConstraint_13.Parent = Window
	UIAspectRatioConstraint_13.AspectRatio = 5.500

	UIAspectRatioConstraint_11.Parent = ToggleContainer
	UIAspectRatioConstraint_11.AspectRatio = 0.374

	return ToggleContainer
end

function CreateToggle(Parent, Name, DefaultValue, Callback)
	local Toggle = Instance.new("TextButton")
	local DropdownButton = Instance.new("ImageButton")
	local UIAspectRatioConstraint_4 = Instance.new("UIAspectRatioConstraint")
	local UIAspectRatioConstraint_5 = Instance.new("UIAspectRatioConstraint")
	local UITextSizeConstraint = Instance.new("UITextSizeConstraint")

	local Checker = {["Enabled"] = false}

	local LayoutOrder = 0

	function Checker:Toggle(Bool)
		Bool = Bool or (not Checker["Enabled"])
		Checker["Enabled"] = Bool

		if not Bool then
			spawn(function()
				Callback(false)
				Toggle.TextColor3 = Color3.fromRGB(226, 226, 226)
			end)
		else
			spawn(function()
				Callback(true)
				Toggle.TextColor3 = Color3.new(0.635294, 0.313725, 1)
			end)
		end
	end

	if DefaultValue == true then
		Checker:Toggle()
	end

	task.spawn(function()
		Toggle.Activated:Connect(function()
			Checker:Toggle()	
		end)
	end)	

	Toggle.Name = Name .. "Toggle"
	Toggle.Parent = Parent
	Toggle.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
	Toggle.BackgroundTransparency = 0.050
	Toggle.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Toggle.BorderSizePixel = 0
	Toggle.Position = UDim2.new(-0.278074861, 0, -0.0118694361, 0)
	Toggle.Size = UDim2.new(1, 0, 0.109999999, 0)
	Toggle.AutoButtonColor = false
	Toggle.Font = Enum.Font.FredokaOne
	Toggle.Text = "    " .. Name
	Toggle.TextColor3 = Color3.fromRGB(218, 218, 218)
	Toggle.TextScaled = false
	Toggle.TextSize = 19.000
	Toggle.TextWrapped = true
	Toggle.TextXAlignment = Enum.TextXAlignment.Left
	Toggle.LayoutOrder = DefaultLayoutOrder + 5

	LayoutOrder = Toggle.LayoutOrder
	DefaultLayoutOrder = LayoutOrder

	DropdownButton.Name = "DropdownButton"
	DropdownButton.Parent = Toggle
	DropdownButton.BackgroundTransparency = 1.000
	DropdownButton.LayoutOrder = 3
	DropdownButton.Position = UDim2.new(0.742407143, 0, 0.230918333, 0)
	DropdownButton.Size = UDim2.new(0.14973262, 0, 0.5090909, 0)
	DropdownButton.ZIndex = 2
	DropdownButton.Image = "rbxassetid://3926307971"
	DropdownButton.ImageRectOffset = Vector2.new(324, 364)
	DropdownButton.ImageRectSize = Vector2.new(36, 36)

	UIAspectRatioConstraint_4.Parent = DropdownButton
	UIAspectRatioConstraint_4.AspectRatio = 1.000

	UIAspectRatioConstraint_5.Parent = Toggle
	UIAspectRatioConstraint_5.AspectRatio = 3.400

	UITextSizeConstraint.Parent = Toggle
	UITextSizeConstraint.MaxTextSize = 19

	return Toggle, DropdownButton, LayoutOrder
end

function CreateMiniToggle(Parent, Name, DefaultValue, LayoutOrder, Callback)
	local MiniToggle = Instance.new("TextButton")
	local UIAspectRatioConstraint_6 = Instance.new("UIAspectRatioConstraint")
	local UITextSizeConstraint_2 = Instance.new("UITextSizeConstraint")

	local Checker = {["Enabled"] = false}

	function Checker:Toggle(Bool)
		Bool = Bool or (not Checker["Enabled"])
		Checker["Enabled"] = Bool

		if not Bool then
			spawn(function()
				Callback(false)
				MiniToggle.TextColor3 = Color3.fromRGB(226, 226, 226)
			end)
		else
			spawn(function()
				Callback(true)
				MiniToggle.TextColor3 = Color3.new(0.635294, 0.313725, 1)
			end)
		end
	end

	if DefaultValue == true then
		Checker:Toggle()
	end

	task.spawn(function()
		MiniToggle.Activated:Connect(function()
			Checker:Toggle()	
		end)
	end)	

	MiniToggle.Name = Name .. "MiniToggle"
	MiniToggle.Parent = Parent
	MiniToggle.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
	MiniToggle.BackgroundTransparency = 0.050
	MiniToggle.BorderColor3 = Color3.fromRGB(0, 0, 0)
	MiniToggle.BorderSizePixel = 0
	MiniToggle.Position = UDim2.new(0, 0, 0.660000026, 0)
	MiniToggle.Size = UDim2.new(1, 0, 0.0599999987, 0)
	MiniToggle.AutoButtonColor = false
	MiniToggle.Font = Enum.Font.FredokaOne
	MiniToggle.Text = Name
	MiniToggle.TextColor3 = Color3.fromRGB(218, 218, 218)
	MiniToggle.TextScaled = true
	MiniToggle.TextSize = 14.000
	MiniToggle.TextWrapped = true
	MiniToggle.LayoutOrder = LayoutOrder

	UIAspectRatioConstraint_6.Parent = MiniToggle
	UIAspectRatioConstraint_6.AspectRatio = 6.233

	UITextSizeConstraint_2.Parent = MiniToggle
	UITextSizeConstraint_2.MaxTextSize = 14

	return MiniToggle
end

function CreateSlider(Parent, Name, DefaultValue, MaxValue, MinValue, LayoutOrder, Callback)
	local UIStroke_1  = Instance.new("UIStroke")
	local UIStroke_2  = Instance.new("UIStroke")
	local Slider = Instance.new("Frame")
	local Slider_2 = Instance.new("Frame")
	local UICorner_2 = Instance.new("UICorner")
	local Bar = Instance.new("TextButton")
	local UICorner_3 = Instance.new("UICorner")
	local UIAspectRatioConstraint_7 = Instance.new("UIAspectRatioConstraint")
	local UITextSizeConstraint_3 = Instance.new("UITextSizeConstraint")
	local TextLabel = Instance.new("TextLabel")
	local UIAspectRatioConstraint_8 = Instance.new("UIAspectRatioConstraint")
	local UITextSizeConstraint_4 = Instance.new("UITextSizeConstraint")
	local UIAspectRatioConstraint_9 = Instance.new("UIAspectRatioConstraint")
	local UIAspectRatioConstraint_10 = Instance.new("UIAspectRatioConstraint")

	local UIListLayout_2 = Instance.new("UIListLayout")
	local UIAspectRatioConstraint_14 = Instance.new("UIAspectRatioConstraint")

	Slider.Name = Name .. "Slider"
	Slider.Parent = Parent
	Slider.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
	Slider.BackgroundTransparency = 0.050
	Slider.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Slider.BorderSizePixel = 0
	Slider.Position = UDim2.new(0, 0, 0.170000002, 0)
	Slider.Size = UDim2.new(1, 0, 0.140000001, 0)
	Slider.LayoutOrder = LayoutOrder

	Slider_2.Name = "Slider"
	Slider_2.Parent = Slider
	Slider_2.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
	Slider_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Slider_2.BorderSizePixel = 0
	Slider_2.Position = UDim2.new(0.229946524, 0, 0.267857134, 0)
	Slider_2.Size = UDim2.new(0.534759343, 0, 0.0857142881, 0)	

	UICorner_2.Parent = Slider_2

	Bar.Name = "Bar"
	Bar.Parent = Slider_2
	Bar.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
	Bar.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Bar.BorderSizePixel = 0
	Bar.Position = UDim2.new(0.219999999, 0, -1.5, 0)
	Bar.Size = UDim2.new(0.0599999987, 0, 4.16666651, 0)
	Bar.Font = Enum.Font.SourceSans
	Bar.Text = ""
	Bar.TextColor3 = Color3.fromRGB(0, 0, 0)
	Bar.TextScaled = true
	Bar.TextSize = 14.000
	Bar.TextWrapped = true
	Bar.AutoButtonColor = false

	UICorner_3.Parent = Bar

	UIAspectRatioConstraint_7.Parent = Bar
	UIAspectRatioConstraint_7.AspectRatio = 0.240

	UITextSizeConstraint_3.Parent = Bar
	UITextSizeConstraint_3.MaxTextSize = 14

	TextLabel.Parent = Slider_2
	TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel.BackgroundTransparency = 1.000
	TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
	TextLabel.BorderSizePixel = 0
	TextLabel.Position = UDim2.new(-0.100000001, 0, 5, 0)
	TextLabel.Size = UDim2.new(1.20000005, 0, 2.5, 0)
	TextLabel.Font = Enum.Font.FredokaOne
	TextLabel.Text = Name .. ": " .. DefaultValue
	TextLabel.TextColor3 = Color3.new(0.894118, 0.894118, 0.894118)
	TextLabel.TextScaled = true
	TextLabel.TextSize = 16.000
	TextLabel.TextWrapped = true

	UIAspectRatioConstraint_8.Parent = TextLabel
	UIAspectRatioConstraint_8.AspectRatio = 8.000

	UITextSizeConstraint_4.Parent = TextLabel
	UITextSizeConstraint_4.MaxTextSize = 16

	UIAspectRatioConstraint_9.Parent = Slider_2
	UIAspectRatioConstraint_9.AspectRatio = 16.667

	UIAspectRatioConstraint_10.Parent = Slider
	UIAspectRatioConstraint_10.AspectRatio = 2.671


	UIListLayout_2.Parent = ContainerFrame
	UIListLayout_2.FillDirection = Enum.FillDirection.Horizontal
	UIListLayout_2.HorizontalAlignment = Enum.HorizontalAlignment.Center
	UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout_2.Padding = UDim.new(0, 100)

	UIAspectRatioConstraint_14.Parent = ContainerFrame
	UIAspectRatioConstraint_14.AspectRatio = 2.063

	UIStroke_1.Parent = Slider_2
	UIStroke_1.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	UIStroke_1.Thickness = 2
	UIStroke_1.Color = Color3.new(0.635294, 0.313725, 1)

	UIStroke_2.Parent = Bar
	UIStroke_2.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	UIStroke_2.Thickness = 2
	UIStroke_2.Color = Color3.new(0.635294, 0.313725, 1)	

	local Debounce = true

	local function Snap(Number, Factor)
		if Factor == 0 then
			return Number
		else
			return math.floor(Number / Factor + 0.5) * Factor

		end
	end

	task.spawn(function()
		Bar.MouseButton1Down:Connect(function()
			Debounce = false
		end)

		UserInputService.InputEnded:connect(function(Input)
			if Input.UserInputType == Enum.UserInputType.MouseButton1 then
				Debounce = true
			end
		end)
	end)

	task.spawn(function()
		local BarPosition = Bar.Position

		local TweenInformation = TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0)
		local PositionTween = TweenService:Create(Bar, TweenInformation, {Position = UDim2.new(DefaultValue / MaxValue, 0, BarPosition.Y.Scale, BarPosition.Y.Offset)})

		PositionTween:Play()
	end)

	task.spawn(function()
		repeat
			task.wait()

			if Debounce == false then
				local MousePosition = UserInputService:GetMouseLocation().X
				local BarPosition = Bar.Position
				local FrameSize = Slider.AbsoluteSize.X
				local FramePosition = Slider.AbsolutePosition.X

				local Position = Snap((MousePosition - FramePosition) / FrameSize, 0.01)

				local Percentage = math.clamp(Position, 0, 1)

				local TweenInformation = TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0)
				local PositionTween = TweenService:Create(Bar, TweenInformation, {Position = UDim2.new(Percentage, 0, BarPosition.Y.Scale, BarPosition.Y.Offset)})

				PositionTween:Play()

				TextLabel.Text = Name .. ": " .. math.round(Percentage * MaxValue)

				Callback(math.round(Percentage * MaxValue))
			end
		until not Slider
	end)

	return Slider
end

function CreateFlyHud()
	local Main = Instance.new("Frame")
	local UICorner = Instance.new("UICorner")
	local NumberDisplay = Instance.new("TextLabel")
	local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
	local DisplayBackground = Instance.new("Frame")
	local UICorner_2 = Instance.new("UICorner")
	local Display = Instance.new("Frame")
	local UICorner_3 = Instance.new("UICorner")
	local UIStroke = Instance.new("UIStroke")

	UIStroke.Parent = Main
	UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	UIStroke.Color = Color3.new(0.635294, 0.313725, 1)
	UIStroke.Thickness = 3

	task.spawn(function()
		repeat
			task.wait(0.001)

			UIStroke.Color = Color3.fromHSV(tick() % 5 / 5, 1, 1)
		until not game
	end)

	Main.Name = "Main"
	Main.Parent = AlSploit
	Main.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	Main.BackgroundTransparency = 0.600
	Main.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Main.BorderSizePixel = 0
	Main.Position = UDim2.new(0.3935, 0, 0.7, 0)
	Main.Size = UDim2.new(0, 230, 0, 60)
	Main.ZIndex = 3

	UICorner.CornerRadius = UDim.new(0, 16)
	UICorner.Parent = Main

	NumberDisplay.Name = "NumberDisplay"
	NumberDisplay.Parent = Main
	NumberDisplay.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	NumberDisplay.BackgroundTransparency = 1.000
	NumberDisplay.BorderColor3 = Color3.fromRGB(0, 0, 0)
	NumberDisplay.BorderSizePixel = 0
	NumberDisplay.Position = UDim2.new(0.117391303, 0, 0.100000001, 0)
	NumberDisplay.Size = UDim2.new(0.766666651, 0, 0.294117659, 0)
	NumberDisplay.ZIndex = 3
	NumberDisplay.Font = Enum.Font.FredokaOne
	NumberDisplay.Text = "2.5"
	NumberDisplay.TextColor3 = Color3.fromRGB(255, 255, 255)
	NumberDisplay.TextSize = 30.000
	NumberDisplay.TextWrapped = true

	UIAspectRatioConstraint.Parent = NumberDisplay
	UIAspectRatioConstraint.AspectRatio = 9.992

	DisplayBackground.Name = "DisplayBackground"
	DisplayBackground.Parent = Main
	DisplayBackground.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
	DisplayBackground.BorderColor3 = Color3.fromRGB(0, 0, 0)
	DisplayBackground.BorderSizePixel = 0
	DisplayBackground.Position = UDim2.new(0.173913315, 0, 0.633333325, 0)
	DisplayBackground.Size = UDim2.new(0.651159286, 0, 0.150980309, 0)
	DisplayBackground.ZIndex = 4

	UICorner_2.Parent = DisplayBackground

	Display.Name = "Display"
	Display.Parent = DisplayBackground
	Display.BackgroundColor3 = Color3.fromRGB(170, 0, 255)
	Display.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Display.BorderSizePixel = 0
	Display.Position = UDim2.new(0, 0, 0, 0)
	Display.Size = UDim2.new(0, 0, 1, 0)
	Display.ZIndex = 5

	UICorner_3.Parent = Display

	return Main, NumberDisplay, Display
end

function CreateOutline(Player)
	if IsAlive(Player) then
		local BillBoard = Instance.new("BillboardGui")

		BillBoard.Size = UDim2.new(4, 0, 4, 0)
		BillBoard.AlwaysOnTop = true
		BillBoard.Name = "Esp"

		local Frame = Instance.new("Frame")

		Frame.Size = UDim2.new(1, 0, 1.5, 0)
		Frame.Position = UDim2.new(0, 0, -Player.Character.LowerTorso.Size.Y / 2 or -Player.PrimaryPart.Size.Y / 2, 0)
		Frame.BackgroundTransparency = 1

		local Stroke = Instance.new("UIStroke")

		Stroke.Thickness = 1.5
		Stroke.Color = Color3.new(0.635294, 0.313725, 1)
		Stroke.Transparency = 0

		local UICorner = Instance.new("UICorner")

		UICorner.Parent = Frame
		UICorner.CornerRadius = UDim.new(0, 3)

		Stroke.Parent = Frame
		Frame.Parent = BillBoard
		BillBoard.Parent = Player.Character.HumanoidRootPart
	end
end

local SaveFileName = "AlSploitPublicUpdate14"

local IsLoaded = false
local Settings

function DeleteUnwantedFiles()
	for i = 1, 1000 do
		if isfile("AlSploitBedwars/" .. "AlSploitPublicUpdate" .. i) and not SaveFileName:find(i) then
			deletefile("AlSploitBedwars/" .. "AlSploitPublicUpdate" .. i)
		end
	end	
end

function CreateSettingsFile()
	local Settings = {
		ChestStealer = {Value = true},
		InfiniteJump = {Value = true},
		DamageBoost = {Value = true},
		ChatSpammer = {Value = false, Speed = 50},
		FpsBooster = {Value = false},
		Indicators = {Value = true},
		AutoToxic = {Value = false},
		GalaxySky = {Value = true},
		PlayAgain = {Value = true},
		Invisible = {Value = false},
		AimAssist = {Value = true},
		Scaffold = {Value = false},
		KillAura = {Value = true, Range = 20, CustomAnimation = true, ToolCheck = false},
		Velocity = {Value = true},	
		AntiVoid = {Value = true, Transparency = 0.65},
		AutoBank = {Value = true},
		HighJump = {Value = false},
		PlayerTp = {Value = true},
		AutoKit = {Value = true},
		AutoBuy = {Value = true},
		Sprint = {Value = true},
		NoFall = {Value = true},
		Aimbot = {Value = true, ToolCheck = false},
		Speed = {Value = true, Speed = 23},
		Reach = {Value = true},
		Nuker = {Value = true, Range = 30, BreakOres = true},
		BedTp = {Value = true},
		Cape = {Value = true},
		Esp = {Value = true},
		Fov = {Value = false, Fov = 100}
	}

	FirstTime = false

	local JsonEncodeSettings = HttpService:JSONEncode(Settings)

	if writefile and makefolder then
		makefolder("AlSploitBedwars")
		writefile("AlSploitBedwars/" .. SaveFileName, JsonEncodeSettings)
	end

	if not writefile or makefolder then
		Settings = {
			ChestStealer = {Value = true},
			InfiniteJump = {Value = true},
			DamageBoost = {Value = true},
			ChatSpammer = {Value = false, Speed = 50},
			FpsBooster = {Value = false},
			Indicators = {Value = true},
			AutoToxic = {Value = false},
			GalaxySky = {Value = true},
			PlayAgain = {Value = true},
			Invisible = {Value = false},
			AimAssist = {Value = true},
			Scaffold = {Value = true},
			KillAura = {Value = true, Range = 20, CustomAnimation = true, ToolCheck = false},
			Velocity = {Value = true},	
			AntiVoid = {Value = true, Transparency = 0.65},
			AutoBank = {Value = true},
			HighJump = {Value = false},
			PlayerTp = {Value = true},
			AutoKit = {Value = true},
			AutoBuy = {Value = true},
			Sprint = {Value = true},
			NoFall = {Value = true},
			Aimbot = {Value = true, ToolCheck = false},
			Speed = {Value = true, Speed = 23},
			Reach = {Value = true},
			Nuker = {Value = true, Range = 30, BreakOres = true},
			BedTp = {Value = true},
			Cape = {Value = true},
			Esp = {Value = true},
			Fov = {Value = false, Fov = 100}
		}
	end
end

function CheckFirstTime()
	if readfile and isfile and isfile("AlSploitBedwars/" .. SaveFileName) then
		return false
	end
	if readfile and isfile and not isfile("AlSploitBedwars/" .. SaveFileName) then
		return true
	end
end

function SaveSettings()	
	if not FirstTime then
		local JsonEncodeSettings = HttpService:JSONEncode(Settings)

		if writefile then
			writefile("AlSploitBedwars/" .. SaveFileName, JsonEncodeSettings)
		end
	end
end

function LoadSettings()
	if readfile and isfile and isfile("AlSploitBedwars/" .. SaveFileName) then
		Settings = HttpService:JSONDecode(readfile("AlSploitBedwars/" .. SaveFileName))
	end
end

task.spawn(function()
	if CheckFirstTime() == true then
		CreateSettingsFile()
	end
end)

task.spawn(function()
	DeleteUnwantedFiles()

	if readfile and isfile then
		LoadSettings()
	end
end)

task.spawn(function()
	repeat
		task.wait(1)

		if writefile then
			SaveSettings()
		end

	until not game
end)

task.wait(2)

local KnitClient = debug.getupvalue(require(LocalPlayer.PlayerScripts.TS.knit).setup, 6)
local Client = require(ReplicatedStorage.TS.remotes).default.Client
local OrigC0 = ReplicatedStorage.Assets.Viewmodel.RightHand.RightWrist.C0

local CollectionServiceDiamondGuardian = CollectionService:GetTagged("DiamondGuardian")
local CollectionServiceTreeOrb = CollectionService:GetTagged("treeOrb")
local CollectionServiceBlocks = CollectionService:GetTagged("block")
local CollectionServiceChest = CollectionService:GetTagged("chest")
local CollectionServiceNps = CollectionService:GetTagged("BedwarsItemShop")

local NearestPlayer, NearestPlayerDistance = nil, nil

local KillAuraAnimationCooldown = true
local JumpCooldown = false
local AntiVoidPart = nil
local DamageBoost = false
local ZephyrOrb = 0

local Animations = {
	["Slow"] = {
		{CFrame = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(220), math.rad(100), math.rad(100)),Time = 0.25},
		{CFrame = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), Time = 0.25}
	}
}

local Bedwars = AlSploitApi.Bedwars

local HannahPromptTriggerRemote = AlSploitApi.HannahPromptTriggerRemote
local ResetCharacterRemote = AlSploitApi.ResetCharacterRemote
local ChestGiveItemRemote = AlSploitApi.ChestGiveItemRemote
local ChestGetItemRemote = AlSploitApi.ChestGetItemRemote
local BlockPlacingRemote = AlSploitApi.BlockPlacingRemote
local SendMessageRemote = AlSploitApi.SendMessageRemote
local ProjectileRemote = AlSploitApi.ProjectileRemote
local PlayAgainRemote = AlSploitApi.PlayAgainRemote
local EquipItemRemote = AlSploitApi.EquipItemRemote
local GroundHitRemote = AlSploitApi.GroundHitRemote
local SwordController = AlSploitApi.SwordController
local ProjectileMeta = AlSploitApi.ProjectileMeta
local KillauraRemote = AlSploitApi.KillauraRemote
local TreeOrbRemote = AlSploitApi.TreeOrbRemote
local MinerRemote = AlSploitApi.MinerRemote
local ItemTable = AlSploitApi.ItemTable

local ZephyrController = AlSploitApi.ZephyrController
local FovController = AlSploitApi.FovController

function FindNearestDiamondGuardian()
	local NearestDiamondGuardianDistance = math.huge
	local NearestDiamondGuardian

	for i, v in next, CollectionServiceDiamondGuardian do		
		if v.PrimaryPart then
			local Distance = (v.PrimaryPart.Position - LocalPlayer.Character.HumanoidRootPart.Position).Magnitude

			if Distance < NearestDiamondGuardianDistance then
				NearestDiamondGuardianDistance = Distance
				NearestDiamondGuardian = v
			end
		end
	end

	return NearestDiamondGuardian, NearestDiamondGuardianDistance
end

function CollectEnderChestItems()
	local EnderChest = ReplicatedStorage.Inventories:FindFirstChild(LocalPlayer.Name .. "_personal")

	for i, v in pairs(EnderChest:GetChildren()) do
		if v:IsA("Accessory") and (v.Name == "emerald" or v.Name == "iron" or v.Name == "diamond" or v.Name == "gold") then
			ChestGetItemRemote:InvokeServer(EnderChest, v)
		end
	end
end

function SecureEnderChestItems()
	local EnderChest = ReplicatedStorage.Inventories:FindFirstChild(LocalPlayer.Name .. "_personal")
	local Inventory = ReplicatedStorage.Inventories:FindFirstChild(LocalPlayer.Name)

	if Inventory then
		for i, v in pairs(Inventory:GetChildren()) do
			if v:IsA("Accessory") and (v.Name == "emerald" or v.Name == "iron" or v.Name == "diamond" or v.Name == "gold") then
				ChestGiveItemRemote:InvokeServer(EnderChest, v)
			end
		end
	end	
end

function TweenToNearestPlayer()
	if IsAlive(LocalPlayer) then
		local NearestPlayer = FindNearestPlayer()

		if NearestPlayer then
			local TweenTime = AlSploitApi.TweenNumbers.PlayerTp
			local TweenInformation = TweenInfo.new(TweenTime, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0)	
			local PlayerTpTween = TweenService:Create(LocalPlayer.Character.HumanoidRootPart, TweenInformation, {CFrame = NearestPlayer.Character.HumanoidRootPart.CFrame + Vector3.new(0, 2, 0)})


			PlayerTpTween:Play()
		end
	end
end

function FindPetrifiedPlayer()
	for i, v in next, game.Workspace:GetChildren() do		
		if v:GetAttribute("PetrifyId") then
			return v
		end
	end
end

function FindNearestTreeOrb()
	local NearestTreeOrbDistance = math.huge
	local NearestTreeOrb

	for i, v in next, CollectionServiceTreeOrb do		
		if v:FindFirstChild("Spirit") then
			local Distance = (v.Spirit.Position - LocalPlayer.Character.HumanoidRootPart.Position).Magnitude

			if Distance < NearestTreeOrbDistance then
				NearestTreeOrbDistance = Distance
				NearestTreeOrb = v
			end
		end
	end

	return NearestTreeOrb, NearestTreeOrbDistance
end

function TweenToNearestBed()
	if IsAlive(LocalPlayer) then
		local NearestBed = FindNearestBed()

		if NearestBed then						
			local TweenTime = AlSploitApi.TweenNumbers.BedTp

			local TweenInformation = TweenInfo.new(TweenTime, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0)	
			local BedTpTween = TweenService:Create(LocalPlayer.Character.HumanoidRootPart, TweenInformation, {CFrame = NearestBed.CFrame + Vector3.new(0, 10, 0)})

			BedTpTween:Play()
		end
	end
end

function FindNearestPlayer(MaxDistance)
	local NearestPlayerDistance = MaxDistance or math.huge
	local NearestPlayer

	for i, v in next, Players do
		if IsAlive(v) and v ~= LocalPlayer and IsAlive(LocalPlayer) and v.Team ~= LocalPlayer.Team then
			local Distance = (v.Character.HumanoidRootPart.Position - LocalPlayer.Character.HumanoidRootPart.Position).Magnitude

			if Distance < NearestPlayerDistance then
				NearestPlayerDistance = Distance
				NearestPlayer = v				
			end
		end
	end

	return NearestPlayer, NearestPlayerDistance
end

function GetServerPosition(Position)
	local X = math.round(Position.X / 3)
	local Y = math.round(Position.Y / 3)
	local Z = math.round(Position.Z / 3)

	return Vector3.new(X, Y, Z)
end

function FpsBoostTextures()
	for i, v in next, CollectionServiceBlocks do
		if v:GetAttribute("PlacedByUserId") == 0 then
			v.Material = Enum.Material.SmoothPlastic

			for i2, v2 in next, (v:GetDescendants()) do
				if v2:IsA("BasePart") then
					v2.Material = Enum.Material.SmoothPlastic
				end
			end
		end
	end
end

function ShootProjectile(Item, Projectile)
	local NearestPlayer = NearestPlayer

	if NearestPlayer then
		local Args = {
			[1] = Item,
			[2] = Projectile,
			[3] = Projectile,
			[4] = NearestPlayer.Character.HumanoidRootPart.Position,
			[5] = NearestPlayer.Character.HumanoidRootPart.Position,
			[6] = Vector3.new(0, -25, 0),
			[7] = HttpService:GenerateGUID(true),
			[8] = {["drawDurationSeconds"] = 0.96, ["shotId"] = HttpService:GenerateGUID(false)},
			[9] = (game.Workspace:GetServerTimeNow() - 0.11)
		}

		ProjectileRemote:InvokeServer(unpack(Args))
	end
end

function FindNearestBed(MinDistance)
	local MinDistance = MinDistance or math.huge
	local NearestBed = nil

	for i, v in next, (game.Workspace:GetDescendants()) do
		if v.Name:lower() == "bed" and v:FindFirstChild("Covers") and v:FindFirstChild("Covers").BrickColor ~= LocalPlayer.Team.TeamColor then
			local Distance = (v.Position - LocalPlayer.Character.HumanoidRootPart.Position).Magnitude

			if Distance < MinDistance then
				MinDistance = Distance
				NearestBed = v
			end
		end
	end

	return NearestBed
end

function FindNearestNpc(MaxDistance)
	local MinDistance = MaxDistance or math.huge
	local NearestNpc = nil

	for i, v in next, CollectionServiceNps do
		local Distance = (v.Position - LocalPlayer.Character.HumanoidRootPart.Position).Magnitude

		if Distance < MinDistance then
			MinDistance = Distance
			NearestNpc = v		
		end
	end

	return NearestNpc
end

function FindNearestOre(MaxDistance)
	local MinDistance = MaxDistance or math.huge
	local NearestOre = nil

	for i, v in next, CollectionServiceBlocks do
		if v.Name == "iron_ore" then
			local Distance = (v.Position - LocalPlayer.Character.HumanoidRootPart.Position).Magnitude

			if Distance < MinDistance then
				MinDistance = Distance
				NearestOre = v
			end
		end
	end

	return NearestOre
end

function TouchingGround()
	if IsAlive(LocalPlayer) then
		local Parameters = RaycastParams.new()
		Parameters.FilterType = Enum.RaycastFilterType.Include
		Parameters.FilterDescendantsInstances = {CollectionServiceBlocks}

		local IsTouchingFloor = false

		for x = 1, 1 do
			local Origin = LocalPlayer.Character.HumanoidRootPart.Position + Vector3.new(x, 0, 0)

			local Raycast = game.Workspace:Raycast(Origin, Vector3.new(0, -2.5, 0), Parameters)
			if Raycast and Raycast.Instance then
				IsTouchingFloor = true			
			end
		end	

		return IsTouchingFloor
	end
end

local IsNetworkOwner = isnetworkowner or (gethiddenproperty and function(Part)
	if gethiddenproperty(Part, "NetworkOwnershipRule") == Enum.NetworkOwnership.Manual then 
		return false
	end

	return true
end) or function() return true end

function SetCollisions(Value)
	if Value == true then
		if IsAlive(LocalPlayer) then
			for i, v in next, (LocalPlayer.Character:GetDescendants()) do
				if v:IsA("BasePart") then
					v.CanCollide = true
					v.CanTouch = true
				end			
			end

			LocalPlayer.Character.HumanoidRootPart.Size = Vector3.new(1.9, 2, 1)
			LocalPlayer.Character.HumanoidRootPart.Transparency = 1
			LocalPlayer.Character.Humanoid.CameraOffset = Vector3.new(0, 0, 0)
		end
	end

	if Value == false then
		for i, v in next, (LocalPlayer.Character:GetDescendants()) do
			if v:IsA("BasePart") and v ~= LocalPlayer.Character.PrimaryPart and v.CanCollide then
				v.CanCollide = false
				v.CanTouch = false
			end
		end

		LocalPlayer.Character.Humanoid.CameraOffset = Vector3.new(0, 3 / -2, 0)	
		LocalPlayer.Character.HumanoidRootPart.Transparency = 0.6
		LocalPlayer.Character.HumanoidRootPart.Size = Vector3.new(2, 3, 1.1)
	end
end

function GetMatchState()
	return Bedwars.ClientHandlerStore:getState().Game.matchState
end

function GetInventory(Player)
	if not Player then 
		return {Items = {}, Armor = {}}
	end

	local Success, Return = pcall(function() 
		return require(ReplicatedStorage.TS.inventory["inventory-util"]).InventoryUtil.getInventory(Player)
	end)

	if not Success then 
		return {Items = {}, Armor = {}}
	end
	if Player.Character and Player.Character:FindFirstChild("InventoryFolder") then 
		local InvFolder = Player.Character:FindFirstChild("InventoryFolder").Value
		if not InvFolder then return Return end
		for i, v in next, Return do 
			for i2, v2 in next, v do 
				if typeof(v2) == 'table' and v2.itemType then
					v2.instance = InvFolder:FindFirstChild(v2.itemType)
				end
			end
			if typeof(v) == 'table' and v.itemType then
				v.instance = InvFolder:FindFirstChild(v.itemType)
			end
		end
	end

	return Return
end

function DecimalRound(Number, DigitsPast0)
	DigitsPast0 = math.pow(10, DigitsPast0 or 0)

	Number = Number * DigitsPast0

	if Number >= 0 then 
		Number = math.floor(Number + 0.5) 
	else 
		Number = math.ceil(Number - 0.5) 
	end

	return Number / DigitsPast0
end

function HashFunction(Value)
	return {value = Value}
end

function GetQueueType()
	local State = Bedwars.ClientHandlerStore:getState()

	return State.Game.queueType or "bedwars_test"
end

function KillHumanoid(Time)
	task.wait(Time)

	if LocalPlayer:FindFirstChild("leaderstats") and LocalPlayer.leaderstats:FindFirstChild("Bed") then
		if LocalPlayer.leaderstats.Bed.Value == "✅" then
			LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):ChangeState(Enum.HumanoidStateType.Dead)

			ResetCharacterRemote:FireServer()
		end
	end
end

function SwitchItem(Item)
	if LocalPlayer.Character.HandInvItem.Value ~= Item then
		Client:Get(EquipItemRemote):CallServerAsync({hand = Item})
	end	
end

function PlaceBlock(Position, Block)
	BlockPlacingRemote:InvokeServer({["blockType"] = Block, ["blockData"] = 0,["position"] = Position})
end

function Invisible()
	if GetMatchState() ~= 0 and IsAlive(LocalPlayer) then 
		local Animation = Instance.new("Animation")
		local Id = 11335949902
		Animation.AnimationId = "rbxassetid://".. Id

		local PlayerAnimation = LocalPlayer.Character.Humanoid.Animator:LoadAnimation(Animation)

		if PlayerAnimation then
			LocalPlayer.Character.Humanoid.CameraOffset = Vector3.new(0, 3 / -2, 0)
			LocalPlayer.Character.HumanoidRootPart.Size = Vector3.new(2, 3, 1.1)

			PlayerAnimation.Priority = Enum.AnimationPriority.Action4
			PlayerAnimation.Looped = false

			task.spawn(function()
				repeat
					task.wait()

					PlayerAnimation:Play(1 / 999999, 999999, 1 / 999999)
				until Settings.Invisible.Value == false

				SetCollisions(true)
				Animation:Destroy()
			end)	
		end
	end	
end

function SetCamera(Camera)
	game.Workspace.CurrentCamera.CameraSubject = Camera
end

function GetSword()
	local HighestDamage, Sword = -math.huge, nil

	for i, v in next, GetInventory(LocalPlayer).items do 
		local SwordMeta = ItemTable[v.itemType].sword

		if SwordMeta then
			local SwordDamage = SwordMeta.damage / SwordMeta.attackSpeed

			if SwordDamage > HighestDamage then
				HighestDamage = SwordDamage
				Sword = v
			end
		end
	end

	return Sword
end

function IsMoving()	
	local Position = LocalPlayer.Character.HumanoidRootPart.Position

	task.wait(0.001)

	if IsAlive(LocalPlayer) and LocalPlayer.Character.HumanoidRootPart.Position ~= Position then
		Position = LocalPlayer.Character.HumanoidRootPart.Position
		return true
	end

	if IsAlive(LocalPlayer) and LocalPlayer.Character.HumanoidRootPart.Position == Position then
		Position = LocalPlayer.Character.HumanoidRootPart.Position
		return false
	end
end

task.spawn(function()
	repeat task.wait() until GetMatchState() ~= 0

	local ZephyrUpdate = ZephyrController.updateJump

	ZephyrController.updateJump = function(self, orb, ...)
		if IsAlive(LocalPlayer) and orb then
			ZephyrOrb = 1
		end

		if not IsAlive(LocalPlayer) or not orb then
			ZephyrOrb = 0
		end

		return ZephyrUpdate(self, orb, ...)
	end
end)

function AutoBank()
	local NearestNpc = FindNearestNpc(30)

	if NearestNpc and Settings.AutoBank.Value == true then
		CollectEnderChestItems()
	end

	if not NearestNpc and Settings.AutoBank.Value == true then
		SecureEnderChestItems()
	end

	if Settings.AutoBank.Value == false then
		CollectEnderChestItems()
	end
end

function GetSpeed()
	local Speed = 0

	if IsAlive(LocalPlayer) then 

		local SpeedDamageBoost =  LocalPlayer.Character:GetAttribute("SpeedBoost")

		if SpeedDamageBoost and SpeedDamageBoost > 1 then 
			Speed = Speed + (20 * (SpeedDamageBoost - 1))
		end

		if LocalPlayer.Character:GetAttribute("SpeedPieBuff") then 
			Speed = Speed + 5
		end

		if LocalPlayer.Character:GetAttribute("GrimReaperChannel") then 
			Speed = Speed + 20
		end

		local Armor = GetInventory().Armor[3]

		if type(Armor) ~= "table" then Armor = {itemType = ""} end

		if Armor.itemType == "Speed_boots" then 
			Speed = Speed + 25
		end

		if ZephyrOrb ~= 0 then
			Speed = Speed + 19
		end

		if DamageBoost == true then
			Speed = Speed + 18
		end

		Speed = ((Speed + Settings.Speed.Speed) - 20.1)
	end

	return Speed
end

function GetBlock()
	for i, v in next, GetInventory(LocalPlayer).items do
		if ItemTable[v.itemType].block ~= nil then
			return v.itemType
		end
	end
end

function IsAlive(Player)
	Player = Player or LocalPlayer

	if not Player.Character then return false end
	if not Player.Character:FindFirstChild("Humanoid") then return false end
	if Player.Character:GetAttribute("Health") <= 0 then return false end
	if not Player.Character.PrimaryPart then return false end	

	return true
end	

function GetItem(Name)
	for i, v in next, (GetInventory(LocalPlayer).items) do
		if v.itemType:find(Name) then
			return v, i
		end
	end	

	return nil
end

function AutoKit()
	local FindPetrifiedPlayer = FindPetrifiedPlayer()
	local NearestTreeOrb = FindNearestTreeOrb()

	task.spawn(function()
		if IsAlive(LocalPlayer) and NearestTreeOrb then
			if TreeOrbRemote:CallServer({treeOrbSecret = NearestTreeOrb:GetAttribute("TreeOrbSecret")}) then			
				NearestTreeOrb:Destroy()

				CollectionService:RemoveTag(NearestTreeOrb, "treeOrb")
			end
		end
	end)

	task.spawn(function()
		if IsAlive(LocalPlayer) and NearestPlayer then
			HannahPromptTriggerRemote:CallServer({victimEntity = NearestPlayer.Character, ["user"] = LocalPlayer})
		end
	end)

	task.spawn(function()
		if FindPetrifiedPlayer then
			MinerRemote:SendToServer({
				petrifyId = FindPetrifiedPlayer:GetAttribute("PetrifyId")
			})
		end		
	end)
end

function GetBow()
	local BestBow, BestBowDamage = nil, 0

	for i, v in next, (GetInventory(LocalPlayer).items) do
		if v.itemType:find("bow") then 
			local Item = ItemTable[v.itemType].projectileSource
			local Arrow = Item.projectileType("arrow")	
			local Damage = ProjectileMeta[Arrow].combat.damage

			if Damage > BestBowDamage then
				BestBowDamage = Damage
				BestBow = v
			end
		end
	end	

	return BestBow, BestBowDamage
end

task.spawn(function()
	local function KillAuraHitMobs()	
		if IsAlive(LocalPlayer) and Settings.KillAura.Value == true then
			local DiamondGuardian, DiamondGuardianDistance = FindNearestDiamondGuardian()

			if DiamondGuardian and DiamondGuardianDistance < Settings.KillAura.Range then
				if GetMatchState() ~= 0 and DiamondGuardian and DiamondGuardian.PrimaryPart then
					local LocalPlayerCharacter = LocalPlayer.Character
					local EnemyCharacter = DiamondGuardian

					local LocalPlayerHumanoidRootPart = LocalPlayerCharacter.HumanoidRootPart 
					local EnemyHumanoidRootPart = EnemyCharacter.PrimaryPart

					local Magnitude = (LocalPlayerHumanoidRootPart.Position - EnemyHumanoidRootPart.Position).Magnitude

					if Magnitude <= Settings.KillAura.Range then
						local Sword = GetSword()

						if Sword then
							task.spawn(function()
								if KillAuraAnimationCooldown and Settings.KillAura.CustomAnimation == true then
									KillAuraAnimationCooldown = false

									for i, v in next, Animations["Slow"] do
										TweenService:Create(Camera.Viewmodel.RightHand.RightWrist, TweenInfo.new(v.Time), {C0 = OrigC0 * v.CFrame}):Play()
										task.wait(v.Time - 0.01)
									end

									KillAuraAnimationCooldown = true
								end
							end)		

							local SelfPosition = LocalPlayerHumanoidRootPart.Position + (20 > 14 and (LocalPlayerHumanoidRootPart.Position - EnemyHumanoidRootPart.Position).Magnitude > 14.4 and (CFrame.lookAt(LocalPlayerHumanoidRootPart.Position, EnemyHumanoidRootPart.Position).lookVector * ((LocalPlayerHumanoidRootPart.Position - EnemyHumanoidRootPart.Position).Magnitude - 14)) or Vector3.zero)

							if Settings.KillAura.ToolCheck == false then
								SwitchItem(Sword.tool)

								KillauraRemote:FireServer({
									weapon = Sword.tool,
									chargedAttack = {chargeRatio = 0},
									entityInstance = DiamondGuardian,
									validate = {
										raycast = {
											cameraPosition = HashFunction(LocalPlayerHumanoidRootPart.Position), 
											cursorDirection = HashFunction(CFrame.new(SelfPosition, EnemyHumanoidRootPart.Position).lookVector)
										},
										targetPosition = HashFunction(EnemyHumanoidRootPart.Position),
										selfPosition = HashFunction(SelfPosition)
									}
								})
							end

							if Settings.KillAura.ToolCheck == true then
								if GetItem(Sword.itemType) then
									KillauraRemote:FireServer({
										weapon = Sword.tool,
										chargedAttack = {chargeRatio = 0},
										entityInstance = DiamondGuardian,
										validate = {
											raycast = {
												cameraPosition = HashFunction(LocalPlayerHumanoidRootPart.Position), 
												cursorDirection = HashFunction(CFrame.new(SelfPosition, EnemyHumanoidRootPart.Position).lookVector)
											},
											targetPosition = HashFunction(EnemyHumanoidRootPart.Position),
											selfPosition = HashFunction(SelfPosition)
										}
									})
								end
							end
						end
					end
				end
			end
		end
	end

	local function KillAuraHit()	
		for i, v in next, Players do
			if IsAlive(v) and Settings.KillAura.Value == true and v.Team ~= LocalPlayer.Team then
				if GetMatchState() ~= 0 and IsAlive(LocalPlayer) then
					local LocalPlayerCharacter = LocalPlayer.Character
					local EnemyCharacter = v.Character

					local LocalPlayerHumanoidRootPart = LocalPlayerCharacter.HumanoidRootPart 
					local EnemyHumanoidRootPart = EnemyCharacter.HumanoidRootPart 

					local Magnitude = (LocalPlayerHumanoidRootPart.Position - EnemyHumanoidRootPart.Position).Magnitude

					if Magnitude <= Settings.KillAura.Range then
						local Sword = GetSword()

						if Sword then
							task.spawn(function()
								if KillAuraAnimationCooldown and Settings.KillAura.CustomAnimation == true then
									KillAuraAnimationCooldown = false

									for i, v in next, Animations["Slow"] do
										TweenService:Create(Camera.Viewmodel.RightHand.RightWrist, TweenInfo.new(v.Time), {C0 = OrigC0 * v.CFrame}):Play()
										task.wait(v.Time - 0.01)
									end

									KillAuraAnimationCooldown = true
								end
							end)		

							local SelfPosition = LocalPlayerHumanoidRootPart.Position + (20 > 14 and (LocalPlayerHumanoidRootPart.Position - EnemyHumanoidRootPart.Position).Magnitude > 14.4 and (CFrame.lookAt(LocalPlayerHumanoidRootPart.Position, EnemyHumanoidRootPart.Position).lookVector * ((LocalPlayerHumanoidRootPart.Position - EnemyHumanoidRootPart.Position).Magnitude - 14)) or Vector3.zero)

							if Settings.KillAura.ToolCheck == false then
								SwitchItem(Sword.tool)

								KillauraRemote:FireServer({
									weapon = Sword.tool,
									chargedAttack = {chargeRatio = 0},
									entityInstance = v.Character,
									validate = {
										raycast = {
											cameraPosition = HashFunction(LocalPlayerHumanoidRootPart.Position), 
											cursorDirection = HashFunction(CFrame.new(SelfPosition, EnemyHumanoidRootPart.Position).lookVector)
										},
										targetPosition = HashFunction(EnemyHumanoidRootPart.Position),
										selfPosition = HashFunction(SelfPosition)
									}
								})
							end

							if Settings.KillAura.ToolCheck == true then
								if GetItem(Sword.itemType) then
									KillauraRemote:FireServer({
										weapon = Sword.tool,
										chargedAttack = {chargeRatio = 0},
										entityInstance = v.Character,
										validate = {
											raycast = {
												cameraPosition = HashFunction(LocalPlayerHumanoidRootPart.Position), 
												cursorDirection = HashFunction(CFrame.new(SelfPosition, EnemyHumanoidRootPart.Position).lookVector)
											},
											targetPosition = HashFunction(EnemyHumanoidRootPart.Position),
											selfPosition = HashFunction(SelfPosition)
										}
									})
								end
							end
						end
					end
				end
			end
		end
	end

	task.spawn(function()
		repeat
			task.wait()

			task.spawn(KillAuraHit)
		until not game
	end)

	task.spawn(function()
		repeat
			task.wait(0.1)

			task.spawn(KillAuraHitMobs)
		until not game
	end)
end)

task.spawn(function()
	repeat
		task.wait(0.5)

		if Settings.NoFall.Value == true then
			GroundHitRemote:FireServer()
		end
	until not game
end)	

local FlyGroundTime = tick()
local Flying = false

local FlyBodyVelocity
local FlyDown = false
local FlyUp = false

function Fly()
	Flying = not Flying

	if Flying == true then		
		local FlyHud, NumberDisplay, SliderDisplay = CreateFlyHud()

		task.spawn(function()
			repeat
				task.wait()

				if tick() - FlyGroundTime <= 2 then
					local MaxFlyTime = 2
					local FlyTime = DecimalRound(tick() - FlyGroundTime, 1)

					NumberDisplay.Text = FlyTime		

					local TweenInformation = TweenInfo.new(0.35, Enum.EasingStyle.Sine, Enum.EasingDirection.Out, 0, false, 0)			
					local Tween = TweenService:Create(SliderDisplay, TweenInformation, {Size = UDim2.new(FlyTime / MaxFlyTime, 0, 1, 0)})

					Tween:Play()				
				end				

			until not Flying or not IsAlive(LocalPlayer)

			FlyHud:Destroy()
		end)

		task.spawn(function()			
			UserInputService.InputBegan:Connect(function(Input)
				if Input.KeyCode == Enum.KeyCode.Space then
					FlyUp = true
				end

				if Input.KeyCode == Enum.KeyCode.LeftShift then
					FlyDown = true
				end			
			end)

			UserInputService.InputEnded:Connect(function(Input)
				if Input.KeyCode == Enum.KeyCode.Space then
					FlyUp = false
				end

				if Input.KeyCode == Enum.KeyCode.LeftShift then
					FlyDown = false
				end
			end)			
		end)

		task.spawn(function()
			FlyBodyVelocity = Instance.new("BodyVelocity")
			FlyBodyVelocity.MaxForce = Vector3.new(0, 9e9, 0)
			FlyBodyVelocity.Name = "FlyBodyVelocity"
			FlyBodyVelocity.Parent = LocalPlayer.Character:FindFirstChild("HumanoidRootPart")	

			FlyGroundTime = tick()

			repeat
				task.wait()

				if TouchingGround() then
					FlyGroundTime = tick()
				end

				if Flying == true and IsAlive(LocalPlayer) then
					FlyBodyVelocity.Velocity = Vector3.new(0, (FlyUp and 40 or 0) + (FlyDown and -40 or 0), 0)

					if (tick() - FlyGroundTime) >= 2 then
						local FlyTeleportPosition = -10000

						local RaycastParameters = RaycastParams.new()

						RaycastParameters.FilterType = Enum.RaycastFilterType.Include
						RaycastParameters.FilterDescendantsInstances = {CollectionServiceBlocks}

						local Raycast = workspace:Raycast(LocalPlayer.Character.HumanoidRootPart.Position, Vector3.new(0, -1000, 0), RaycastParameters)

						if Raycast and IsAlive(LocalPlayer) then 
							FlyTeleportPosition = LocalPlayer.Character.HumanoidRootPart.Position.Y

							local Args = {LocalPlayer.Character.HumanoidRootPart.CFrame:GetComponents()}

							Args[2] = Raycast.Position.Y + 1 + LocalPlayer.Character.Humanoid.HipHeight

							LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(unpack(Args))

							task.wait(0.12)

							if IsAlive(LocalPlayer) then 
								Args = {LocalPlayer.Character.HumanoidRootPart.CFrame:GetComponents()}
								Args[2] = FlyTeleportPosition

								LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(unpack(Args))

								FlyGroundTime = tick()
							end		
						end
					end
				end

			until not game
		end)
	end

	if not IsAlive(LocalPlayer) or Flying == false and LocalPlayer.Character.HumanoidRootPart:FindFirstChild("FlyBodyVelocity") then
		LocalPlayer.Character.HumanoidRootPart:FindFirstChild("FlyBodyVelocity"):Destroy()
		FlyGroundTime = tick()
	end
end

task.spawn(function()
	UserInputService.InputBegan:Connect(function(Input)
		if Input.KeyCode == Enum.KeyCode.Z then
			Fly()
		end
	end)
end)

local InfFlying = false
local SpoofedCamera = nil
local StartLevel = nil

local InfFlyUp = false
local InfFlyDown = false

function InfFly()
	InfFlying = not InfFlying

	if InfFlying == true and IsAlive(LocalPlayer) then
		task.spawn(function()
			UserInputService.InputBegan:Connect(function(Input)
				if Input.KeyCode == Enum.KeyCode.Space and not UserInputService:GetFocusedTextBox() then
					InfFlyUp = true
				end

				if Input.KeyCode == Enum.KeyCode.LeftShift and not UserInputService:GetFocusedTextBox() then
					InfFlyDown = true
				end
			end)

			UserInputService.InputEnded:Connect(function(Input)
				if Input.KeyCode == Enum.KeyCode.Space and not UserInputService:GetFocusedTextBox() then
					InfFlyUp = false
				end

				if Input.KeyCode == Enum.KeyCode.LeftShift and not UserInputService:GetFocusedTextBox() then
					InfFlyDown = false
				end
			end)
		end)

		StartLevel = LocalPlayer.Character.Head.Position.Y
		SpoofedCamera = Instance.new("Part", game.Workspace)
		SpoofedCamera.Anchored = true
		SpoofedCamera.Transparency = 1
		SpoofedCamera.Position = LocalPlayer.Character.Head.Position

		SetCamera(SpoofedCamera)

		LocalPlayer.Character.PrimaryPart.CFrame += Vector3.new(0, 1000000, 0)
		SpoofedCamera.Position = Vector3.new(SpoofedCamera.Position.X, StartLevel, SpoofedCamera.Position.Z)

		repeat task.wait()
			SpoofedCamera.Position = Vector3.new(LocalPlayer.Character.PrimaryPart.Position.X, SpoofedCamera.Position.Y + (InfFlyUp and 1 or 0) + (InfFlyDown and -1 or 0), LocalPlayer.Character.PrimaryPart.Position.Z)
			StartLevel = SpoofedCamera.Position.Y	
		until InfFlying == false

		if not InfFlying or not IsAlive(LocalPlayer) then
			LocalPlayer.Character.PrimaryPart.CFrame = SpoofedCamera.CFrame + Vector3.new(0, 5, 0)		
			SetCamera(LocalPlayer.Character)

			SpoofedCamera:Remove()
			LocalPlayer.Character.HumanoidRootPart.Anchored = true

			task.wait(0.025)

			game.Workspace.Gravity = 50
			LocalPlayer.Character.HumanoidRootPart.Anchored = false
			
			task.wait(1)

			game.Workspace.Gravity = 196.2
		end
	end
end

task.spawn(function()
	UserInputService.InputBegan:Connect(function(Input)
		if Input.KeyCode == Enum.KeyCode.X then
			InfFly()
		end
	end)
end)

task.spawn(function()
	local NearestOre = nil	
	local NearestBed = nil

	if not GetQueueType():find("skywars") then
		task.spawn(function()
			repeat
				task.wait(0.5)

				if IsAlive(LocalPlayer) then				
					NearestOre = FindNearestOre(30)
					NearestBed = FindNearestBed(30)
				end				
			until not game
		end)

		repeat
			task.wait(0.1)

			if GetMatchState() ~= 0 and IsAlive(LocalPlayer) and Settings.Nuker.Value == true then				
				if NearestBed then
					local Magnitude = (LocalPlayer.Character:FindFirstChild("HumanoidRootPart").Position - NearestBed.Position).Magnitude

					if Magnitude > Settings.Nuker.Range and Settings.Nuker.BreakOres == true and NearestOre then
						ReplicatedStorage.rbxts_include.node_modules:FindFirstChild("@easy-games"):FindFirstChild("block-engine").node_modules:FindFirstChild("@rbxts").net.out._NetManaged.DamageBlock:InvokeServer({
							["blockRef"] = {
								["blockPosition"] = GetServerPosition(NearestOre.Position)
							},
							["hitPosition"] = GetServerPosition(NearestOre.Position),
							["hitNormal"] = GetServerPosition(NearestOre.Position)
						})
					end

					if NearestBed and Magnitude <= Settings.Nuker.Range then
						local RaycastParameters = RaycastParams.new()

						RaycastParameters.FilterType = Enum.RaycastFilterType.Exclude
						RaycastParameters.FilterDescendantsInstances = {LocalPlayer.Character}
						RaycastParameters.IgnoreWater = true

						local RaycastResult = game.Workspace:Raycast(NearestBed.Position + Vector3.new(0, 30, 0), Vector3.new(0, -35, 0), RaycastParameters)

						if RaycastResult then
							local TargetBlock = nil

							if RaycastResult.Instance then
								TargetBlock = RaycastResult.Instance
							end

							if not RaycastResult.Instance then
								TargetBlock = NearestBed
							end							

							ReplicatedStorage.rbxts_include.node_modules:FindFirstChild("@easy-games"):FindFirstChild("block-engine").node_modules:FindFirstChild("@rbxts").net.out._NetManaged.DamageBlock:InvokeServer({
								["blockRef"] = {
									["blockPosition"] = GetServerPosition(TargetBlock.Position)
								},
								["hitPosition"] = GetServerPosition(TargetBlock.Position),
								["hitNormal"] = GetServerPosition(TargetBlock.Position)
							})												
						end
					end
				end
			end

			if not NearestBed then
				if Settings.Nuker.BreakOres == true and NearestOre then
					ReplicatedStorage.rbxts_include.node_modules:FindFirstChild("@easy-games"):FindFirstChild("block-engine").node_modules:FindFirstChild("@rbxts").net.out._NetManaged.DamageBlock:InvokeServer({
						["blockRef"] = {
							["blockPosition"] = GetServerPosition(NearestOre.Position)
						},
						["hitPosition"] = GetServerPosition(NearestOre.Position),
						["hitNormal"] = GetServerPosition(NearestOre.Position)
					})
				end
			end
		until not game
	end	
end)

task.spawn(function()
	task.spawn(function()
		if GetQueueType():find("skywars") then
			repeat task.wait(1) until not IsAlive(LocalPlayer)

			PlayAgainRemote.joinQueue:FireServer({["queueType"] = GetQueueType()})
		end
	end)

	repeat task.wait(1) until GetMatchState() == 2

	if Settings.PlayAgain.Value == true then
		PlayAgainRemote.joinQueue:FireServer({["queueType"] = GetQueueType()})
	end
end)

task.spawn(function()
	RunService.Heartbeat:Connect(function(Delta)
		if IsAlive(LocalPlayer) and Settings.Speed.Value == true then			
			local SpeedValue = GetSpeed()

			local RaycastParameters = RaycastParams.new()

			local SpeedCFrame = LocalPlayer.Character.Humanoid.MoveDirection * SpeedValue * Delta
			RaycastParameters.FilterDescendantsInstances = {LocalPlayer.Character}

			local Raycast = game.Workspace:Raycast(LocalPlayer.Character.HumanoidRootPart.Position, SpeedCFrame, RaycastParameters)

			if Raycast then
				SpeedCFrame = (Raycast.Position - LocalPlayer.Character.HumanoidRootPart.Position) 
			end

			LocalPlayer.Character.HumanoidRootPart.CFrame = LocalPlayer.Character.HumanoidRootPart.CFrame + SpeedCFrame
		end
	end)
end)

task.spawn(function()	
	local Steal = function()
		for i, v in next, CollectionServiceChest do
			if (LocalPlayer.Character.HumanoidRootPart.Position - v.Position).Magnitude <= 30 then
				local Chest = v:FindFirstChild("ChestFolderValue")

				Chest = Chest and Chest.Value or nil				

				local Chestitems = Chest and Chest:GetChildren()

				if #Chestitems > 1 then
					ReplicatedStorage.rbxts_include.node_modules:FindFirstChild("@rbxts").net.out._NetManaged:FindFirstChild("Inventory/SetObservedChest"):FireServer("BlockChest")

					for i2, v2 in next, Chestitems do
						if v2:IsA("Accessory") then
							task.spawn(function()
								ReplicatedStorage.rbxts_include.node_modules:FindFirstChild("@rbxts").net.out._NetManaged:FindFirstChild("Inventory/ChestGetItem"):InvokeServer(v.ChestFolderValue.Value, v2)
							end)
						end
					end

					task.wait(0.001)

					ReplicatedStorage.rbxts_include.node_modules:FindFirstChild("@rbxts").net.out._NetManaged:FindFirstChild("Inventory/SetObservedChest"):FireServer(nil)
				end
			end
		end
	end	

	repeat
		task.wait(0.5)

		if IsAlive(LocalPlayer) and GetMatchState() ~= 0 and Settings.ChestStealer.Value == true then
			Steal()
		end
	until not game
end)

task.spawn(function()
	local Messages = {"Boom!", "Bam!", "Bop!", "Pow!"}

	debug.setupvalue(Bedwars.DamageIndicator, 10, {
		Create = function(self, obj, ...)
			task.spawn(function()				
				if Settings.Indicators.Value == true then
					local Message = Messages[math.random(#Messages)]

					obj.Parent.Text = Message
					obj.Parent.TextColor3 = Color3.fromHSV(tick() % 10 / 10, 2, 2)

					task.spawn(function()						
						task.wait(0.75)

						if Settings.Indicators.Value == true then
							obj.Parent:Destroy()
						end
					end)
				end
			end)
		end
	})
end)

task.spawn(function()
	repeat		
		task.wait()

		if Settings.Aimbot.Value == true and IsAlive(LocalPlayer) and IsAlive(NearestPlayer) and NearestPlayer and not NearestPlayer.Character:FindFirstChildOfClass("ForceField") then	
			local BestBow = GetBow()

			if BestBow and IsAlive(LocalPlayer) then
				if Settings.Aimbot.ToolCheck == true then
					if GetItem(BestBow.itemType) and GetItem("arrow") then
						local Bow = GetItem(BestBow.itemType)

						if Bow then					
							ShootProjectile(ReplicatedStorage.Inventories:FindFirstChild(LocalPlayer.Name):FindFirstChild(BestBow.itemType), "arrow")
						end
					end
				end

				if Settings.Aimbot.ToolCheck == false then
					local Bow = GetItem(BestBow.itemType)

					if Bow and GetItem("arrow") then			
						SwitchItem(BestBow.tool)

						ShootProjectile(ReplicatedStorage.Inventories:FindFirstChild(LocalPlayer.Name):FindFirstChild(BestBow.itemType), "arrow")
					end
				end
			end

			if not BestBow and IsAlive(LocalPlayer) then
				if GetItem("fireball") then
					ShootProjectile(ReplicatedStorage.Inventories:FindFirstChild(LocalPlayer.Name):FindFirstChild("fireball"), "fireball")
				end

				if GetItem("snowball") then
					ShootProjectile(ReplicatedStorage.Inventories:FindFirstChild(LocalPlayer.Name):FindFirstChild("snowball"), "snowball")
				end
			end
		end
	until not game
end)

task.spawn(function()	
	UserInputService.JumpRequest:Connect(function()
		if IsAlive(LocalPlayer) and Settings.InfiniteJump.Value == true then
			LocalPlayer.Character.Humanoid:ChangeState("Jumping")
		end

		if IsAlive(LocalPlayer) and Settings.HighJump.Value == true then
			LocalPlayer.Character.HumanoidRootPart.Velocity = LocalPlayer.Character.HumanoidRootPart.Velocity + Vector3.new(0, 16.5, 0)
		end
	end)
end)

task.spawn(function()
	repeat task.wait() until GetMatchState() ~= 0

	task.wait(0.3)

	for i, v in next, Players do
		if IsAlive(v) then
			v.Character.Humanoid.HealthChanged:Connect(function(Health)
				if Health <= 0 and v.Team ~= LocalPlayer.Team and v ~= LocalPlayer and Settings.AutoToxic.Value == true then
					local Randomized = math.random(0, 5)
					local KillMessage = ""					

					if Randomized == 0 then
						KillMessage = "You are so bad u died. L" .. v.Name .. " | AlSploit on top"
					end

					if Randomized ~= 0 then
						KillMessage = "I could probably win without cheats. L" .. v.Name .. " | AlSploit on top"
					end

					if Randomized == 2 then
						KillMessage = "Clowns are the only ones we kill. L" .. v.Name .. " | AlSploit on top"
					end

					if Randomized == 3 then
						KillMessage = "Rats. Imagine dying in a block game. L" .. v.Name .. " | AlSploit on top"
					end

					if Randomized == 4 then
						KillMessage = "I hack for fun. Too bad your fun is ruined. L" .. v.Name .. " | AlSploit on top"
					end

					if Randomized == 5 then
						KillMessage = "I ruined a good day for a good reason. L" .. v.Name .. " | AlSploit on top"
					end

					local Args = {
						[1] = KillMessage,
						[2] = "All"
					}

					SendMessageRemote:FireServer(unpack(Args))
				end
			end)
		end	

		task.spawn(function()
			v.CharacterAdded:Connect(function(Character)
				task.wait(0.3)

				local v = game.Players:FindFirstChild(Character.Name) or v

				if IsAlive(v) then
					v.Character.Humanoid.HealthChanged:Connect(function(Health)
						if Health <= 0 and v.Team ~= LocalPlayer.Team and v ~= LocalPlayer and Settings.AutoToxic.Value == true then
							local Randomized = math.random(0, 5)
							local KillMessage = ""					

							if Randomized == 0 then
								KillMessage = "You are so bad u died. L" .. v.Name .. " | AlSploit on top"
							end

							if Randomized ~= 0 then
								KillMessage = "I could probably win without cheats. L" .. v.Name .. " | AlSploit on top"
							end

							if Randomized == 2 then
								KillMessage = "Clowns are the only ones we kill. L" .. v.Name .. " | AlSploit on top"
							end

							if Randomized == 3 then
								KillMessage = "Rats. Imagine dying in a block game. L" .. v.Name .. " | AlSploit on top"
							end

							if Randomized == 4 then
								KillMessage = "I hack for fun. Too bad your fun is ruined. L" .. v.Name .. " | AlSploit on top"
							end

							if Randomized == 5 then
								KillMessage = "I ruined a good day for a good reason. L" .. v.Name .. " | AlSploit on top"
							end

							local Args = {
								[1] = KillMessage,
								[2] = "All"
							}

							SendMessageRemote:FireServer(unpack(Args))
						end
					end)
				end
			end)
		end)
	end
end)

task.spawn(function()
	repeat
		task.wait(100 / Settings.ChatSpammer.Speed)

		if Settings.ChatSpammer.Value == true then
			local Randomized = math.random(0, 5)
			local KillMessage = ""

			if Randomized == 0 then
				KillMessage = "AlSploit does more updates than Bedwars 💀. | AlSploit On Top"
			end

			if Randomized ~= 0 then
				KillMessage = "SkidB4 is as bad as how you felt when your dad left you. | AlSploit On Top"
			end

			if Randomized == 2 then
				KillMessage = "Switch to AlSploit, ez wins. | AlSploit On Top"
			end

			if Randomized == 3 then
				KillMessage = "I am not cheating, my gaming chair is. | AlSploit On Top"
			end

			if Randomized == 4 then
				KillMessage = "3 years now, and the anticheat is still the same. | AlSploit On Top"
			end

			if Randomized == 5 then
				KillMessage = "Kids in bedwars just keep getting worst. | AlSploit On Top"
			end

			local Args = {
				[1] = KillMessage,
				[2] = "All"
			}

			SendMessageRemote:FireServer(unpack(Args))
		end
	until not game
end)

RunService.RenderStepped:Connect(function()
	local NearestPlayer, NearestPlayerDistance = NearestPlayer, NearestPlayerDistance

	if NearestPlayer and GetMatchState() ~= 0 and NearestPlayerDistance <= 18 and IsAlive(LocalPlayer) and IsAlive(NearestPlayer) and Settings.AimAssist.Value == true then
		local LookVector = (NearestPlayer.Character.HumanoidRootPart.Position - Camera.CFrame.Position).unit

		Camera.CFrame = CFrame.new(Camera.CFrame.Position, Camera.CFrame.Position + LookVector)
	end
end)

task.spawn(function()
	repeat
		task.wait()

		if IsAlive(LocalPlayer) and GetMatchState() ~= 0 then
			if Settings.AutoKit.Value == true then
				AutoKit()
			end

			AutoBank()
		end			
	until not game
end)

task.spawn(function()	
	Client:WaitFor("EntityDamageEvent"):andThen(function(v)
		v:Connect(function(Player) 
			if Player.entityInstance == LocalPlayer.Character and IsAlive(LocalPlayer) and Settings.DamageBoost.Value == true then 
				task.spawn(function()
					DamageBoost = true

					task.wait(0.8)

					DamageBoost = false	
				end) 
			end 
		end)    
	end)
end)

local CombatWindow = CreateWindow("Combat")
local BlatantWindow = CreateWindow("Blatant")
local UtilityWindow = CreateWindow("Utility")
local WorldWindow = CreateWindow("World")

task.spawn(function()
	local AimAssist = CreateToggle(CombatWindow, "AimAssist", Settings.AimAssist.Value, function(CallBack)
		Settings.AimAssist.Value = CallBack
	end)
end)

task.spawn(function()
	local KillAura, DropDownButton, LayoutOrder = CreateToggle(CombatWindow, "Killaura", Settings.KillAura.Value, function(CallBack)
		Settings.KillAura.Value = CallBack
	end)

	local CustomAnimationsValue = false
	local ToolCheckValue = false
	local RangeValue = false

	local CustomAnimations
	local ToolCheck
	local Range

	DropDownButton.Activated:Connect(function()			
		if CustomAnimationsValue == false then
			CustomAnimations = CreateMiniToggle(CombatWindow, "CustomAnimations", Settings.KillAura.CustomAnimation, LayoutOrder + 1, function(Callback)
				Settings.KillAura.CustomAnimation = Callback
			end)
		end

		if ToolCheckValue == false then
			ToolCheck = CreateMiniToggle(CombatWindow, "ToolCheck", Settings.KillAura.ToolCheck, LayoutOrder + 2, function(Callback)
				Settings.KillAura.ToolCheck = Callback
			end)
		end

		if RangeValue == false then
			Range = CreateSlider(CombatWindow, "Range", Settings.KillAura.Range, 20, 0, LayoutOrder + 3, function(Callback)
				Settings.KillAura.Range = Callback
			end)
		end

		if CustomAnimationsValue == true then					
			CustomAnimations:Destroy()
		end

		if ToolCheckValue == true then					
			ToolCheck:Destroy()
		end

		if RangeValue == true then					
			Range:Destroy()
		end

		CustomAnimationsValue = not CustomAnimationsValue
		ToolCheckValue = not ToolCheckValue
		RangeValue = not RangeValue
	end)
end)

task.spawn(function()
	local Velocity = CreateToggle(CombatWindow, "Velocity", Settings.Velocity.Value, function(CallBack)
		Settings.Velocity.Value = CallBack

		if CallBack == true then
			Bedwars.KnockbackTable.kbDirectionStrength = 0
			Bedwars.KnockbackTable.kbUpwardStrength = 0	
		end

		if CallBack == false then
			Bedwars.KnockbackTable.kbDirectionStrength = 100
			Bedwars.KnockbackTable.kbUpwardStrength = 100	
		end
	end)
end)

task.spawn(function()
	local Sprint = CreateToggle(CombatWindow, "Sprint", Settings.Sprint.Value, function(CallBack)
		Settings.Sprint.Value = CallBack

		local OldSprintFunction

		if CallBack == true then

			OldSprintFunction = Bedwars.SprintController.stopSprinting

			Bedwars.SprintController.stopSprinting = function(...)
				local Call = OldSprintFunction(...)

				Bedwars.SprintController:startSprinting()

				return Call
			end

			task.spawn(function()
				Bedwars.SprintController:startSprinting()
			end)

			LocalPlayer.CharacterAdded:Connect(function(Character)
				Bedwars.SprintController:stopSprinting()
			end)
		end

		if CallBack == false then
			Bedwars.SprintController.stopSprinting = OldSprintFunction
			Bedwars.SprintController:stopSprinting()
		end

		Bedwars.SprintController:setSpeed(20)
	end)
end)

task.spawn(function()
	local Reach = CreateToggle(CombatWindow, "Reach", Settings.Reach.Value, function(CallBack)
		Settings.Reach.Value = CallBack

		local OldReach = Bedwars.CombatConstant.RAYCAST_SWORD_CHARACTER_DISTANCE

		if CallBack == true then
			Bedwars.CombatConstant.RAYCAST_SWORD_CHARACTER_DISTANCE = 20
		end

		if CallBack == false then
			Bedwars.CombatConstant.RAYCAST_SWORD_CHARACTER_DISTANCE = OldReach
		end
	end)
end)

task.spawn(function()
	local ChestStealer = CreateToggle(BlatantWindow, "ChestSteal", Settings.ChestStealer.Value, function(CallBack)
		Settings.ChestStealer.Value = CallBack
	end)
end)

task.spawn(function()
	local DamageBoost = CreateToggle(BlatantWindow, "DmgBoost", Settings.DamageBoost.Value, function(Callback)
		Settings.DamageBoost.Value = Callback
	end)
end)

task.spawn(function()
	local HighJump = CreateToggle(BlatantWindow, "HighJump", Settings.HighJump.Value, function(Callback)
		Settings.HighJump.Value = Callback
	end)
end)

task.spawn(function()
	local Invisible = CreateToggle(BlatantWindow, "Invisible", Settings.Invisible.Value, function(Callback)
		Settings.Invisible.Value = Callback

		if Callback == true then
			Invisible()

			LocalPlayer.CharacterAdded:Connect(function()
				task.wait(0.3)

				if Settings.Invisible.Value == true then
					Invisible()
				end
			end)
		end
	end)
end)

task.spawn(function()
	local Scaffold = CreateToggle(BlatantWindow, "Scaffold", Settings.Scaffold.Value, function(Callback)
		Settings.Scaffold.Value = Callback

		local ClickingTooFast = SwordController.isClickingTooFast

		if Callback == true then
			task.spawn(function()
				SwordController.isClickingTooFast = function(self) 
					self.lastSwing = tick()

					return false 
				end

				repeat
					task.wait()

					if IsAlive(LocalPlayer) and Settings.Scaffold.Value == true then
						local ScaffoldCFrame = (LocalPlayer.Character.HumanoidRootPart.CFrame + LocalPlayer.Character.PrimaryPart.CFrame.LookVector * 3) + Vector3.new(0, -math.floor(LocalPlayer.Character.Humanoid.HipHeight * 3), 0)
						local Position = GetServerPosition(ScaffoldCFrame)
						local Block = GetBlock()

						if Block then
							PlaceBlock(Position, Block)
						end
					end
				until Callback == false
			end)
		end
		
		if Callback == false then
			SwordController.isClickingTooFast = ClickingTooFast
		end
	end)
end)

task.spawn(function()
	local AutoKit = CreateToggle(BlatantWindow, "AutoKit", Settings.AutoKit.Value, function(Callback)
		Settings.AutoKit.Value = Callback
	end)
end)

task.spawn(function()
	local Aimbot, DropDownButton, LayoutOrder = CreateToggle(BlatantWindow, "Aimbot", Settings.Aimbot.Value, function(CallBack)
		Settings.Aimbot.Value = CallBack
	end)

	local ToolCheckValue = false
	local ToolCheck

	DropDownButton.Activated:Connect(function()			
		if ToolCheckValue == false then
			ToolCheck = CreateMiniToggle(BlatantWindow, "ToolCheck", Settings.Aimbot.ToolCheck, LayoutOrder + 1, function(Callback)
				Settings.Aimbot.ToolCheck = Callback

				if Callback == false then
					local Sword = GetSword()

					SwitchItem(Sword.itemType)

					task.wait(0.3)

					SwitchItem(Sword.itemType)
				end
			end)
		end

		if ToolCheckValue == true then	
			ToolCheck:Destroy()
		end

		ToolCheckValue = not ToolCheckValue
	end)	
end)

task.spawn(function()
	local NoFall = CreateToggle(BlatantWindow, "NoFall", Settings.NoFall.Value, function(CallBack)
		Settings.NoFall.Value = CallBack
	end)
end)

task.spawn(function()
	local Speed, DropDownButton, LayoutOrder = CreateToggle(BlatantWindow, "Speed", Settings.Speed.Value, function(CallBack)
		Settings.Speed.Value = CallBack
	end)

	local SpeedSlider

	local SpeedValue = false

	DropDownButton.Activated:Connect(function()			
		if SpeedValue == false then
			SpeedSlider = CreateSlider(BlatantWindow, "Speed", Settings.Speed.Speed, 23, 0, LayoutOrder + 1, function(Callback)
				Settings.Speed.Speed = Callback

				print(Callback)
			end)
		end

		if SpeedValue == true then
			SpeedSlider:Destroy()
		end

		SpeedValue = not SpeedValue
	end)	
end)

task.spawn(function()
	local PlayAgain = CreateToggle(UtilityWindow, "PlayAgain", Settings.PlayAgain.Value, function(CallBack)
		Settings.PlayAgain.Value = CallBack
	end)
end)

task.spawn(function()
	local AutoBank = CreateToggle(UtilityWindow, "AutoBank", Settings.AutoBank.Value, function(CallBack)
		Settings.AutoBank.Value = CallBack
	end)
end)

task.spawn(function()
	local ChatSpammer, DropDownButton, LayoutOrder = CreateToggle(UtilityWindow, "ChatSpam", Settings.ChatSpammer.Value, function(CallBack)
		Settings.ChatSpammer.Value = CallBack
	end)

	local SpeedValue = false
	local Speed

	DropDownButton.Activated:Connect(function()			
		if SpeedValue == false then
			Speed = CreateSlider(UtilityWindow, "Speed", Settings.ChatSpammer.Speed, 100, 0, LayoutOrder + 1, function(Callback)
				Settings.ChatSpammer.Speed = Callback
			end)
		end

		if SpeedValue == true then	
			Speed:Destroy()
		end

		SpeedValue = not SpeedValue
	end)	
end)

task.spawn(function()
	local AutoToxic = CreateToggle(UtilityWindow, "AutoToxic", Settings.AutoToxic.Value, function(CallBack)
		Settings.AutoToxic.Value = CallBack
	end)
end)

task.spawn(function()
	local FpsBooster = CreateToggle(UtilityWindow, "FpsBoost", Settings.FpsBooster.Value, function(CallBack)
		Settings.FpsBooster.Value = CallBack

		if CallBack == true then
			FpsBoostTextures()
		end
	end)
end)

task.spawn(function()
	local InfJump = CreateToggle(UtilityWindow, "InfJump", Settings.InfiniteJump.Value, function(CallBack)
		Settings.InfiniteJump.Value = CallBack
	end)
end)

task.spawn(function()
	local Esp = CreateToggle(UtilityWindow, "Esp", Settings.Esp.Value, function(CallBack)
		Settings.Esp.Value = CallBack

		if CallBack == true then
			task.spawn(function()
				task.spawn(function()
					for i, v in next, Players do
						if IsAlive(v) and v ~= LocalPlayer and CallBack == true and not v.Character.HumanoidRootPart:FindFirstChild("Esp") then
							CreateOutline(v)
						end

						v.CharacterAdded:Connect(function(Character)
							task.wait(0.3)

							if Settings.Esp.Value == true and IsAlive(game.Players:FindFirstChild(Character.Name)) and v ~= LocalPlayer and not v.Character.HumanoidRootPart:FindFirstChild("Esp") then
								CreateOutline(v)
							end
						end)
					end
				end)

				task.spawn(function()
					game.Players.PlayerAdded:Connect(function(Player)
						Player.CharacterAdded:Connect(function()
							task.wait(0.3)

							if Settings.Esp.Value == true and IsAlive(Player) and Player ~= LocalPlayer and not Player.Character.HumanoidRootPart:FindFirstChild("Esp") then
								CreateOutline(Player)
							end
						end)
					end)
				end)
			end)
		end

		if CallBack == false then
			task.spawn(function()
				for i, v in next, Players do
					if IsAlive(v) and CallBack == false and v.Character.HumanoidRootPart:FindFirstChild("Esp") then
						v.Character.HumanoidRootPart:FindFirstChild("Esp"):Destroy()
					end
				end
			end)
		end
	end)
end)

task.spawn(function()
	local Fov, DropDownButton, LayoutOrder = CreateToggle(UtilityWindow, "Fov", Settings.Fov.Value, function(CallBack)
		Settings.Fov.Value = CallBack

		if CallBack == true then
			FovController:setFOV(Settings.Fov.Fov)
		end

		if CallBack == false then
			FovController:setFOV(Bedwars.ClientHandlerStore:getState().Settings.fov)
		end
	end)

	local FovValue = false
	local Fov

	DropDownButton.Activated:Connect(function()			
		if FovValue == false then
			Fov = CreateSlider(UtilityWindow, "Fov", Settings.Fov.Fov, 130, 0, LayoutOrder + 1, function(Callback)
				Settings.Fov.Fov = Callback

				if Settings.Fov.Value == true then
					FovController:setFOV(Callback)	
				end
			end)
		end

		if FovValue == true then	
			Fov:Destroy()
		end

		FovValue = not FovValue
	end)	
end)

task.spawn(function()
	local GalaxySky = CreateToggle(WorldWindow, "GalaxySky", Settings.GalaxySky.Value, function(CallBack)
		Settings.GalaxySky.Value = CallBack

		if CallBack == true then
			if LightingService:FindFirstChild("Sky") and Settings.GalaxySky.Value == true then
				LightingService.Sky.Parent = ReplicatedStorage

				local Sky = Instance.new("Sky")
				local ID = 8281961896

				Sky.SkyboxBk = "http://www.roblox.com/asset/?id=" .. ID
				Sky.SkyboxDn = "http://www.roblox.com/asset/?id=" .. ID
				Sky.SkyboxFt = "http://www.roblox.com/asset/?id=" .. ID
				Sky.SkyboxLf = "http://www.roblox.com/asset/?id=" .. ID
				Sky.SkyboxRt = "http://www.roblox.com/asset/?id=" .. ID
				Sky.SkyboxUp = "http://www.roblox.com/asset/?id=" .. ID

				Sky.Parent = LightingService
			end
		end

		if CallBack == false then
			if ReplicatedStorage:FindFirstChild("Sky") and LightingService:FindFirstChild("Sky") and Settings.GalaxySky.Value == false then
				LightingService.Sky:Destroy()

				ReplicatedStorage.Sky.Parent = LightingService 
			end
		end
	end)
end)

task.spawn(function()
	local Indicators = CreateToggle(WorldWindow, "Indicators", Settings.Indicators.Value, function(CallBack)
		Settings.Indicators.Value = CallBack
	end)
end)

task.spawn(function()
	local AntiVoid, DropDownButton, LayoutOrder = CreateToggle(WorldWindow, "AntiVoid", Settings.AntiVoid.Value, function(CallBack)
		Settings.AntiVoid.Value = CallBack

		task.spawn(function()
			repeat task.wait() until GetMatchState() ~= 0

			if CallBack == true then	
				local OldLowestPosition = math.huge
				local LowestPosition = 99999

				local Blockraycast = RaycastParams.new()

				Blockraycast.FilterType = Enum.RaycastFilterType.Include
				Blockraycast.FilterDescendantsInstances = CollectionServiceBlocks

				AntiVoidPart = Instance.new("Part")
				AntiVoidPart.Parent = game.Workspace
				AntiVoidPart.Material = Enum.Material.Neon
				AntiVoidPart.Name = "AntiVoidPart"
				AntiVoidPart.Size = Vector3.new(99999, 1, 99999)
				AntiVoidPart.Position = Vector3.new(0, 99999, 0)
				AntiVoidPart.Transparency = Settings.AntiVoid.Transparency
				AntiVoidPart.Color = Color3.new(0.666667, 0, 1)
				AntiVoidPart.CanCollide = false
				AntiVoidPart.Anchored = true

				for i, v in pairs(CollectionServiceBlocks) do
					local NewRay = game.Workspace:Raycast(v.Position + Vector3.new(0, 800, 0), Vector3.new(0, -1000, 0), Blockraycast)

					if NewRay then
						LowestPosition = NewRay.Position.Y
						if LowestPosition < OldLowestPosition then
							OldLowestPosition = LowestPosition

							AntiVoidPart.Position = Vector3.new(0, LowestPosition - 4, 0)
						end
					end					
				end

				AntiVoidPart.Touched:Connect(function()
					if IsAlive(LocalPlayer) and game.Workspace:FindFirstChild("AntiVoidPart") and LocalPlayer.Character.HumanoidRootPart.Position.Y <= game.Workspace.AntiVoidPart.Position.Y then
						for i = 1, 3 do
							if IsAlive(LocalPlayer) then
								LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(LocalPlayer.Character.HumanoidRootPart.Velocity.X, 100, LocalPlayer.Character.HumanoidRootPart.Velocity.Z)
							end
						end
					end
				end)
			end
		end)	

		if CallBack == false then
			if game.Workspace:FindFirstChild("AntiVoidPart") then		
				AntiVoidPart:Destroy()
			end
		end
	end)

	task.spawn(function()
		local AntiVoidValue = false

		local Transparency

		DropDownButton.Activated:Connect(function()			
			if AntiVoidValue == false then
				Transparency = CreateSlider(WorldWindow, "Transparency", Settings.AntiVoid.Transparency * 100, 100, 0, LayoutOrder + 1, function(Callback)
					Settings.AntiVoid.Transparency = Callback / 100

					if AntiVoidPart then
						AntiVoidPart.Transparency = Callback / 100
					end
				end)
			end

			if AntiVoidValue == true then					
				Transparency:Destroy()
			end

			AntiVoidValue = not AntiVoidValue
		end)	
	end)	
end)

task.spawn(function()
	local PlayerTp = CreateToggle(WorldWindow, "PlayerTp", false, function(CallBack)
		Settings.PlayerTp.Value = CallBack

		if CallBack == true then
			task.spawn(function()
				if IsAlive(LocalPlayer) then
					repeat task.wait() until GetMatchState() ~= 0

					if NearestPlayer ~= nil then
						KillHumanoid()

						LocalPlayer.CharacterAdded:Connect(function()
							repeat task.wait() until IsAlive(LocalPlayer)

							if IsAlive(LocalPlayer) and Settings.PlayerTp.Value == true then
								task.wait(0.15)

								TweenToNearestPlayer()
							end
						end)
					end	
				end

				if not IsAlive(LocalPlayer) then
					LocalPlayer.CharacterAdded:Connect(function()
						repeat task.wait() until IsAlive(LocalPlayer)						

						if IsAlive(LocalPlayer) and Settings.PlayerTp.Value == true and FindNearestPlayer() then
							task.wait(0.25)

							TweenToNearestPlayer()
						end
					end)
				end
			end)
		end
	end)
end)

task.spawn(function()
	local BedTp = CreateToggle(WorldWindow, "BedTp", false, function(CallBack)
		Settings.BedTp.Value = CallBack

		if CallBack == true then
			task.spawn(function()
				if IsAlive(LocalPlayer) then
					repeat task.wait() until GetMatchState() ~= 0

					if FindNearestBed() then
						KillHumanoid()

						LocalPlayer.CharacterAdded:Connect(function()
							repeat task.wait() until IsAlive(LocalPlayer)

							if IsAlive(LocalPlayer) and Settings.BedTp.Value == true then
								task.wait(0.3)

								TweenToNearestBed()
							end
						end)
					end
				end			

				if not IsAlive(LocalPlayer) then
					LocalPlayer.CharacterAdded:Connect(function()
						repeat task.wait() until IsAlive(LocalPlayer)

						if IsAlive(LocalPlayer) and Settings.BedTp.Value == true and FindNearestBed() then
							task.wait(0.25)

							TweenToNearestBed()
						end
					end)
				end
			end)
		end
	end)
end)

task.spawn(function()
	if not GetQueueType():find("skywars") then
		local Nuker, DropDownButton, LayoutOrder = CreateToggle(WorldWindow, "Nuker", Settings.Nuker.Value, function(CallBack)
			Settings.Nuker.Value = CallBack
		end)

		local BreakOresValue = false
		local RangeValue = false

		local BreakOres
		local Range

		DropDownButton.Activated:Connect(function()	
			if BreakOresValue == false then
				BreakOres = CreateMiniToggle(WorldWindow, "BreakOres", Settings.Nuker.BreakOres, LayoutOrder + 1, function(Callback)
					Settings.Nuker.BreakOres = Callback
				end)
			end		

			if RangeValue == false then
				Range = CreateSlider(WorldWindow, "Range", Settings.Nuker.Range, 30, 0, LayoutOrder + 2, function(Callback)
					Settings.Nuker.Range = Callback
				end)
			end			

			if BreakOresValue == true then					
				BreakOres:Destroy()
			end

			if RangeValue == true then					
				Range:Destroy()
			end

			BreakOresValue = not BreakOresValue
			RangeValue = not RangeValue
		end)	
	end			
end)

task.spawn(function()
	local Cape = CreateToggle(WorldWindow, "Cape", Settings.Cape.Value, function(CallBack)
		Settings.Cape.Value = CallBack

		local DecalId = "rbxassetid://14347677597"

		local function CreateCape()
			local Cape = Instance.new("Part")

			Cape.Parent = LocalPlayer.Character
			Cape.Name = "Cape"
			Cape.Size = Vector3.new(0.2, 0.2, 0.08)
			Cape.Material = Enum.Material.SmoothPlastic
			Cape.Color = Color3.new(0.105882, 0.105882, 0.105882)
			Cape.CanCollide = false

			local BlockMesh = Instance.new("BlockMesh")

			BlockMesh.Parent = Cape
			BlockMesh.Name = "Mesh"
			BlockMesh.Scale = Vector3.new(9, 17.5, 0.5)
			BlockMesh.VertexColor = Vector3.new(1, 1, 1)

			local Motor = Instance.new("Motor")

			Motor.Parent = Cape
			Motor.Name = "Motor"
			Motor.C0 = CFrame.new(0, 2, 0, -4.37113883e-08, 0, 1, 0, 1, 0, -1, 0, -4.37113883e-08)
			Motor.C1 = CFrame.new(0, 1, 0.449999988, -4.37113883e-08, 0, 1, 0, 1, 0, -1, 0, -4.37113883e-08)
			Motor.Part1 = LocalPlayer.Character.UpperTorso
			Motor.Part0 = Cape
			Motor.CurrentAngle = -0.16208772361278534
			Motor.DesiredAngle = -0.1002269834280014

			local Decal = Instance.new("Decal")

			Decal.Parent = Cape
			Decal.Name = "Decal"
			Decal.Face = Enum.NormalId.Back
			Decal.Texture = DecalId
		end

		if CallBack == true then
			CreateCape()
		end

		if CallBack == false then
			if IsAlive(LocalPlayer) and LocalPlayer.Character:FindFirstChild("Cape") then
				LocalPlayer.Character:FindFirstChild("Cape"):Destroy()
			end
		end

		task.spawn(function()
			LocalPlayer.CharacterAdded:Connect(function()
				if IsAlive(LocalPlayer) and not LocalPlayer.Character:FindFirstChild("Cape") and CallBack == true then
					task.wait(0.3)

					CreateCape()
				end
			end)
		end)

		task.spawn(function()
			repeat
				task.wait()

				if IsAlive(LocalPlayer) and IsMoving() and LocalPlayer.Character:FindFirstChild("Cape") and LocalPlayer.Character:FindFirstChild("Cape"):FindFirstChild("Motor") then
					local TweenInformation = TweenInfo.new(0.15, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0)
					local CapeTween = TweenService:Create(LocalPlayer.Character:FindFirstChild("Cape"):FindFirstChild("Motor"), TweenInformation, {CurrentAngle = -0.6})

					CapeTween:Play()
				end

				if IsAlive(LocalPlayer) and not IsMoving() and LocalPlayer.Character:FindFirstChild("Cape") and LocalPlayer.Character:FindFirstChild("Cape"):FindFirstChild("Motor") then
					local TweenInformation = TweenInfo.new(0.15, Enum.EasingStyle.Linear, Enum.EasingDirection.In, 0, false, 0)
					local CapeTween = TweenService:Create(LocalPlayer.Character:FindFirstChild("Cape"):FindFirstChild("Motor"), TweenInformation, {CurrentAngle = -0.2})

					CapeTween:Play()
				end
			until not game
		end)
	end)
end)

task.spawn(function()
	local Horizontal = {Value = 15}
	local Vertical = {Value = 5}
	local Depth = {Value = 35} 

	local RotationZ = {Value = 5}

	local ViewModel = Camera:FindFirstChild("Viewmodel")
	local C1

	LocalPlayer.PlayerScripts.TS.controllers.global.viewmodel["viewmodel-controller"]:SetAttribute("ConstantManager_DEPTH_OFFSET", -(Depth.Value / 10))
	LocalPlayer.PlayerScripts.TS.controllers.global.viewmodel["viewmodel-controller"]:SetAttribute("ConstantManager_HORIZONTAL_OFFSET", (Horizontal.Value / 10))
	LocalPlayer.PlayerScripts.TS.controllers.global.viewmodel["viewmodel-controller"]:SetAttribute("ConstantManager_VERTICAL_OFFSET", (Vertical.Value / 10))

	C1 = ViewModel.RightHand.RightWrist.C1

	ViewModel.RightHand.RightWrist.C1 = C1 * CFrame.Angles(math.rad(0), math.rad(0), math.rad(RotationZ.Value))
end)

task.spawn(function()
	repeat 
		task.wait(0.1)

		task.spawn(function()
			Players = game.Players:GetPlayers()	
		end)		

		task.spawn(function()
			CollectionServiceDiamondGuardian = CollectionService:GetTagged("DiamondGuardian")
			CollectionServiceBlocks = CollectionService:GetTagged("block")
			CollectionServiceChest = CollectionService:GetTagged("chest")
			CollectionServiceNps = CollectionService:GetTagged("BedwarsItemShop")
		end)		

		task.spawn(function()
			if IsAlive(LocalPlayer) then
				NearestPlayer, NearestPlayerDistance = FindNearestPlayer()
			end			
		end)

		task.spawn(function()
			FovController:setFOV(Settings.Fov.Fov)
		end)		
	until not game
end)
