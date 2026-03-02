local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")

local player = Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

local screenGui = Instance.new("ScreenGui")
screenGui.Name = "FakeTsunamiLoad"
screenGui.ResetOnSpawn = false
screenGui.DisplayOrder = 999
screenGui.IgnoreGuiInset = true
screenGui.ScreenInsets = Enum.ScreenInsets.None
screenGui.Parent = playerGui

local mainFrame = Instance.new("Frame")
mainFrame.Size = UDim2.new(1, 0, 1, 0)
mainFrame.BackgroundColor3 = Color3.new(0, 0, 0)
mainFrame.BorderSizePixel = 0
mainFrame.Parent = screenGui

local gradient = Instance.new("UIGradient")
gradient.Color = ColorSequence.new{
    ColorSequenceKeypoint.new(0, Color3.fromRGB(15, 10, 35)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(10, 5, 25))
}
gradient.Rotation = 135
gradient.Parent = mainFrame

local title = Instance.new("TextLabel")
title.Size = UDim2.new(0.9, 0, 0.12, 0)
title.Position = UDim2.new(0.05, 0, 0.18, 0)
title.BackgroundTransparency = 1
title.Text = "Adopt Me Script"
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.TextScaled = true
title.Font = Enum.Font.GothamBlack
title.Parent = mainFrame

local loadingText = Instance.new("TextLabel")
loadingText.Size = UDim2.new(0.9, 0, 0.08, 0)
loadingText.Position = UDim2.new(0.05, 0, 0.42, 0)
loadingText.BackgroundTransparency = 1
loadingText.Text = "Loading"
loadingText.TextColor3 = Color3.fromRGB(180, 180, 255)
loadingText.TextScaled = true
loadingText.Font = Enum.Font.GothamSemibold
loadingText.Parent = mainFrame

local progressBg = Instance.new("Frame")
progressBg.Size = UDim2.new(0.82, 0, 0.05, 0)
progressBg.Position = UDim2.new(0.09, 0, 0.52, 0)
progressBg.BackgroundColor3 = Color3.fromRGB(35, 35, 55)
progressBg.BorderSizePixel = 0
progressBg.Parent = mainFrame

Instance.new("UICorner", progressBg).CornerRadius = UDim.new(0, 24)

local stroke = Instance.new("UIStroke", progressBg)
stroke.Color = Color3.fromRGB(120, 120, 180)
stroke.Thickness = 2.5
stroke.Transparency = 0.4

local progressFill = Instance.new("Frame", progressBg)
progressFill.Size = UDim2.new(0, 0, 1, 0)
progressFill.BackgroundColor3 = Color3.fromRGB(0, 255, 140)
progressFill.BorderSizePixel = 0

Instance.new("UICorner", progressFill).CornerRadius = UDim.new(0, 24)

local fillGrad = Instance.new("UIGradient", progressFill)
fillGrad.Color = ColorSequence.new{
    ColorSequenceKeypoint.new(0, Color3.fromRGB(0, 255, 140)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(0, 180, 100))
}

local percentText = Instance.new("TextLabel", progressBg)
percentText.Size = UDim2.new(1, 0, 1, 0)
percentText.BackgroundTransparency = 1
percentText.Text = "0%"
percentText.TextColor3 = Color3.fromRGB(255, 255, 255)
percentText.TextScaled = true
percentText.Font = Enum.Font.GothamBlack

local discordBox = Instance.new("Frame", mainFrame)
discordBox.Size = UDim2.new(0.85, 0, 0.18, 0)
discordBox.Position = UDim2.new(0.075, 0, 0.74, 0)
discordBox.BackgroundColor3 = Color3.fromRGB(25, 25, 45)
discordBox.BorderSizePixel = 0

Instance.new("UICorner", discordBox).CornerRadius = UDim.new(0, 16)

local dGrad = Instance.new("UIGradient", discordBox)
dGrad.Color = ColorSequence.new{
    ColorSequenceKeypoint.new(0, Color3.fromRGB(40, 35, 70)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(20, 15, 50))
}
dGrad.Rotation = -45

local dStroke = Instance.new("UIStroke", discordBox)
dStroke.Color = Color3.fromRGB(140, 100, 255)
dStroke.Thickness = 3
dStroke.Transparency = 0.3

local glow = Instance.new("UIStroke", discordBox)
glow.Color = Color3.fromRGB(180, 140, 255)
glow.Thickness = 6
glow.Transparency = 0.75

local joinLabel = Instance.new("TextLabel", discordBox)
joinLabel.Size = UDim2.new(0.9, 0, 0.3, 0)
joinLabel.Position = UDim2.new(0.05, 0, 0.08, 0)
joinLabel.BackgroundTransparency = 1
joinLabel.Text = "Join Blox Community!"
joinLabel.TextColor3 = Color3.fromRGB(220, 200, 255)
joinLabel.TextScaled = true
joinLabel.Font = Enum.Font.GothamBlack

local linkBox = Instance.new("TextBox", discordBox)
linkBox.Size = UDim2.new(0.62, 0, 0.32, 0)
linkBox.Position = UDim2.new(0.05, 0, 0.38, 0)
linkBox.BackgroundColor3 = Color3.fromRGB(18, 18, 35)
linkBox.BorderSizePixel = 0
linkBox.Text = "https://discord.gg/gY2qJbSWzm"
linkBox.TextColor3 = Color3.fromRGB(200, 180, 255)
linkBox.TextScaled = true
linkBox.Font = Enum.Font.Gotham
linkBox.ClearTextOnFocus = false
linkBox.TextEditable = false

Instance.new("UICorner", linkBox).CornerRadius = UDim.new(0, 10)

local copyBtn = Instance.new("TextButton", discordBox)
copyBtn.Size = UDim2.new(0.28, 0, 0.32, 0)
copyBtn.Position = UDim2.new(0.69, 0, 0.38, 0)
copyBtn.BackgroundColor3 = Color3.fromRGB(0, 160, 100)
copyBtn.BorderSizePixel = 0
copyBtn.Text = "Copy Link"
copyBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
copyBtn.TextScaled = true
copyBtn.Font = Enum.Font.GothamBold

Instance.new("UICorner", copyBtn).CornerRadius = UDim.new(0, 10)

copyBtn.MouseButton1Click:Connect(function()
    local link = "https://discord.gg/gY2qJbSWzm"
    local success = false

    pcall(function()
        if setclipboard then
            setclipboard(link)
            success = true
        elseif Clipboard and Clipboard.set then
            Clipboard.set(link)
            success = true
        elseif toclipboard then
            toclipboard(link)
            success = true
        end
    end)

    if success then
        local old = copyBtn.Text
        copyBtn.Text = "Copied! ✅"
        copyBtn.BackgroundColor3 = Color3.fromRGB(0, 200, 80)
        task.wait(1.8)
        copyBtn.Text = old
        copyBtn.BackgroundColor3 = Color3.fromRGB(0, 160, 100)
    else
        linkBox:CaptureFocus()
        linkBox.SelectionStart = 1
        linkBox.CursorPosition = #linkBox.Text + 1

        local old = copyBtn.Text
        copyBtn.Text = "Selected! Ctrl+C / Long-press"
        copyBtn.BackgroundColor3 = Color3.fromRGB(60, 140, 255)
        task.wait(2.5)
        copyBtn.Text = old
        copyBtn.BackgroundColor3 = Color3.fromRGB(0, 160, 100)
    end
end)

task.spawn(function()
    local dots = 0
    while true do
        task.wait(0.35)
        dots = (dots + 1) % 4
        loadingText.Text = "Loading" .. string.rep(".", dots)
    end
end)

local progress = 0
task.spawn(function()
    while true do
        local inc = 0
        local wt = 0.1

        if progress < 80 then
            inc = math.random(2, 5)
            wt = math.random(5, 15) / 100
        elseif progress < 95 then
            inc = math.random(1, 3)
            wt = math.random(20, 50) / 100
        elseif progress < 97 then
            inc = math.random(1, 2)
            wt = math.random(50, 120) / 100
        elseif progress < 98 then
            if math.random() < 0.02 then inc = 0.08 + math.random() * 0.04 end
            wt = 0.8 + math.random() * 1.2
        elseif progress < 99 then
            if math.random() < 0.01 then inc = 0.08 + math.random() * 0.04 end
            wt = 1.2 + math.random() * 1.8
        else
            inc = 0
            wt = 2 + math.random()
            progress = 99.3
        end

        progress += inc

        percentText.Text = math.floor(progress) .. "%"
        local target = UDim2.new(math.clamp(progress / 100, 0, 0.995), 0, 1, 0)
        local dur = progress >= 97 and 1.3 or 0.45
        TweenService:Create(progressFill, TweenInfo.new(dur, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {Size = target}):Play()

        task.wait(wt)
    end
end)

task.spawn(function()
    task.wait(0.5)
    while true do
        TweenService:Create(title, TweenInfo.new(1.8, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut, -1, true), {TextTransparency = 0.15}):Play()
        task.wait(2.2)
    end
end)

print("Discord: https://discord.gg/gY2qJbSWzm")
