-- Gui to Lua
-- Version: 3.2

-- Instances:

local jfshjsjkfsl = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local Save = Instance.new("TextButton")
local UICorner = Instance.new("UICorner")
local TextLabel = Instance.new("TextLabel")
local UICorner_2 = Instance.new("UICorner")
local current = Instance.new("TextButton")
local UICorner_3 = Instance.new("UICorner")
local alphadrop = Instance.new("TextButton")
local UICorner_4 = Instance.new("UICorner")
local bark = Instance.new("TextButton")
local UICorner_5 = Instance.new("UICorner")

--Properties:

jfshjsjkfsl.Name = "jfshjsjkfsl"
jfshjsjkfsl.Parent = game.CoreGui
jfshjsjkfsl.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = jfshjsjkfsl
Frame.BackgroundColor3 = Color3.fromRGB(39, 39, 39)
Frame.Position = UDim2.new(0.124012627, 0, 0.380634397, 0)
Frame.Size = UDim2.new(0, 183, 0, 231)

Save.Name = "Save"
Save.Parent = Frame
Save.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
Save.BorderSizePixel = 0
Save.Position = UDim2.new(0.113098949, 0, 0.173953056, 0)
Save.Size = UDim2.new(0, 141, 0, 36)
Save.Font = Enum.Font.GothamSemibold
Save.Text = "Save Current Slot"
Save.TextColor3 = Color3.fromRGB(255, 255, 255)
Save.TextScaled = true
Save.TextSize = 14.000
Save.TextWrapped = true

UICorner.CornerRadius = UDim.new(0, 3)
UICorner.Parent = Save

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0.141261414, 0, 0, 0)
TextLabel.Size = UDim2.new(0, 130, 0, 33)
TextLabel.Font = Enum.Font.GothamSemibold
TextLabel.Text = "Zoro Save v.1"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true

UICorner_2.CornerRadius = UDim.new(0, 5)
UICorner_2.Parent = Frame

current.Name = "current"
current.Parent = Frame
current.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
current.BorderSizePixel = 0
current.Position = UDim2.new(0.113343649, 0, 0.366727382, 0)
current.Size = UDim2.new(0, 141, 0, 36)
current.Font = Enum.Font.GothamSemibold
current.Text = "Print My Current Slot"
current.TextColor3 = Color3.fromRGB(255, 255, 255)
current.TextScaled = true
current.TextSize = 14.000
current.TextWrapped = true

UICorner_3.CornerRadius = UDim.new(0, 3)
UICorner_3.Parent = current

alphadrop.Name = "alphadrop"
alphadrop.Parent = Frame
alphadrop.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
alphadrop.BorderSizePixel = 0
alphadrop.Position = UDim2.new(0.113343649, 0, 0.55823487, 0)
alphadrop.Size = UDim2.new(0, 141, 0, 36)
alphadrop.Font = Enum.Font.GothamSemibold
alphadrop.Text = "Execute Alpha Drop"
alphadrop.TextColor3 = Color3.fromRGB(255, 255, 255)
alphadrop.TextScaled = true
alphadrop.TextSize = 14.000
alphadrop.TextWrapped = true

UICorner_4.CornerRadius = UDim.new(0, 3)
UICorner_4.Parent = alphadrop

bark.Name = "bark"
bark.Parent = Frame
bark.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
bark.BorderSizePixel = 0
bark.Position = UDim2.new(0.113343649, 0, 0.768102467, 0)
bark.Size = UDim2.new(0, 141, 0, 36)
bark.Font = Enum.Font.GothamSemibold
bark.Text = "Execute Bark"
bark.TextColor3 = Color3.fromRGB(255, 255, 255)
bark.TextScaled = true
bark.TextSize = 14.000
bark.TextWrapped = true

UICorner_5.CornerRadius = UDim.new(0, 3)
UICorner_5.Parent = bark

-- Scripts:

local function MDIUV_fake_script() -- Frame.dragable 
	local script = Instance.new('LocalScript', Frame)

	local UserInputService = game:GetService("UserInputService")
	
	local gui = script.Parent
	
	local dragging
	local dragInput
	local dragStart
	local startPos
	
	local function update(input)
		local delta = input.Position - dragStart
		gui.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
	end
	
	gui.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			dragging = true
			dragStart = input.Position
			startPos = gui.Position
	
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragging = false
				end
			end)
		end
	end)
	
	gui.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			dragInput = input
		end
	end)
	
	UserInputService.InputChanged:Connect(function(input)
		if input == dragInput and dragging then
			update(input)
		end
	end)
	
end
coroutine.wrap(MDIUV_fake_script)()
local function GZTLJXI_fake_script() -- jfshjsjkfsl.botao 
	local script = Instance.new('LocalScript', jfshjsjkfsl)

	game.CoreGui.jfshjsjkfsl.Frame.Save.MouseButton1Click:Connect(function()
		local a = game.Players.LocalPlayer.CurrentSaveSlot
		a.RobloxLocked = true
		a.Set.RobloxLocked = true
		
		game.StarterGui:SetCore("ChatMakeSystemMessage", {
			Text = "O Slot "..a.Value.." foi salvo!"; --The chat message
			Color = Color3.fromRGB(0, 255, 255); --Chat message color, defaults to white
			Font = Enum.Font.SourceSansBold; --Chat message font, defaults to SourceSansBold
			TextSize = 23 --Text size, defaults to 18
		})
		
		game.StarterGui:SetCore("SendNotification", {
			Title = "Zoro Gui";
			Text = "O Slot "..a.Value.." foi salvo!";
			Icon = "rbxassetid://8046722606";
		} )
	end)
	
	game.CoreGui.jfshjsjkfsl.Frame.current.MouseButton1Click:Connect(function()
		local a = game.Players.LocalPlayer.CurrentSaveSlot
		
		game.StarterGui:SetCore("ChatMakeSystemMessage", {
			Text = "Seu Slot: "..a.Value; --The chat message
			Color = Color3.fromRGB(0, 255, 255); --Chat message color, defaults to white
			Font = Enum.Font.SourceSansBold; --Chat message font, defaults to SourceSansBold
			TextSize = 23 --Text size, defaults to 18
		})
		
		game.StarterGui:SetCore("SendNotification", {
			Title = "Zoro Gui";
			Text = "Seu Slot: "..a.Value;
			Icon = "rbxassetid://1391324770";
		} )
	end)
	
	game.CoreGui.jfshjsjkfsl.Frame.alphadrop.MouseButton1Click:Connect(function()
		game.StarterGui:SetCore("ChatMakeSystemMessage", {
			Text = "O Alpha Drop esta sendo executado!"; --The chat message
			Color = Color3.fromRGB(0, 255, 255); --Chat message color, defaults to white
			Font = Enum.Font.SourceSansBold; --Chat message font, defaults to SourceSansBold
			TextSize = 23 --Text size, defaults to 18
		})
	
		game.StarterGui:SetCore("SendNotification", {
			Title = "Alpha Drop";
			Text = "O Alpha Drop está sendo executado!";
			Icon = "rbxassetid://6937741479";
		} )
		
		loadstring(game:HttpGet("https://raw.githubusercontent.com/MrGhost027/Azure/main/Azure.lua"))()
	end)
	
	game.CoreGui.jfshjsjkfsl.Frame.bark.MouseButton1Click:Connect(function()
	
		game.StarterGui:SetCore("ChatMakeSystemMessage", {
			Text = "O Bark esta sendo executado!"; --The chat message
			Color = Color3.fromRGB(0, 255, 255); --Chat message color, defaults to white
			Font = Enum.Font.SourceSansBold; --Chat message font, defaults to SourceSansBold
			TextSize = 23 --Text size, defaults to 18
		})
	
		game.StarterGui:SetCore("SendNotification", {
			Title = "Bark";
			Text = "O Bark esta sendo executado!";
			Icon = "rbxassetid://8046724434";
		} )
		
		loadstring(game:HttpGetAsync'https://cdn.applebee1558.com/bark/bark.lua')('thanks for bark, #barkwinning')
	end)
end
coroutine.wrap(GZTLJXI_fake_script)()
