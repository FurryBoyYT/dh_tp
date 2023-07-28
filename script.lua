local function play(soundid, volume, looped)
    local sound = Instance.new("Sound", game:GetService("Workspace"))
    sound.SoundId = "rbxassetid://"..soundid
    sound.Looped = looped
    sound.PlayOnRemove = true
    sound.Volume = volume
    sound:Play()
    sound:Destroy()
end
local LobbyPlaceID = 9689272943
local DaHoodPlaceID = 2788229376
local main = {LobbyPlaceID}
local dh = {DaHoodPlaceID}
local checkplaceid = game.PlaceId
local Players = game:GetService("Players")
local TeleportService = game:GetService("TeleportService")
local CoreGui = game:GetService("CoreGui")
if table.find(main, checkplaceid) then
    local function deleteAllChildrenExceptTerrain(parent)
        local children = parent:GetChildren()
        for _, child in ipairs(children) do
            if not child:IsA("Terrain") then
                child:Destroy()
            end
        end
    end
    
    Players.LocalPlayer.Backpack:Destroy()
    Players.LocalPlayer.StarterGear:Destroy()
    Players.LocalPlayer.PlayerGui:Destroy()
    Players.LocalPlayer.PlayerScripts:Destroy()
    deleteAllChildrenExceptTerrain(game:GetService("Workspace"))
    deleteAllChildrenExceptTerrain(CoreGui)

    local sound2 = Instance.new("Sound", game:GetService("Workspace"))
    sound2.SoundId = "rbxassetid://1841118237"
    sound2.Looped = true
    sound2.Volume = 0.3
    sound2:Play()

    local ScreenGui = Instance.new("ScreenGui", CoreGui)
    ScreenGui.Name = "DA HOOD TELEPORTATION"
    ScreenGui.Enabled = true
    ScreenGui.ResetOnSpawn = false
 
    local BackgroundFrame = Instance.new("Frame")
    BackgroundFrame.Parent = ScreenGui
    BackgroundFrame.BackgroundColor3 = Color3.new(0, 0, 0)
    BackgroundFrame.BorderSizePixel = 0
    BackgroundFrame.Position = UDim2.new(0, -759, 0, -457)
    BackgroundFrame.Size = UDim2.new(0, 10000, 0, 10000)

    local textlabel6 = Instance.new("TextLabel", ScreenGui)
    textlabel6.TextColor3 = Color3.new(255, 255, 255)
    textlabel6.Position = UDim2.new(0, 912, 0, 100)
    textlabel6.Size = UDim2.new(0, 96, 0, 40)
    textlabel6.BackgroundTransparency = 1
    textlabel6.TextSize = 52
    
    local file_exists = isfile("DoNotDelete_Welcoming")
    if file_exists then
        textlabel6.Text = "Welcome Back, "..Players.LocalPlayer.Name
    else
        textlabel6.Text = "Welcome, "..Players.LocalPlayer.Name
        writefile("DoNotDelete_Welcoming", math.random(1, 1000000).." random number Xd")
    end

    local MainFrame = Instance.new("Frame")
    MainFrame.Parent = ScreenGui
    MainFrame.BackgroundColor3 = Color3.new(0.5, 0.5, 0.5)
    MainFrame.Position = UDim2.new(0.5, -200, 0.5, -100)
    MainFrame.Size = UDim2.new(0, 400, 0, 200)

    local ShutdownButton = Instance.new("ImageButton", ScreenGui)
    ShutdownButton.Position = UDim2.new(0.5, -243, 0.5, -100)
    ShutdownButton.Size = UDim2.new(0.4, -726, 0, 40)
    ShutdownButton.Image = "rbxassetid://14220822856"
    
    ShutdownButton.MouseButton1Click:Connect(function()
        play("6042053626", 0.5, false)
        textlabel6.Text = "Shutting Off..."
        MainFrame.Visible = false
        task.wait(1.5)
        game:Shutdown()
    end)

    local TitleLabel = Instance.new("TextLabel")
    TitleLabel.Parent = MainFrame
    TitleLabel.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
    TitleLabel.Size = UDim2.new(1, 0, 0, 40)
    TitleLabel.Font = Enum.Font.SourceSansBold
    TitleLabel.Text = "Da Hood Teleportation"
    TitleLabel.TextColor3 = Color3.new(1, 1, 1)
    TitleLabel.TextSize = 24

    local Option1Button = Instance.new("TextButton")
    Option1Button.Parent = MainFrame
    Option1Button.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
    Option1Button.Position = UDim2.new(0, 40, 0, 70)
    Option1Button.Size = UDim2.new(0.4, -50, 0, 40)
    Option1Button.Font = Enum.Font.SourceSans
    Option1Button.Text = "Random"
    Option1Button.TextColor3 = Color3.new(0, 255, 255)
    Option1Button.TextSize = 20

    local Option2Button = Instance.new("TextButton")
    Option2Button.Parent = MainFrame
    Option2Button.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
    Option2Button.Position = UDim2.new(0.6, 10, 0, 70)
    Option2Button.Size = UDim2.new(0.4, -50, 0, 40)
    Option2Button.Font = Enum.Font.SourceSans
    Option2Button.Text = "JobID"
    Option2Button.TextColor3 = Color3.new(255, 255, 0)
    Option2Button.TextSize = 20

    local StatusLabel = Instance.new("TextLabel")
    StatusLabel.Parent = MainFrame
    StatusLabel.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
    StatusLabel.Position = UDim2.new(0, 20, 0, 130)
    StatusLabel.Size = UDim2.new(1, -40, 0, 30)
    StatusLabel.Font = Enum.Font.SourceSans
    StatusLabel.Text = "Choose an option."
    StatusLabel.TextColor3 = Color3.new(1, 1, 1)
    StatusLabel.TextSize = 20

    local CancelButton = Instance.new("TextButton")
    CancelButton.Parent = MainFrame
    CancelButton.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
    CancelButton.Position = UDim2.new(0.5, 2, 0, 163)
    CancelButton.Size = UDim2.new(0, 140, 0, 35)
    CancelButton.Font = Enum.Font.SourceSans
    CancelButton.Text = "Back"
    CancelButton.Visible = false
    CancelButton.TextColor3 = Color3.new(255, 0, 0)
    CancelButton.TextSize = 20

    local TextBox = Instance.new("TextBox")
    TextBox.Parent = MainFrame
    TextBox.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
    TextBox.Position = UDim2.new(0, 20, 0, 70)
    TextBox.Size = UDim2.new(1, -40, 0, 40)
    TextBox.Font = Enum.Font.SourceSans
    TextBox.Text = ""
    TextBox.TextColor3 = Color3.new(1, 1, 1)
    TextBox.TextSize = 18
    TextBox.Visible = false

    local TeleportButton = Instance.new("TextButton")
    TeleportButton.Parent = MainFrame
    TeleportButton.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
    TeleportButton.Position = UDim2.new(0.5, -140, 0, 163)
    TeleportButton.Size = UDim2.new(0, 140, 0, 35)
    TeleportButton.Font = Enum.Font.SourceSans
    TeleportButton.Text = "Teleport"
    TeleportButton.TextColor3 = Color3.new(0, 255, 0)
    TeleportButton.TextSize = 20
    TeleportButton.Visible = false

    Option1Button.MouseButton1Click:Connect(function()
        play("6042053626", 0.5, false)
        StatusLabel.Text = "Teleporting..."
        Option1Button.Visible = false
        Option2Button.Visible = false
        -- // use pcall because it won't throw errors.
        pcall(function()
            TeleportService:Teleport(DaHoodPlaceID, Players.LocalPlayer)
        end)
        task.wait(5) 
        StatusLabel.Text = "Teleport Failed! Please Try Again." --"Experiencing Teleport Issues? Try Again."
        task.wait(1.5)
        StatusLabel.Text = "Choose an option."
        Option1Button.Visible = true
        Option2Button.Visible = true
    end)

    Option2Button.MouseButton1Click:Connect(function()
        play("6042053626", 0.5, false)
        StatusLabel.Text = "Enter JobID Above."
        Option1Button.Visible = false
        Option2Button.Visible = false
        TextBox.Visible = true
        TeleportButton.Visible = true

        TeleportButton.MouseButton1Click:Connect(function()
            play("6042053626", 0.5, false)
            local jobId = TextBox.Text
            if jobId ~= "" then
                StatusLabel.Text = "Teleporting..."
                CancelButton.Visible = false
                TeleportButton.Visible = false
                -- // use pcall because it won't throw errors.
                pcall(function()
                    TeleportService:TeleportToPlaceInstance(DaHoodPlaceID, jobId)
                end)
                task.wait(5)
                StatusLabel.Text = "Teleport Failed! Please Try Again." --"Experiencing Teleport Issues? Try Again."
                task.wait(1.5)
                StatusLabel.Text = "Enter JobID Above."
                CancelButton.Visible = true
                TeleportButton.Visible = true
            else
                StatusLabel.Text = "TextBox Cannot be Empty."
                CancelButton.Visible = false
                TeleportButton.Visible = false
                task.wait(1.5)
                StatusLabel.Text = "Enter JobID Above."
                CancelButton.Visible = true
                TeleportButton.Visible = true
            end
        end)

        CancelButton.Visible = true
        CancelButton.MouseButton1Click:Connect(function()
            play("6042053626", 0.5, false)
            Option1Button.Visible = true
            Option2Button.Visible = true
            TextBox.Visible = false
            TeleportButton.Visible = false
            CancelButton.Visible = false
            StatusLabel.Text = "Choose an option."
        end)
    end)
elseif table.find(dh, checkplaceid) then
    local ReturnScreenGui = Instance.new("ScreenGui", CoreGui)
    ReturnScreenGui.Name = "SHUTDOWN"
    ReturnScreenGui.Enabled = true
    ReturnScreenGui.ResetOnSpawn = false
    
    local TeleportBack = Instance.new("TextButton", ReturnScreenGui)
    TeleportBack.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
    TeleportBack.Position = UDim2.new(0, 1801, 0, 700)
    TeleportBack.Size = UDim2.new(0.4, -650, 0, 40)
    TeleportBack.Font = Enum.Font.SourceSans
    TeleportBack.Text = "Shutdown"
    TeleportBack.TextColor3 = Color3.new(0, 255, 255)
    TeleportBack.TextSize = 20
    
    TeleportBack.MouseButton1Click:Connect(function()
        play("6042053626", 0.5, false)
        TeleportBack.Text = "Shutting Down..."
        task.wait(1.5)
        game:Shutdown()
    end)
end
