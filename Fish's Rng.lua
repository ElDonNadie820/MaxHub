-- made for fish rng
local Luna = loadstring(game:HttpGet("https://raw.githubusercontent.com/Nebula-Softworks/Luna-Interface-Suite/refs/heads/main/source.lua", true))()

local Window = Luna:CreateWindow({
	Name = "Luna Hub", -- This Is Title Of Your Window
	Subtitle = nil, -- A Gray Subtitle next To the main title.
	LogoID = "82795327169782", -- The Asset ID of your logo. Set to nil if you do not have a logo for Luna to use.
	LoadingEnabled = true, -- Whether to enable the loading animation. Set to false if you do not want the loading screen or have your own custom one.
	LoadingTitle = "Welcome To Luna Hub", -- Header for loading screen
	LoadingSubtitle = "by maxlol2023k or @eldonnadie on yt", -- Subtitle for loading screen

	ConfigSettings = {
		RootFolder = nil, -- The Root Folder Is Only If You Have A Hub With Multiple Game Scripts and u may remove it. DO NOT ADD A SLASH
		ConfigFolder = "Big Hub" -- The Name Of The Folder Where Luna Will Store Configs For This Script. DO NOT ADD A SLASH
	},

	KeySystem = false, -- As Of Beta 6, Luna Has officially Implemented A Key System!
	KeySettings = {
		Title = "Luna Example Key",
		Subtitle = "Key System",
		Note = "Best Key System Ever! Also, Please Use A HWID Keysystem like Pelican, Luarmor etc. that provide key strings based on your HWID since putting a simple string is very easy to bypass",
		SaveInRoot = false, -- Enabling will save the key in your RootFolder (YOU MUST HAVE ONE BEFORE ENABLING THIS OPTION)
		SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
		Key = {"Example Key"}, -- List of keys that will be accepted by the system, please use a system like Pelican or Luarmor that provide key strings based on your HWID since putting a simple string is very easy to bypass
		SecondAction = {
			Enabled = false, -- Set to false if you do not want a second action,
			Type = "Link", -- Link / Discord.
			Parameter = "" -- If Type is Discord, then put your invite link (DO NOT PUT DISCORD.GG/). Else, put the full link of your key system here.
		}
	}
})

local Main = Window:CreateTab({
	Name = "Main",
	Icon = "business",
	ImageSource = "Material",
	ShowTitle = true -- This will determine whether the big header text in the tab will show
})

local AutoF = Window:CreateTab({
	Name = "Auto Farm",
	Icon = "autorenew",
	ImageSource = "Material",
	ShowTitle = true -- This will determine whether the big header text in the tab will show
})

local Settings = Window:CreateTab({
	Name = "Settings",
	Icon = "build",
	ImageSource = "Material",
	ShowTitle = true -- This will determine whether the big header text in the tab will show
})

local Craft = Window:CreateTab({
	Name = "Craft/Equip",
	Icon = "build",
	ImageSource = "Material",
	ShowTitle = true -- This will determine whether the big header text in the tab will show
})

local Button = Main:CreateButton({
	Name = "Instant Finish Obby",
	Description = nil, -- Creates A Description For Users to know what the button does (looks bad if you use it all the time),
    	Callback = function()
         local player = game:GetService("Players").LocalPlayer
local targetPosition = Vector3.new(-1687.2623291015625, 452.7837219238281, 146.44384765625)

player.Character:SetPrimaryPartCFrame(CFrame.new(targetPosition))
    	end
})

local Button = AutoF:CreateButton({
	Name = "Enable QuickRoll",
	Description = nil, -- Creates A Description For Users to know what the button does (looks bad if you use it all the time),
    	Callback = function()
local args = {
    [1] = game:GetService("Players").LocalPlayer
}

game:GetService("ReplicatedStorage").Remotes.EnableQuick:FireServer(unpack(args))

local player = game:GetService("Players").LocalPlayer
local quickButtonColor = player.PlayerGui.SpinUI.QuickButton.Color

quickButtonColor.Visible = true
    	end
})

local Button = Settings:CreateButton({
	Name = "Afk",
	Description = nil, -- Creates A Description For Users to know what the button does (looks bad if you use it all the time),
    	Callback = function()
local player = game.Players.LocalPlayer
local screenGui = Instance.new("ScreenGui")
screenGui.Parent = player:WaitForChild("PlayerGui")
screenGui.Name = "KidBeater"

-- Crea un TextLabel para mostrar el tiempo
local timeLabel = Instance.new("TextLabel")
timeLabel.Parent = screenGui
timeLabel.Text = "TimeAfk: 0"
timeLabel.Size = UDim2.new(0, 200, 0, 50) -- Tamaño del label
timeLabel.Position = UDim2.new(0.5, -100, 0.5, -25) -- Centrado en la pantalla
timeLabel.TextColor3 = Color3.fromRGB(255, 255, 255) -- Color blanco
timeLabel.TextScaled = true -- Ajusta el tamaño del texto para que encaje en el label

-- Inicializa una variable para el tiempo de inactividad
local timeAfk = 0

-- Función para actualizar el tiempo
local function updateAfkTime()
    while true do
        wait(1) -- Espera un segundo
        timeAfk = timeAfk + 1
        timeLabel.Text = "TimeAfk: " .. timeAfk -- Actualiza el texto
    end
end

-- Llama a la función para empezar a contar el tiempo
updateAfkTime()
end
})

local Button = Settings:CreateButton({
	Name = "Delete Afk",
	Description = nil, -- Creates A Description For Users to know what the button does (looks bad if you use it all the time),
    	Callback = function()
local player = game:GetService("Players").LocalPlayer
local kidBeater = player.PlayerGui:WaitForChild("KidBeater")

wait(0.5)

if kidBeater then
    kidBeater:Destroy()
end
end
})

local Button = Craft:CreateButton({
	Name = "Luck Bracelet",
	Description = nil, -- Creates A Description For Users to know what the button does (looks bad if you use it all the time),
    	Callback = function()
local args = {
    [1] = "Luck Bracelet"
}

game:GetService("ReplicatedStorage").Remotes.Glove:InvokeServer(unpack(args))

    	end
})

local Button = Craft:CreateButton({
	Name = "Warrior Bracelet",
	Description = nil, -- Creates A Description For Users to know what the button does (looks bad if you use it all the time),
    	Callback = function()
local args = {
    [1] = "Warrior Bracelet"
}

game:GetService("ReplicatedStorage").Remotes.Glove:InvokeServer(unpack(args))

    	end
})

local Button = Craft:CreateButton({
	Name = "Greed Bracelet",
	Description = nil, -- Creates A Description For Users to know what the button does (looks bad if you use it all the time),
    	Callback = function()
local args = {
    [1] = "Greed Bracelet"
}

game:GetService("ReplicatedStorage").Remotes.Glove:InvokeServer(unpack(args))

    	end
})

local Button = Craft:CreateButton({
	Name = "Thunder Bracelet",
	Description = nil, -- Creates A Description For Users to know what the button does (looks bad if you use it all the time),
    	Callback = function()
local args = {
    [1] = "Thunder Bracelet"
}

game:GetService("ReplicatedStorage").Remotes.Glove:InvokeServer(unpack(args))

    	end
})

local Button = Craft:CreateButton({
	Name = "Royal Bracelet",
	Description = nil, -- Creates A Description For Users to know what the button does (looks bad if you use it all the time),
    	Callback = function()
local args = {
    [1] = "Royal Bracelet"
}

game:GetService("ReplicatedStorage").Remotes.Glove:InvokeServer(unpack(args))

    	end
})

local Button = Craft:CreateButton({
	Name = "Aegis Gauntlet",
	Description = nil, -- Creates A Description For Users to know what the button does (looks bad if you use it all the time),
    	Callback = function()
local args = {
    [1] = "Aegis Gauntlet"
}

game:GetService("ReplicatedStorage").Remotes.Glove:InvokeServer(unpack(args))

    	end
})

Window:CreateHomeTab({
	SupportedExecutors = {Delta}, -- A Table Of Executors Your Script Supports. Add strings of the executor names for each executor.
	DiscordInvite = "2zr9eeuu", -- The Discord Invite Link. Do Not Include discord.gg/ | Only Include the code.
	Icon = 1, -- By Default, The Icon Is The Home Icon. If You would like to change it to dashboard, replace the interger with 2
})
