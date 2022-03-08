_G.infinjump = false

local Player = game:GetService("Players").LocalPlayer
local Mouse = Player:GetMouse()
Mouse.KeyDown:connect(function(k)
	if _G.infinjump then
		if k:byte() == 32 then
			Humanoid = game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
			Humanoid:ChangeState("Jumping")
			wait(0.1)
			Humanoid:ChangeState("Seated")
		end
	end
end)

local Player = game:GetService("Players").LocalPlayer
local Mouse = Player:GetMouse()
Mouse.KeyDown:connect(function(k)
	k = k:lower()
	if k == "b" then
		if _G.infinjump == true then
			_G.infinjump = false
			game.StarterGui:SetCore("SendNotification", {Title="Inf Jump OFF"; Text="ZXE Expolit"; Duration=1;})

		else
			_G.infinjump = true
			game.StarterGui:SetCore("SendNotification", {Title="Inf Jump ON"; Text="ZXE Expolit"; Duration=1;})

		end
	end
end)
game.StarterGui:SetCore("SendNotification", {Title="ZXE Expolit"; Text="The Infinity Switch is ready!\nPress \"B\" to toggle"; Duration=5;})
