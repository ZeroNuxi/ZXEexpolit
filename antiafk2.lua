assert(firesignal, "Your exploit does not support firesignal.")
local UserInputService: UserInputService = game:GetService("UserInputService")
local RunService: RunService = game:GetService("RunService")
UserInputService.WindowFocusReleased:Connect(function()
	RunService.Stepped:Wait()
	pcall(firesignal, UserInputService.WindowFocused)
end)

game.StarterGui:SetCore("SendNotification", {Title="ZXE Expolit"; Text="Anti Afk Turned On ."; Duration=5;})
