getgenv().spamSoond = false
getgenv().stopsounds = false
getgenv().ka = false

local LocalPlayer = game.Players.LocalPlayer
-- yes i stole this from alsploit cry me a river i was to lazy to write it all its just one thing and it doesnt even do anything basically
task.spawn(function()
	if not makefolder then LocalPlayer:Kick("Your executor does not support making folders saving?? Switch to Fluxus | discord.gg/PDxxpQ3nqm") end
	if not writefile then LocalPlayer:Kick("Your executor does not support writing folders?? Switch to Fluxus | discord.gg/PDxxpQ3nqm") end
	if not readfile then LocalPlayer:Kick("Your executor does not support reading files?? Switch to Fluxus | discord.gg/PDxxpQ3nqm") end
	if not isfile then LocalPlayer:Kick("Your executor does not support returning files?? Switch to Fluxus | discord.gg/PDxxpQ3nqm") end
end)

function stopSound()
	while getgenv().stopsounds == true do
		local class_check = game.IsA
		local sound = Instance.new('Sound')
		local sound_stop = sound.Stop
		local get_descendants = game.GetDescendants

		for i,v in next, get_descendants(game) do 
			if class_check(v,"Sound") then
				sound_stop(v)
			end
		end

		get_descendants = nil
		sound:Remove()
		sound = nil 
		get_descendants = nil
		sound_stop = nil
        task.wait()
	end
end

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
        task.wait()
	end
end

function killAura()
	spawn(function()
		while getgenv().ka == true do
			for _,player in next,game:GetService'Players':GetPlayers() do
				if player ~= game:GetService'Players'.LocalPlayer then
					local args = {
						[1] = player
					}
				
					game:GetService('ReplicatedStorage').meleeEvent:FireServer(unpack(args))
				end 
			end
			wait()
		end
	end)
end

local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Impact Hub | Prison Life", HidePremium = false, SaveConfig = true, ConfigFolder = "Impact", IntroEnabled = false})

local LocalPlrTab = Window:MakeTab({Name = "Local Player", Icon = "rbxassetid://15862434941",PremiumOnly = false })
local GunTab = Window:MakeTab({Name = "Guns", Icon = "rbxassetid://15862513462",PremiumOnly = false })
local TPTab = Window:MakeTab({Name = "Teleport", Icon = "rbxassetid://15841341821",PremiumOnly = false })
local GameTab = Window:MakeTab({Name = "Game", Icon = "rbxassetid://15885360708",PremiumOnly = false })
local TeamTab = Window:MakeTab({Name = "Teams", Icon = "rbxassetid://15862677356",PremiumOnly = false })
local ExploitsTab = Window:MakeTab({Name = "Exploits", Icon = "rbxassetid://15841340999",PremiumOnly = false })
local InfoTab = Window:MakeTab({Name = "Info", Icon = "rbxassetid://15841490359",PremiumOnly = false })

GameTab:AddButton({
	Name = "Open Gate",
	Callback = function()
		local currentCframe = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
		local args = { [1] = workspace.Prison_ITEMS.buttons:FindFirstChild("Prison Gate"):FindFirstChild("Prison Gate") }
		local gate = game.Workspace["Prison_ITEMS"].buttons["Prison Gate"]["Prison Gate"]
		
		
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = gate.CFrame
		wait(.2)
		workspace.Remote.ItemHandler:InvokeServer(unpack(args))
		wait(.1)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = currentCframe
  	end    
})

GameTab:AddButton({
	Name = "Destroy Toilets",
	Callback = function()
		for i,v in pairs(game:GetService("Workspace")["Prison_Cellblock"]["Cells_B"]:GetDescendants()) do
			if v.Name == "Health" and v.Parent then
				v.Parent:Destroy()
			end
		end

        for i,v in pairs(game:GetService("Workspace")["Prison_Cellblock"]["Cells_A"]:GetDescendants()) do
			if v.Name == "Health" and v.Parent then
				v.Parent:Destroy()
			end
		end
  	end    
})

TPTab:AddButton({
	Name = "Nexus",
	Callback = function()
        local you = game.Players.LocalPlayer.Character.HumanoidRootPart
		local location = CFrame.new(893.334778, 99.9899826, 2386.13208, 0.999913335, 0, -0.0131643685, 0, 1, 0, 0.0131643685, 0, 0.999913335)
		
		you.CFrame = location
  	end    
})

GameTab:AddButton({
	Name = "Remove Doors",
	Callback = function()
		game:GetService("Workspace").Doors:Destroy()
		workspace.Prison_Cellblock.doors:Destroy()
		
  	end    
})

ExploitsTab:AddToggle({
	Name = "Kill Aura", Default = false, Save = true, Flag = "killaura_pl",
	Callback = function(bool)
		getgenv().ka = bool
        if bool then
            killAura()
        end
	end    
})

GunTab:AddDropdown({
	Name = "Give Gun",
	Default = "",
	Options = {"Remington 870", "AK-47", "M9", "M4AI", "Riot Sheild"},
	Callback = function(v)
        plr = game:GetService("Players").LocalPlayer
		local currentCframe = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame

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
			print(saved)
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
		wait(.25)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = currentCframe
	end    
})

GunTab:AddDropdown({
	Name = "Give Item",
	Default = "",
	Options = {"Key card","Crude Knife", "Hammer"},
	Callback = function(v)
        plr = game:GetService("Players").LocalPlayer
		local currentCframe = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame

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
                local ohInstance1 = Item:FindFirstChildOfClass("Part") or Item:FindFirstChildOfClass("UnionOperation")
                MoveTo(CFrame.new(ohInstance1.Position))
                repeat wait()
                    local ohInstance1 = Item:FindFirstChildOfClass("Part") or Item:FindFirstChildOfClass("UnionOperation")
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
		wait(.25)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = currentCframe
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
			module["Bullets"] = 18
			module["FireRate"] = 0.0000001
			module["Spread"] = 0
			module["Range"] = math.huge
			module["ReloadTime"] = 0.000001
			module["AutoFire"] = true
		end
	end    
})

ExploitsTab:AddToggle({
	Name = "Spam Sounds", Default = false, Save = true, Flag = "spamsounds_pl",
	Callback = function(bool)
		getgenv().spamSoond = bool
        if bool then
            spamSound()
        end
	end    
})
ExploitsTab:AddToggle({
	Name = "Stop Sounds", Default = false, Save = true, Flag = "stopsounds_pl",
	Callback = function(bool)
		getgenv().stopSound = bool
        if bool then
            stopSound()
        end
	end    
})
ExploitsTab:AddLabel("Abuses RFE being disabled.")

LocalPlrTab:AddSlider({
	Name = "Walkspeed",
	Min = 16, Max = 250, Default = 16, Color = Color3.fromRGB(129, 245, 56), Increment = 1, Save = true, Flag = "walkspeed_pl", ValueName = "Speed",
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
	end    
})

LocalPlrTab:AddSlider({
	Name = "JumpPower",
	Min = 50, Max = 300, Default = 50, Color = Color3.fromRGB(73, 122, 214), Increment = 1, Save = true, Flag = "jumppower_pl", ValueName = "JumpPower",
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
	end    
})

LocalPlrTab:AddSlider({
	Name = "Hip Height",
	Min = 0, Max = 500, Default = 0, Color = Color3.fromRGB(233, 156, 69), Increment = 1, Save = true, Flag = "hipheight_pl", ValueName = "Hip Height",
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.HipHeight = Value
	end    
})

LocalPlrTab:AddToggle({
	Name = "Auto Jump", Default = true, Save = true, Flag = "autojump_pl",
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.AutoJumpEnabled = Value
	end    
})

GameTab:AddButton({
	Name = "Always Day",
	Callback = function()
        while true do
			game.Lighting.ClockTime = 6.8
			game.Lighting.Brightness = 1
			game.Lighting.FogEnd = 1400
			game.Lighting.FogStart = 800
			game.Lighting.FogColor = Color3.new(135, 184, 214)
			game.Lighting.OutdoorAmbient = Color3.new(222, 222, 222)
			wait(0.001)
		end
  	end    
})

TPTab:AddButton({
	Name = "Hiding Spot",
	Callback = function()
        local you = game.Players.LocalPlayer.Character.HumanoidRootPart
		local location = CFrame.new(299.237854, 208.056396, 3610.72754, 0.99927485, 5.90756777e-10, 0.038076099, -5.77617731e-10, 1, -3.56074586e-10, -0.038076099, 3.33822942e-10, 0.99927485)
		
		you.CFrame = location
  	end    
})


TPTab:AddButton({
	Name = "Under Bridge",
	Callback = function()
        local you = game.Players.LocalPlayer.Character.HumanoidRootPart
		local location = CFrame.new(-70.1040802, 11.0993261, 1321.80713, -0.803904712, -3.27944205e-09, -0.594758093, -2.33716602e-09, 1, -2.35487874e-09, 0.594758093, -5.03049602e-10, -0.803904712)
		
		you.CFrame = location
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
		local currentCframe = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
		
		workspace.Remote.TeamEvent:FireServer("Bright blue")
		wait(1.5)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = currentCframe
  	end    
})

TeamTab:AddButton({
	Name = "Prisoner",
	Callback = function()
		local currentCframe = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame

        workspace.Remote.TeamEvent:FireServer("Bright orange")
		wait(1.5)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = currentCframe
  	end    
})

TPTab:AddButton({
	Name = "Neutral Spawn Locations",
	Callback = function()
        local you = game.Players.LocalPlayer.Character.HumanoidRootPart
		local location = CFrame.new(877.398315, 27.7899818, 2352.80005, -0.000709146087, -2.35237468e-10, -0.999999762, -1.38322492e-10, 1, -2.35139436e-10, 0.999999762, 1.38155709e-10, -0.000709146087)
		
		you.CFrame = location
  	end    
})

TPTab:AddButton({
	Name = "Cafeteria",
	Callback = function()
        local you = game.Players.LocalPlayer.Character.HumanoidRootPart
		local location = CFrame.new(931.542542, 99.9899368, 2294.22583, -0.999999285, 4.91239653e-08, 0.00120098412, 4.91538081e-08, 1, 2.48178331e-08, -0.00120098412, 2.4876849e-08, -0.999999285)
		
		you.CFrame = location
  	end    
})

TPTab:AddButton({
	Name = "Kitchen",
	Callback = function()
        local you = game.Players.LocalPlayer.Character.HumanoidRootPart
		local location = CFrame.new(919.5354, 99.9899368, 2233.21289, -0.999982774, -1.91831422e-08, 0.00587368105, -1.87098905e-08, 1, 8.06266911e-08, -0.00587368105, 8.05154059e-08, -0.999982774)
		
		you.CFrame = location
  	end    
})

TPTab:AddButton({
	Name = "Neutral Spawn Locations",
	Callback = function()
        local you = game.Players.LocalPlayer.Character.HumanoidRootPart
		local location = CFrame.new(877.398315, 27.7899818, 2352.80005, -0.000709146087, -2.35237468e-10, -0.999999762, -1.38322492e-10, 1, -2.35139436e-10, 0.999999762, 1.38155709e-10, -0.000709146087)
		
		you.CFrame = location
  	end    
})

-- TURNS YOU INTO A CRIMINAL
TeamTab:AddButton({
	Name = "Criminal",
	Callback = function()
		local currentCframe = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
		local location =  CFrame.new(-324.440582, 54.174263, 1850.27734, -0.424231559, -3.1885655e-08, -0.905553758, -5.62539242e-08, 1, -8.85752538e-09, 0.905553758, 4.71833097e-08, -0.424231559)
		
		OrionLib:MakeNotification({
			Name = "Note!",
			Content = "It will take 5 seconds for you to become a criminal and teleport you back!",
			Image = "rbxassetid://15910982486",
			Time = 5
		})

		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = location
		wait(4.25)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = currentCframe
  	end
})

TeamTab:AddLabel("Neutral coming soon.")
ExploitsTab:AddLabel("Warning: This will make you lag the longer you have it enabled!")
ExploitsTab:AddLabel("Stop sounds is broken.")

InfoTab:AddButton({
	Name = "Discord (Copys To Clipboard)",
	Callback = function()
        setclipboard("https://discord.gg/PDxxpQ3nqm")
        toclipboard("https://discord.gg/PDxxpQ3nqm")
  	end    
})

InfoTab:AddLabel("Join the discord to support us!")
InfoTab:AddLabel("We also take suggestions.")
InfoTab:AddLabel("If you find any bugs just DM me.")

InfoTab:AddLabel("Last updated: 1/7/2023")

InfoTab:AddButton({
	Name = "Delete UI",
	Callback = function()
        OrionLib:Destroy()
  	end    
})

OrionLib:Init()
