Nebula = {}

function Nebula:New(Title)
	
	local NebulaLibrary = Instance.new("ScreenGui")
	local Frame = Instance.new("Frame")
	local UICorner = Instance.new("UICorner")
	local TopBar = Instance.new("Frame")
	local UICorner_2 = Instance.new("UICorner")
	local Frame_2 = Instance.new("Frame")
	local X = Instance.new("ImageButton")
	local ImageButton = Instance.new("ImageButton")
	local Name = Instance.new("TextLabel")
	local Content = Instance.new("Frame")
	local UIListLayout = Instance.new("UIListLayout")
	local Minimized = Instance.new("Frame")
	local UICorner_3 = Instance.new("UICorner")
	local X_2 = Instance.new("ImageButton")
	local Maximizar = Instance.new("ImageButton")
	local Name_2 = Instance.new("TextLabel")

	--Properties:

	NebulaLibrary.Name = "Nebula Library"
	NebulaLibrary.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
	NebulaLibrary.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

	Frame.Parent = NebulaLibrary
	Frame.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
	Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Frame.BorderSizePixel = 0
	Frame.Position = UDim2.new(0.316223651, 0, 0.0553359687, 0)
	Frame.Size = UDim2.new(0, 400, 0, 450)
	Frame.Active = true
	Frame.Draggable = true

	UICorner.Parent = Frame

	TopBar.Name = "TopBar"
	TopBar.Parent = Frame
	TopBar.BackgroundColor3 = Color3.fromRGB(65, 65, 65)
	TopBar.BorderColor3 = Color3.fromRGB(0, 0, 0)
	TopBar.BorderSizePixel = 0
	TopBar.Size = UDim2.new(0, 400, 0, 50)

	UICorner_2.Parent = TopBar

	Frame_2.Name = " "
	Frame_2.Parent = TopBar
	Frame_2.BackgroundColor3 = Color3.fromRGB(65, 65, 65)
	Frame_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Frame_2.BorderSizePixel = 0
	Frame_2.Position = UDim2.new(0, 0, 0.419999987, 0)
	Frame_2.Size = UDim2.new(0, 400, 0, 29)
	Frame_2.ZIndex = 0

	X.Name = "X"
	X.Parent = TopBar
	X.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	X.BackgroundTransparency = 1.000
	X.BorderColor3 = Color3.fromRGB(0, 0, 0)
	X.BorderSizePixel = 0
	X.Position = UDim2.new(0.912500024, 0, 0.13777779, 0)
	X.Size = UDim2.new(0, 35, 0, 35)
	X.Image = "http://www.roblox.com/asset/?id=6031094678"
	X.ImageColor3 = Color3.fromRGB(130, 130, 130)

	ImageButton.Name = "-"
	ImageButton.Parent = TopBar
	ImageButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ImageButton.BackgroundTransparency = 1.000
	ImageButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
	ImageButton.BorderSizePixel = 0
	ImageButton.Position = UDim2.new(0.824999988, 0, -0.00222221366, 0)
	ImageButton.Size = UDim2.new(0, 35, 0, 35)
	ImageButton.Image = "http://www.roblox.com/asset/?id=6026568240"
	ImageButton.ImageColor3 = Color3.fromRGB(130, 130, 130)

	Name.Name = "Name"
	Name.Parent = TopBar
	Name.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Name.BackgroundTransparency = 1.000
	Name.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Name.BorderSizePixel = 0
	Name.Size = UDim2.new(0, 200, 0, 50)
	Name.Font = Enum.Font.RobotoMono
	Name.Text = "Name"
	Name.TextColor3 = Color3.fromRGB(255, 170, 0)
	Name.TextScaled = true
	Name.TextSize = 14.000
	Name.TextWrapped = true
	Name.Text = Title

	Content.Name = "Content"
	Content.Parent = Frame
	Content.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Content.BackgroundTransparency = 1.000
	Content.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Content.BorderSizePixel = 0
	Content.Position = UDim2.new(0, 0, 0.111111112, 0)
	Content.Size = UDim2.new(0, 400, 0, 400)

	UIListLayout.Parent = Content
	UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout.Padding = UDim.new(0, 10)

	Minimized.Name = "Minimized"
	Minimized.Parent = NebulaLibrary
	Minimized.BackgroundColor3 = Color3.fromRGB(65, 65, 65)
	Minimized.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Minimized.BorderSizePixel = 0
	Minimized.Position = UDim2.new(0.316223651, 0, 0.450373292, 0)
	Minimized.Size = UDim2.new(0, 400, 0, 50)
	Minimized.Visible = false
	Minimized.Active = true
	Minimized.Draggable = true

	UICorner_3.Parent = Minimized

	X_2.Name = "X"
	X_2.Parent = Minimized
	X_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	X_2.BackgroundTransparency = 1.000
	X_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
	X_2.BorderSizePixel = 0
	X_2.Position = UDim2.new(0.912500024, 0, 0.217777714, 0)
	X_2.Size = UDim2.new(0, 35, 0, 35)
	X_2.Image = "http://www.roblox.com/asset/?id=6031094678"
	X_2.ImageColor3 = Color3.fromRGB(130, 130, 130)

	Maximizar.Name = "Maximizar"
	Maximizar.Parent = Minimized
	Maximizar.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Maximizar.BackgroundTransparency = 1.000
	Maximizar.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Maximizar.BorderSizePixel = 0
	Maximizar.Position = UDim2.new(0.824999988, 0, 0.217777714, 0)
	Maximizar.Size = UDim2.new(0, 35, 0, 35)
	Maximizar.Image = "http://www.roblox.com/asset/?id=6026568256"
	Maximizar.ImageColor3 = Color3.fromRGB(130, 130, 130)

	Name_2.Name = "Name"
	Name_2.Parent = Minimized
	Name_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Name_2.BackgroundTransparency = 1.000
	Name_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Name_2.BorderSizePixel = 0
	Name_2.Size = UDim2.new(0, 200, 0, 50)
	Name_2.Font = Enum.Font.RobotoMono
	Name_2.Text = "Name"
	Name_2.TextColor3 = Color3.fromRGB(255, 170, 0)
	Name_2.TextScaled = true
	Name_2.TextSize = 14.000
	Name_2.TextWrapped = true
	Name_2.Text = Title

	-- Scripts:

	local function JYTGTL_fake_script() -- X.RemoveNebulaLibraryOnClick 
		local script = Instance.new('LocalScript', X)

		local button = script.Parent
		local nebulaLibrary = button.Parent.Parent.Parent.Parent

		button.MouseButton1Click:Connect(function()
			nebulaLibrary:Destroy()
		end)


	end
	coroutine.wrap(JYTGTL_fake_script)()
	local function AXWFV_fake_script() -- ImageButton.MinimizeFrameOnClick 
		local script = Instance.new('LocalScript', ImageButton)

		local button = script.Parent
		local frame = button.Parent.Parent
		local minimizedFrame = frame.Parent:FindFirstChild("Minimized")

		button.MouseButton1Click:Connect(function()
			frame.Visible = false
			if minimizedFrame then
				minimizedFrame.Visible = true
				minimizedFrame.BackgroundTransparency = 1
				for i = 1, 0, -0.1 do
					minimizedFrame.BackgroundTransparency = i
					task.wait(0.02)
				end
			end
		end)


	end
	coroutine.wrap(AXWFV_fake_script)()
	local function LMINIC_fake_script() -- X_2.RemoveNebulaLibraryOnClick 
		local script = Instance.new('LocalScript', X_2)

		local button = script.Parent
		local nebulaLibrary = button.Parent.Parent.Parent

		button.MouseButton1Click:Connect(function()
			nebulaLibrary:Destroy()
		end)


	end
	coroutine.wrap(LMINIC_fake_script)()
	local function QKEUK_fake_script() -- Maximizar.MaximizeFrameOnClick 
		local script = Instance.new('LocalScript', Maximizar)

		local button = script.Parent
		local minimizedFrame = button.Parent
		local frame = minimizedFrame.Parent:FindFirstChild("Frame")

		button.MouseButton1Click:Connect(function()
			minimizedFrame.Visible = false
			if frame then
				frame.Visible = true
				frame.BackgroundTransparency = 1
				for i = 1, 0, -0.1 do
					frame.BackgroundTransparency = i
					task.wait(0.02)
				end
			end
		end)


	end
	coroutine.wrap(QKEUK_fake_script)()
	
	_G.Frame = {}
	function _G.Frame:Button(Name,Call)
		
		local Button = Instance.new("Frame")
		local Click = Instance.new("ImageButton")
		local ButtonName = Instance.new("TextLabel")
		
		Button.Name = "Button"
		Button.Parent = Content
		Button.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
		Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Button.BorderSizePixel = 0
		Button.Position = UDim2.new(0, 0, 0.300000012, 0)
		Button.Size = UDim2.new(0, 400, 0, 50)
		
		ButtonName.Name = "ButtonName"
		ButtonName.Parent = Button
		ButtonName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		ButtonName.BackgroundTransparency = 1.000
		ButtonName.BorderColor3 = Color3.fromRGB(0, 0, 0)
		ButtonName.BorderSizePixel = 0
		ButtonName.Size = UDim2.new(0, 150, 0, 50)
		ButtonName.Font = Enum.Font.SourceSans
		ButtonName.Text = "Button"
		ButtonName.TextColor3 = Color3.fromRGB(255, 170, 0)
		ButtonName.TextScaled = true
		ButtonName.TextSize = 14.000
		ButtonName.TextWrapped = true
		ButtonName.Text = Name
		
		Click.Name = "Click"
		Click.Parent = Button
		Click.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Click.BackgroundTransparency = 1.000
		Click.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Click.BorderSizePixel = 0
		Click.Position = UDim2.new(0.875, 0, 0, 0)
		Click.Size = UDim2.new(0, 50, 0, 43)
		Click.Image = "http://www.roblox.com/asset/?id=6031229361"
		Click.ImageColor3 = Color3.fromRGB(130, 130, 130)
		
		Click.MouseButton1Click:Connect(function()
			
			pcall(Call)
			
		end)
		
	end
	
	return _G.Frame
	
end
