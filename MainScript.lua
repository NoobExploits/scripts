getgenv().spamSoond = false

function spamSound()
	while getgenv().spamSoond == true do
		local class_check = game.IsA
		local sound = Instance.new('Sound')
		local sound_stop = sound.Play
		local get_descendants = game.GetDescendants

		for i,v in next, get_descendants(game) do 
			if class_check(v,"Sound") then
				sound_stop(v)
			end
		end

		get_descendants = nil
		sound:Remove()
		get_descendants = nil
		sound_stop = nil
        wait()
	end
end

local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Impact Hub | Prison Life", HidePremium = false, SaveConfig = true, ConfigFolder = "Impact", IntroEnabled = false})

local LocalPlrTab = Window:MakeTab({Name = "Local Player", Icon = "rbxassetid://15862434941",PremiumOnly = false })
local GunTab = Window:MakeTab({Name = "Guns", Icon = "rbxassetid://15862513462",PremiumOnly = false })
local TPTab = Window:MakeTab({Name = "Teleport", Icon = "rbxassetid://15841341821",PremiumOnly = false })
local TeamTab = Window:MakeTab({Name = "Teams", Icon = "rbxassetid://15862677356",PremiumOnly = false })
local ExploitsTab = Window:MakeTab({Name = "Exploits", Icon = "rbxassetid://15841340999",PremiumOnly = false })
local InfoTab = Window:MakeTab({Name = "Info", Icon = "rbxassetid://15841490359",PremiumOnly = false })

GunTab:AddDropdown({
	Name = "Give Gun",
	Default = "",
	Options = {"Remington 870", "AK-47", "M9", "M4AI", "Riot Sheild"},
	Callback = function(v)
        plr = game:GetService("Players").LocalPlayer

        function unsit()
            plr.Character:FindFirstChildOfClass("Humanoid").Sit = false
        end   
        
        function MoveTo(Pos,t)
            unsit()
            pcall(function()
                if typeof(Pos):lower() == "position" then
                    Pos = CFrame.new(Pos)
                end
                for i =1,3 do
                    plr.Character:FindFirstChild("HumanoidRootPart").CFrame = Pos
                end
            end)
        end

        function GetGun(Item,Ignore)
            local saved = game:GetService("Players").LocalPlayer.Character:GetPrimaryPartCFrame()
            if workspace.Prison_ITEMS.giver:FindFirstChild(Item) and workspace.Prison_ITEMS.giver:FindFirstChild(Item):FindFirstChild("ITEMPICKUP") then
                Item =workspace.Prison_ITEMS.giver:FindFirstChild(Item)
                local ohInstance1 = Item:FindFirstChildOfClass("Part")
                MoveTo(CFrame.new(ohInstance1.Position))
                repeat wait()
                    local ohInstance1 = Item:FindFirstChildOfClass("Part")
                    MoveTo(CFrame.new(ohInstance1.Position))
                    task.spawn(function()
                        workspace.Remote.ItemHandler:InvokeServer(ohInstance1)
                    end)
                    wait()
                until plr.Backpack:FindFirstChild(Item.Name) or plr.Character:FindFirstChild(Item.Name)
            end
            if Ignore ~= true then
                plr.Character:SetPrimaryPartCFrame(Ignore or saved)
            end
        end

        GetGun(v,true)
	end    
})

GunTab:AddDropdown({
	Name = "Give Item",
	Default = "",
	Options = {"Crude Knife", "Hammer"},
	Callback = function(v)
        plr = game:GetService("Players").LocalPlayer

        function unsit()
            plr.Character:FindFirstChildOfClass("Humanoid").Sit = false
        end   
        
        function MoveTo(Pos,t)
            unsit()
            pcall(function()
                if typeof(Pos):lower() == "position" then
                    Pos = CFrame.new(Pos)
                end
                for i =1,3 do
                    plr.Character:FindFirstChild("HumanoidRootPart").CFrame = Pos
                end
            end)
        end

        function GetItem(Item,Ignore)
            local saved = game:GetService("Players").LocalPlayer.Character:GetPrimaryPartCFrame()
            if workspace.Prison_ITEMS.single:FindFirstChild(Item) and workspace.Prison_ITEMS.single:FindFirstChild(Item):FindFirstChild("ITEMPICKUP") then
                Item =workspace.Prison_ITEMS.single:FindFirstChild(Item)
                local ohInstance1 = Item:FindFirstChildOfClass("Part")
                MoveTo(CFrame.new(ohInstance1.Position))
                repeat wait()
                    local ohInstance1 = Item:FindFirstChildOfClass("Part")
                    MoveTo(CFrame.new(ohInstance1.Position))
                    task.spawn(function()
                        workspace.Remote.ItemHandler:InvokeServer(ohInstance1)
                    end)
                    wait()
                until plr.Backpack:FindFirstChild(Item.Name) or plr.Character:FindFirstChild(Item.Name)
            end
            if Ignore ~= true then
                plr.Character:SetPrimaryPartCFrame(Ignore or saved)
            end
        end

        GetItem(v,true)
	end    
})

GunTab:AddDropdown({
	Name = "Infinite Ammo",
	Default = "",
	Options = {"Taser","Remington 870", "AK-47", "M9", "M4AI"},
	Callback = function(v)
		local module = nil
		if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(v) then
			module = require(game:GetService("Players").LocalPlayer.Backpack[v].GunStates)
		elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild(v) then
			module = require(game:GetService("Players").LocalPlayer.Character[v].GunStates)
		end

		if module then
			module["MaxAmmo"] = math.huge
			module["CurrentAmmo"] = math.huge
			module["StoredAmmo"] = math.huge
		end
	end    
})

GunTab:AddDropdown({
	Name = "Auto Fire",
	Default = "",
	Options = {"Taser","Remington 870", "AK-47", "M9", "M4AI"},
	Callback = function(v)
		local module = nil
		if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(v) then
			module = require(game:GetService("Players").LocalPlayer.Backpack[v].GunStates)
		elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild(v) then
			module = require(game:GetService("Players").LocalPlayer.Character[v].GunStates)
		end

		if module then
			module["AutoFire"] = true
		end
	end    
})

GunTab:AddDropdown({
	Name = "OP Gun",
	Default = "",
	Options = {"Taser","Remington 870", "AK-47", "M9", "M4AI"},
	Callback = function(v)
		local module = nil
		if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(v) then
			module = require(game:GetService("Players").LocalPlayer.Backpack[v].GunStates)
		elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild(v) then
			module = require(game:GetService("Players").LocalPlayer.Character[v].GunStates)
		end

		if module then
			module["MaxAmmo"] = math.huge
			module["CurrentAmmo"] = math.huge
			module["StoredAmmo"] = math.huge
			module["FireRate"] = 0.000001
			module["Spread"] = 0
			module["Range"] = math.huge
			module["ReloadTime"] = 0.000001
			module["AutoFire"] = true
		end
	end    
})

GunTab:AddDropdown({
	Name = "Lag Gun",
	Default = "",
	Options = {"Taser","Remington 870", "AK-47", "M9", "M4AI"},
	Callback = function(v)
		local module = nil
		if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(v) then
			module = require(game:GetService("Players").LocalPlayer.Backpack[v].GunStates)
		elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild(v) then
			module = require(game:GetService("Players").LocalPlayer.Character[v].GunStates)
		end

		if module then
			module["MaxAmmo"] = math.huge
			module["CurrentAmmo"] = math.huge
			module["StoredAmmo"] = math.huge
			module["Bullets"] = 15
			module["FireRate"] = 0.0000001
			module["Spread"] = 0
			module["Range"] = math.huge
			module["ReloadTime"] = 0.000001
			module["AutoFire"] = true
		end
	end    
})

ExploitsTab:AddToggle({
	Name = "Spam Sounds", Default = false, Save = true, Flag = "spamsounds",
	Callback = function(bool)
		getgenv().spamSoond = bool
        if bool then
            spamSound()
        end
	end    
})
ExploitsTab:AddLabel("Abuses RFE being disabled.")

LocalPlrTab:AddSlider({
	Name = "Walkspeed",
	Min = 16, Max = 250, Default = 16, Color = Color3.fromRGB(129, 245, 56), Increment = 1, Save = true, Flag = "walkspeed", ValueName = "Speed",
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
	end    
})

LocalPlrTab:AddSlider({
	Name = "JumpPower",
	Min = 50, Max = 300, Default = 50, Color = Color3.fromRGB(129, 245, 56), Increment = 1, Save = true, Flag = "jumppower", ValueName = "JumpPower",
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
	end    
})

TPTab:AddButton({
	Name = "Criminal Base",
	Callback = function()
        local you = game.Players.LocalPlayer.Character.HumanoidRootPart
		local location = CFrame.new(-889, 121, 2074)
		
		you.CFrame = location
  	end    
})

TPTab:AddButton({
	Name = "Police Station",
	Callback = function()
        local you = game.Players.LocalPlayer.Character.HumanoidRootPart
		local location = CFrame.new(827, 99, 2260)
		
		you.CFrame = location
  	end    
})

TPTab:AddButton({
	Name = "Cells",
	Callback = function()
        local you = game.Players.LocalPlayer.Character.HumanoidRootPart
		local location = CFrame.new(915, 99, 2421)
		
		you.CFrame = location
  	end    
})

TPTab:AddButton({
	Name = "Yard",
	Callback = function()
        local you = game.Players.LocalPlayer.Character.HumanoidRootPart
		local location = CFrame.new(817, 97, 2437)
		
		you.CFrame = location
  	end    
})

TeamTab:AddButton({
	Name = "Cop",
	Callback = function()
        workspace.Remote.TeamEvent:FireServer("Bright blue")
  	end    
})

TeamTab:AddButton({
	Name = "Prisoner",
	Callback = function()
        workspace.Remote.TeamEvent:FireServer("Bright orange")
  	end    
})

TeamTab:AddLabel("Neutral + Criminal coming soon.")
ExploitsTab:AddLabel("Warning: This will make you lag the longer you have it enabled!")

InfoTab:AddButton({
	Name = "Discord (Copys To Clipboard)",
	Callback = function()
        setclipboard("https://discord.gg/PDxxpQ3nqm")
        toclipboard("https://discord.gg/PDxxpQ3nqm")
  	end    
})

InfoTab:AddButton({
	Name = "Delete UI",
	Callback = function()
        OrionLib:Destroy()
  	end    
})

OrionLib:Init()
