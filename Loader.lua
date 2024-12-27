local library = loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/ShaddowScripts/Main/main/Library"))()

local Main = library:CreateWindow("MaxHub","Deep Sea")

local tab = Main:CreateTab("Main")
local tab2 = Main:CreateTab("Settings")

tab:CreateButton("Auto Fish",function() --need acidic rod with hasty
      while true do
    local args1 = {
        [1] = 0.00001
    }
    game:GetService("Players").LocalPlayer.Character:FindFirstChild("Acidic Rod").events.cast:FireServer(unpack(args1))

    wait(0.3)

    local args2 = {
        [1] = game:GetService("Players").LocalPlayer.Character:FindFirstChild("Acidic Rod")
    }
    game:GetService("ReplicatedStorage").events.reelfinished:FireServer(unpack(args2))
end
end)

tab:CreateButton("Safe Place Make",function()
local parte = Instance.new("Part")
parte.Name = "ParteBlanca"
parte.Size = Vector3.new(50, 0.5000000596046448, 50)  -- Tamaño especificado
parte.Position = Vector3.new(-1184.078, 200.389648, -1141.19434)  -- Posición especificada
parte.Color = Color3.fromRGB(255, 255, 255)  -- Color blanco
parte.Anchored = true  -- Anclar la parte para que no se mueva
parte.Parent = game.Workspace  -- Insertar la parte en el Workspace

-- Crear la segunda parte (la parte negra)
local part = Instance.new("Part")
part.Name = "SafePlaceTP"
part.Size = Vector3.new(5, 8, 5)  -- Tamaño de la parte
part.Position = Vector3.new(-1184.078, 210.389648, -1141.19434)  -- Posición especificada
part.Color = Color3.fromRGB(0, 0, 0)  -- Color negro
part.CanCollide = false  -- Deshabilitar colisión
part.Parent = game.Workspace
part.Anchored = true
end)

tab:CreateButton("Safe Place Tp",function()
local player = game.Players.LocalPlayer

if player and player.Character then
    local character = player.Character
    local humanoidRootPart = character:WaitForChild("HumanoidRootPart")  -- Obtener la parte que representa la posición del personaje

    local newCFrame = CFrame.new(-1184.078, 210.389648, -1141.19434)
    
    humanoidRootPart.CFrame = newCFrame
end
end)

tab2:CreateButton("Night Mode",function()
local player = game:GetService("Players").LocalPlayer
local playerGui = player.PlayerGui

local hud = playerGui:WaitForChild("hud")

local frame = Instance.new("Frame")
frame.Parent = hud  -- Establece el frame como hijo de "hud"
frame.Size = UDim2.new(1, 0, 1, 0)  -- El tamaño del frame ocupa toda la pantalla
frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)  -- Color negro
frame.BackgroundTransparency = 0.5
frame.Name = "NightMode"
end)

tab2:CreateButton("happi face",function()
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "happy"
screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 50, 0, 50)
frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
frame.Position = UDim2.new(0, 100, 0, 100) -- Puedes cambiar la posición inicial
frame.Parent = screenGui
frame.BackgroundTransparency =1

local textLabel = Instance.new("TextLabel")
textLabel.Size = UDim2.new(1, 0, 1, 0)  -- Ocupa todo el espacio del Frame
textLabel.Text = ":)"
textLabel.TextColor3 = Color3.fromRGB(0, 0, 0) -- Negro
textLabel.TextScaled = true  -- Hace que el texto se ajuste al tamaño del Frame
textLabel.BackgroundTransparency = 0  -- Hace que el fondo del texto sea transparente
textLabel.Parent = frame
textLabel.Active = true
textLabel.Draggable = true
textLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)

local dragging = true
local dragInput, dragStart, startPos

frame.InputBegan:Connect(function(input, gameProcessedEvent)
    if gameProcessedEvent then return end

    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        dragging = true
        dragStart = input.Position
        startPos = frame.Position
    end
end)

frame.InputChanged:Connect(function(input)
    if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
        local delta = input.Position - dragStart
        frame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
    end
end)

frame.InputEnded:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        dragging = true
    end
end)
end)
