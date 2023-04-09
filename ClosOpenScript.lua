
local ClosOpenUi = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local ImageButton = Instance.new("ImageButton")
local UICorner = Instance.new("UICorner")



ClosOpenUi.Name = "ClosOpenUi"
ClosOpenUi.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ClosOpenUi.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = ClosOpenUi
Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame.BackgroundTransparency = 1.000
Frame.Position = UDim2.new(0.184154183, 0, 0.245635912, 0)
Frame.Size = UDim2.new(0, 100, 0, 100)

ImageButton.Parent = Frame
ImageButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageButton.BackgroundTransparency = 1.000
ImageButton.Position = UDim2.new(-0.300000012, 0, 0.00999999978, 0)
ImageButton.Size = UDim2.new(0, 91, 0, 117)
ImageButton.Image = "rbxassetid://13058418189"

UICorner.CornerRadius = UDim.new(0, 80)
UICorner.Parent = ImageButton



local function UAVMQ_fake_script()
	local script = Instance.new('LocalScript', ImageButton)

	local UIS = game:GetService('UserInputService')
	local frame = script.Parent.Parent.ImageButton
	local dragToggle = nil
	local dragSpeed = 0.25
	local dragStart = nil
	local startPos = nil
	
	local function updateInput(input)
		local delta = input.Position - dragStart
		local position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X,
			startPos.Y.Scale, startPos.Y.Offset + delta.Y)
		game:GetService('TweenService'):Create(frame, TweenInfo.new(dragSpeed), {Position = position}):Play()
	end
	
	frame.InputBegan:Connect(function(input)
		if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) then 
			dragToggle = true
			dragStart = input.Position
			startPos = frame.Position
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragToggle = false
				end
			end)
		end
	end)
	
	UIS.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			if dragToggle then
				updateInput(input)
			end
		end
	end)
end
coroutine.wrap(UAVMQ_fake_script)()
local function GIXHK_fake_script()
	local script = Instance.new('LocalScript', ImageButton)

	script.Parent.MouseButton1Click:Connect(function  ()
		game:GetService("CoreGui").RobloxGui.Modules.Logger.libs.Main.Visible = not game:GetService("CoreGui").RobloxGui.Modules.Logger.libs.Main.Visible
		game:GetService("CoreGui").RobloxGui.Modules.Logger.libs.DropShadow.Visible = game:GetService("CoreGui").RobloxGui.Modules.Logger.libs.Main.Visible
	end)
	
	while wait() do
		script.Parent.TextLabel.Text = game.Players.LocalPlayer.Name
		script.Parent.Level.Text = tostring(game:GetService("Players")["NewFarmBlox_009"].Data.Level.Value)
	end
end
coroutine.wrap(GIXHK_fake_script)()
