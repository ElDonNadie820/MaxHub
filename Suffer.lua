local DrRayLibrary = loadstring(game:HttpGet("https://raw.githubusercontent.com/AZYsGithub/DrRay-UI-Library/main/DrRay.lua"))()
local window = DrRayLibrary:Load("Free Version", "Default")

local tab = DrRayLibrary.newTab("Main", "ImageIdHere")

tab.newButton("Auto Fish", "Needs Acidic Rod (equipped)", function()
    while true do

    local args1 = {
        [1] = 1.0000001192092896
    }
    game:GetService("Players").LocalPlayer.Character:FindFirstChild("Acidic Rod").events.cast:FireServer(unpack(args1))

    wait(5)

    local args2 = {
        [1] = game:GetService("Players").LocalPlayer.Character:FindFirstChild("Acidic Rod")
    }
    game:GetService("ReplicatedStorage").events.reelfinished:FireServer(unpack(args2))
end
end)

tab.newButton("Fish Hack", "Makes Fish Follow Bar (need to click every time u fish sorry 😭)", function()
local player = game:GetService("Players").LocalPlayer
local playerGui = player.PlayerGui
local reel = playerGui:WaitForChild("reel")
local bar = reel:WaitForChild("bar")
local fish = bar:WaitForChild("fish")
local playerBar = bar:WaitForChild("playerbar")

local function followPlayerBar()
    while true do
        if fish and playerBar then
            fish.Position = playerBar.Position
        end
        wait(0.1)
    end
end

followPlayerBar()
end)
