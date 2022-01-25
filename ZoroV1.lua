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
local Shadow = Instance.new("Frame")
local UICorner_4 = Instance.new("UICorner")

--Properties:

jfshjsjkfsl.Name = "jfshjsjkfsl"
jfshjsjkfsl.Parent = game.CoreGui
jfshjsjkfsl.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = jfshjsjkfsl
Frame.BackgroundColor3 = Color3.fromRGB(39, 39, 39)
Frame.Position = UDim2.new(0.124012627, 0, 0.380634397, 0)
Frame.Size = UDim2.new(0, 196, 0, 190)

Save.Name = "Save"
Save.Parent = Frame
Save.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
Save.BorderSizePixel = 0
Save.Position = UDim2.new(0.0972451195, 0, 0.273074299, 0)
Save.Size = UDim2.new(0, 158, 0, 43)
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
TextLabel.Position = UDim2.new(0.166223943, 0, 0.0451612882, 0)
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
current.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
current.BorderSizePixel = 0
current.Position = UDim2.new(0.0974898487, 0, 0.562211156, 0)
current.Size = UDim2.new(0, 158, 0, 43)
current.Font = Enum.Font.GothamSemibold
current.Text = "Print My Current Slot"
current.TextColor3 = Color3.fromRGB(255, 255, 255)
current.TextScaled = true
current.TextSize = 14.000
current.TextWrapped = true

UICorner_3.CornerRadius = UDim.new(0, 3)
UICorner_3.Parent = current

Shadow.Name = "Shadow"
Shadow.Parent = Frame
Shadow.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
Shadow.BorderSizePixel = 0
Shadow.Position = UDim2.new(0.0451976992, 0, 0.0451613441, 0)
Shadow.Size = UDim2.new(0.914158881, 0, 0.907868147, 4)
Shadow.ZIndex = 0

UICorner_4.CornerRadius = UDim.new(0, 5)
UICorner_4.Parent = Shadow

-- Scripts:

local function JGNHSM_fake_script() -- Frame.dragable 
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
coroutine.wrap(JGNHSM_fake_script)()
local function YAXDW_fake_script() -- jfshjsjkfsl.botao 
	local script = Instance.new('LocalScript', jfshjsjkfsl)

	game.CoreGui.jfshjsjkfsl.Frame.Save.MouseButton1Click:Connect(function()
		local a = game.Players.LocalPlayer.CurrentSaveSlot
		a.RobloxLocked = true
		a.Set.RobloxLocked = true
		
		game.StarterGui:SetCore("ChatMakeSystemMessage", {
			Text = "O Slot "..a.Value.." foi salvo!"; --The chat message
			Color = Color3.fromRGB(255, 85, 0); --Chat message color, defaults to white
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
			Color = Color3.fromRGB(85, 255, 0); --Chat message color, defaults to white
			Font = Enum.Font.SourceSansBold; --Chat message font, defaults to SourceSansBold
			TextSize = 23 --Text size, defaults to 18
		})
		
		game.StarterGui:SetCore("SendNotification", {
			Title = "Zoro Gui";
			Text = "Seu Slot: "..a.Value;
			Icon = "rbxassetid://1391324770";
		} )
	end)
	
	
	
end
coroutine.wrap(YAXDW_fake_script)()
