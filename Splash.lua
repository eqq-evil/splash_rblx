local Splash = {}

----creates a splash window
Splash.new = function(name,scripturl)
        shared.Name = name or "Splash"
        shared.ScriptURL = scripturl or "https://raw.githubusercontent.com/eqq-evil/splash_rblx/main/HelloWorld.lua"

	local ScreenGui = Instance.new("ScreenGui")
	local Main = Instance.new("Frame")
	local TextLabel = Instance.new("TextLabel")
	local progressbar = Instance.new("Frame")
	local green = Instance.new("Frame")

	ScreenGui.Parent = game:GetService("CoreGui")
	ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

	Main.Name = "Main"
	Main.Parent = ScreenGui
	Main.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Main.BorderSizePixel = 0
	Main.Position = UDim2.new(0.343, 0,0.297, 0)
	Main.Size = UDim2.new(0, 540, 0, 295)

	TextLabel.Parent = Main
	TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel.BorderSizePixel = 0
	TextLabel.Size = UDim2.new(0, 540, 0, 279)
	TextLabel.Font = Enum.Font.SourceSans
	TextLabel.Text = shared.Name --- the name
	TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
	TextLabel.TextSize = 39.000

	progressbar.Name = "progressbar"
	progressbar.Parent = Main
	progressbar.BackgroundColor3 = Color3.fromRGB(220, 220, 220)
	progressbar.BorderSizePixel = 0
	progressbar.Position = UDim2.new(0,0,0.946, 0)
	progressbar.Size = UDim2.new(0, 540, 0, 16)

	green.Name = "green"
	green.Parent = progressbar
	green.BackgroundColor3 = Color3.fromRGB(216, 255, 153)
	green.BorderSizePixel = 0
	green.Position = UDim2.new(0,0,0.012,0)
	green.Size = UDim2.new(0, 100, 0, 16)
	---animation
	for _ = 1,10,1 do
		wait(0.40)
		game:GetService("TweenService"):Create(green, TweenInfo.new(.30), {Position = UDim2.new(0.376, 0, 0.012, 0)}):Play()
		wait(0.40)
		game:GetService("TweenService"):Create(green, TweenInfo.new(.30), {Position = UDim2.new(0.376, 0, 0.012, 0)}):Play()
		wait(0.40)
		game:GetService("TweenService"):Create(green, TweenInfo.new(.30), {Position = UDim2.new(0.815, 0, 0.012, 0)}):Play()
		wait(0.40)
		game:GetService("TweenService"):Create(green, TweenInfo.new(.30), {Position = UDim2.new(0,0,0.012,0)}):Play()
	end
	wait(0.40)
	--------exit and load
	ScreenGui:Destroy()
	loadstring(game:HttpGetAsync(shared.ScriptURL))()
end

return Splash
