getgenv().yb = false
getgenv().sb = false
getgenv().db = false
getgenv().rb = false
getgenv().gb = false

function spawnyb()
	spawn(function()
		while getgenv().yb == true do
			game:GetService("ReplicatedStorage").SpawnLuckyBlock:FireServer()
            task.wait()
		end
	end)
end

function spawnsb()
	spawn(function()
		while getgenv().sb == true do
			game:GetService("ReplicatedStorage").SpawnDiamondBlock:FireServer()
            task.wait()
		end
	end)
end

function spawnrb()
	spawn(function()
		while getgenv().rb == true do
			game:GetService("ReplicatedStorage").SpawnRainbowBlock:FireServer()
            task.wait()
		end
	end)
end

function spawngb()
	spawn(function()
		while getgenv().gb == true do
			game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
            task.wait()
		end
	end)
end

local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Impact Hub | LUCKY BLOCKS Battlegrounds", HidePremium = false, SaveConfig = true, ConfigFolder = "Impact", IntroEnabled = false})

local LocalPlrTab = Window:MakeTab({Name = "Local Player", Icon = "rbxassetid://15862434941",PremiumOnly = false })
local BlocksTab = Window:MakeTab({Name = "Blocks", Icon = "rbxassetid://15913830781",PremiumOnly = false })

LocalPlrTab:AddSlider({
	Name = "Walkspeed",
	Min = 16, Max = 250, Default = 16, Color = Color3.fromRGB(129, 245, 56), Increment = 1, Save = true, Flag = "walkspeed_lb", ValueName = "Speed",
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
	end    
})

LocalPlrTab:AddSlider({
	Name = "JumpPower",
	Min = 50, Max = 300, Default = 50, Color = Color3.fromRGB(73, 122, 214), Increment = 1, Save = true, Flag = "jumppower_lb", ValueName = "JumpPower",
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
	end    
})

LocalPlrTab:AddSlider({
	Name = "Hip Height",
	Min = 0, Max = 500, Default = 0, Color = Color3.fromRGB(233, 156, 69), Increment = 1, Save = true, Flag = "hipheight_lb", ValueName = "Hip Height",
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.HipHeight = Value
	end    
})

LocalPlrTab:AddToggle({
	Name = "Auto Jump", Default = true, Save = true, Flag = "autojump_lb",
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.AutoJumpEnabled = Value
	end
})

BlocksTab:AddToggle({ Name = "Loop Give Lucky Block", Default = false, Callback = function(Value) getgenv().yb = Value if Value then spawnyb() end end })
BlocksTab:AddToggle({ Name = "Loop Give Super Lucky Block", Default = false, Callback = function(Value) getgenv().sb = Value if Value then spawnsb() end end })
BlocksTab:AddToggle({ Name = "Loop Give Diamond Lucky Block", Default = false, Callback = function(Value) getgenv().db = Value if Value then spawndb() end end })
BlocksTab:AddToggle({ Name = "Loop Give Rainbow Lucky Block", Default = false, Callback = function(Value) getgenv().rb = Value if Value then spawnrb() end end })
BlocksTab:AddToggle({ Name = "Loop Give Galaxy Lucky Block", Default = false, Callback = function(Value) getgenv().gb = Value if Value then spawngb() end end })

BlocksTab:AddLabel(" ")

BlocksTab:AddButton({
	Name = "Give 1 Lucky Block",
	Callback = function()
        game:GetService("ReplicatedStorage").SpawnLuckyBlock:FireServer()
  	end    
})

BlocksTab:AddButton({
	Name = "Give 1 Super Lucky Block",
	Callback = function()
        game:GetService("ReplicatedStorage").SpawnSuperBlock:FireServer()
  	end    
})

BlocksTab:AddButton({
	Name = "Give 1 Diamond Lucky Block",
	Callback = function()
        game:GetService("ReplicatedStorage").SpawnDiamondBlock:FireServer()
    end    
})

BlocksTab:AddButton({
	Name = "Give 1 Rainbow Lucky Block",
	Callback = function()
        game:GetService("ReplicatedStorage").SpawnRainbowBlock:FireServer()
    end    
})

BlocksTab:AddButton({
	Name = "Give 1 Galaxy Lucky Block",
	Callback = function()
        game:GetService("ReplicatedStorage").SpawnGalaxyBlock:FireServer()
    end    
})

OrionLib:Init()
