local player = game.Players.LocalPlayer
local mouse = player:GetMouse()
local UserInputService = game:GetService("UserInputService")
	UserInputService.InputBegan:Connect(function(Input)
		if Input.UserInputType == Enum.UserInputType.MouseButton1 then
			if _G.lockP == false then
			 mouse.Icon = "rbxassetid://13087346782"
				wait(0.2)
				 mouse.Icon = "rbxassetid://13087327180"
			else
				if _G.Namelock == "???" then
					 mouse.Icon = "rbxassetid://13087465351"
				else
					 mouse.Icon = "rbxassetid://13087458723"
				end
			end 
		end 
	end)
