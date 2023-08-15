local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()

if game.PlaceId == 155615604 then
	local Window = Library.CreateLib("Grape Hub (Prison Life - 155615604)", "GrapeTheme")

	local Info = Window:NewTab("Info")
	local InfoSection = Info:NewSection("Info")

	-- PLAYER STUFF
	local Player = Window:NewTab("Player")
	local PlrSection = Player:NewSection("Player")


	InfoSection:NewKeybind("Hide / UnHide GUI", "bruh", Enum.KeyCode.RightAlt, function()
		Library:ToggleUI()
	end)

	PlrSection:NewSlider("Walkspeed", "Changes the players speed.", 250, 16, function(v)
    	game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = v
	end)

	

	PlrSection:NewSlider("JumpPower", "Changes the players jump power.", 500, 50, function(v)
    	game.Players.LocalPlayer.Character.Humanoid.JumpPower = v
	end)
    
	-- ITEM STUFF
	local Givers = Window:NewTab("Givers")
	local GiverSection = Givers:NewSection("Givers")
	
	local GunMod = Window:NewTab("Gun Mod")
	local GunModSection = GunMod:NewSection("Gun Mod")

	GiverSection:NewDropdown("Gun Giver", "Gives the player a gun. (Needs gamepass for Sheild/M4A1)", {"Remington 870", "AK-47", "M9", "M4AI", "Riot Sheild"}, function(v)
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
	end)

	GiverSection:NewDropdown("Item Giver", "Gives the player a item.", {"Crude Knife", "Hammer"}, function(v)
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
	end)

	GiverSection:NewDropdown("Hat Giver (Need Gamepass OR BREAKS)", "Gives the player a hat.", {"Police hat", "Ski mask", "Riot helmet"}, function(v)
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
    
    
    
    function GetHat(Item,Ignore)
        local saved = game:GetService("Players").LocalPlayer.Character:GetPrimaryPartCFrame()
        if workspace.Prison_ITEMS.hats:FindFirstChild(Item) and workspace.Prison_ITEMS.hats:FindFirstChild(Item):FindFirstChild("hat") then
            Item =workspace.Prison_ITEMS.hats:FindFirstChild(Item)
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
    
    
    GetHat(v,true)
	end)

	GiverSection:NewDropdown("Clothing Giver (NEED GAMEPASS OR BREAKS)", "Gives the player clothes.", {"Riot Police"}, function(v)
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
    
    
    
    function GetCloth(Item,Ignore)
        local saved = game:GetService("Players").LocalPlayer.Character:GetPrimaryPartCFrame()
        if workspace.Prison_ITEMS.clothes:FindFirstChild(Item) and workspace.Prison_ITEMS.clothes:FindFirstChild(Item):FindFirstChild("ITEMPICKUP") then
            Item =workspace.Prison_ITEMS.clothes:FindFirstChild(Item)
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
    
    
    GetCloth(v,true)
	end)

	

	-- Gun mod

	GunModSection:NewDropdown("Infinite Ammo", "Makes the gun have Infinite Ammo.", {"Taser","Remington 870", "AK-47", "M9", "M4AI", "Riot Sheild"}, function(v)
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
	end)

	GunModSection:NewDropdown("Auto Fire", "Makes the gun auto fire when you hold click.", {"Taser","Remington 870", "AK-47", "M9", "M4AI", "Riot Sheild"}, function(v)
		local module = nil
		if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(v) then
			module = require(game:GetService("Players").LocalPlayer.Backpack[v].GunStates)
		elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild(v) then
			module = require(game:GetService("Players").LocalPlayer.Character[v].GunStates)
		end

		if module then
			module["AutoFire"] = true
		end
	end)

	GunModSection:NewDropdown("God Gun", "Makes the gun super OP!", {"Taser","Remington 870", "AK-47", "M9", "M4AI", "Riot Sheild"}, function(v)
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
	end)

	GunModSection:NewDropdown("Lag Gun", "Makes the server lag a ton!", {"Taser","Remington 870", "AK-47", "M9", "M4AI", "Riot Sheild"}, function(v)
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
	end)

	-- Teleports
	local Teleports = Window:NewTab("Teleports")
	local TPSection = Teleports:NewSection("Teleports")

	TPSection:NewButton("Cells", "Teleports the player to the cells.", function()
    	local you = game.Players.LocalPlayer.Character.HumanoidRootPart
		local location = CFrame.new(915, 99, 2421)
		
		you.CFrame = location
	end)

	TPSection:NewButton("Police Station", "Teleports the player to the Police Station/Armory.", function()
    	local you = game.Players.LocalPlayer.Character.HumanoidRootPart
		local location = CFrame.new(827, 99, 2260)
		
		you.CFrame = location
	end)

	TPSection:NewButton("Yard", "Teleports the player to the yard.", function()
    	local you = game.Players.LocalPlayer.Character.HumanoidRootPart
		local location = CFrame.new(817, 97, 2437)
		
		you.CFrame = location
	end)

	TPSection:NewButton("Criminal Base", "Teleports the player to the criminal base.", function()
    	local you = game.Players.LocalPlayer.Character.HumanoidRootPart
		local location = CFrame.new(-889, 121, 2074)
		
		you.CFrame = location
	end)

	local Teams = Window:NewTab("Teams")
	local TeamSection = Teams:NewSection("Teams")

	TeamSection:NewButton("Cop", "Changes the players team to Cop.", function()
		workspace.Remote.TeamEvent:FireServer("Bright blue")
	end)

	TeamSection:NewButton("Prisoner", "Changes the players team to Prisoner.", function()
		workspace.Remote.TeamEvent:FireServer("Bright orange")
	end)

	TeamSection:NewButton("Neutral (WARNING MAY KICK)", "Changes the players team to Neutral.", function()
		local args = {
        [1] = game:GetService("Players").LocalPlayer,
        [2] = "Medium stone grey"
    }
    
    workspace.Remote.loadchar:InvokeServer(unpack(args))
    local args = {
        [1] = PlayerName
    }
    
    workspace.Remote.loadchar:InvokeServer(unpack(args))
	end)

	elseif game.PlaceId == 6512923934 then
	
	local Window = Library.CreateLib("Grape Hub (Ultra Clickers Simulator - 6512923934)", "GrapeTheme")

	local Info = Window:NewTab("Info")
	local InfoSection = Info:NewSection("Info")

	InfoSection:NewKeybind("Hide / UnHide GUI", "bruh", Enum.KeyCode.RightAlt, function()
		Library:ToggleUI()
	end)

	-- PLAYER STUFF
	local Player = Window:NewTab("Player")
	local PlrSection = Player:NewSection("Player")

	PlrSection:NewSlider("Walkspeed", "Changes the players speed.", 250, 16, function(v)
    	game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = v
	end)

	PlrSection:NewSlider("JumpPower", "Changes the players jump power.", 250, 50, function(v)
    	game.Players.LocalPlayer.Character.Humanoid.JumpPower = v
	end)
end
