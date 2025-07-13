--// ROBLOX SCRIPT: GhostHub Brainlot Edition - By Christian

local plr = game.Players.LocalPlayer
local char = plr.Character or plr.CharacterAdded:Wait()

local gui = Instance.new("ScreenGui", game.CoreGui)
gui.Name = "BrainlotProGUI"

-- Botón flotante "C"
local icon = Instance.new("TextButton", gui)
icon.Size = UDim2.new(0, 40, 0, 40)
icon.Position = UDim2.new(0, 100, 0, 100)
icon.Text = "C"
icon.TextScaled = true
icon.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
icon.TextColor3 = Color3.new(1,1,1)
icon.Draggable = true
icon.Active = true

-- Panel
local panel = Instance.new("Frame", gui)
panel.Size = UDim2.new(0, 400, 0, 320)
panel.Position = UDim2.new(0.5, -200, 0.5, -160)
panel.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
panel.BackgroundTransparency = 0.2
panel.Visible = false
panel.Active = true
panel.Draggable = true

local title = Instance.new("TextLabel", panel)
title.Size = UDim2.new(1, 0, 0, 40)
title.Text = "🔥 Brainlot Hub by Christian"
title.TextColor3 = Color3.new(1, 1, 1)
title.Font = Enum.Font.SourceSansBold
title.TextScaled = true
title.BackgroundTransparency = 1

-- FUNCIONES
local function toggleSpeed(on)
    if on then
        char:FindFirstChildOfClass("Humanoid").WalkSpeed = 100
    else
        char:FindFirstChildOfClass("Humanoid").WalkSpeed = 16
    end
end

local function toggleJump(on)
    if on then
        char:FindFirstChildOfClass("Humanoid").JumpPower = 120
    else
        char:FindFirstChildOfClass("Humanoid").JumpPower = 50
    end
end

local flying = false
local function toggleFly()
    flying = not flying
    local humanoidRootPart = char:WaitForChild("HumanoidRootPart")
    local bodyGyro = Instance.new("BodyGyro", humanoidRootPart)
    local bodyVelocity = Instance.new("BodyVelocity", humanoidRootPart)
    bodyGyro.P = 9e4
    bodyGyro.maxTorque = Vector3.new(9e9, 9e9, 9e9)
    bodyVelocity.velocity = Vector3.new(0, 0, 0)
    bodyVelocity.maxForce = Vector3.new(9e9, 9e9, 9e9)

    local flyingConn = game:GetService("RunService").RenderStepped:Connect(function()
        if not flying then
            bodyGyro:Destroy()
            bodyVelocity:Destroy()
            flyingConn:Disconnect()
        else
            local cam = workspace.CurrentCamera
            local dir = Vector3.new()
            if plr:GetMouse().W then dir = dir + cam.CFrame.lookVector end
            if plr:GetMouse().S then dir = dir - cam.CFrame.lookVector end
            if plr:GetMouse().A then dir = dir - cam.CFrame.rightVector end
            if plr:GetMouse().D then dir = dir + cam.CFrame.rightVector end
            bodyVelocity.velocity = dir * 100
            bodyGyro.cframe = cam.CFrame
        end
    end)
end

local noclip = false
game:GetService("RunService").Stepped:Connect(function()
    if noclip then
        for _, v in pairs(char:GetDescendants()) do
            if v:IsA("BasePart") then
                v.CanCollide = false
            end
        end
    end
end)

local function toggleESP()
    for _, player in pairs(game.Players:GetPlayers()) do
        if player ~= plr and not player.Character:FindFirstChild("ESPBox") then
            local billboard = Instance.new("BillboardGui", player.Character)
            billboard.Name = "ESPBox"
            billboard.Size = UDim2.new(0, 100, 0, 40)
            billboard.AlwaysOnTop = true
            local name = Instance.new("TextLabel", billboard)
            name.Size = UDim2.new(1, 0, 1, 0)
            name.BackgroundTransparency = 1
            name.TextColor3 = Color3.fromRGB(255, 0, 0)
            name.Text = player.Name
            name.TextScaled = true
        elseif player.Character:FindFirstChild("ESPBox") then
            player.Character:FindFirstChild("ESPBox"):Destroy()
        end
    end
end

local function teleportToBrainlot()
    for _, v in pairs(workspace:GetDescendants()) do
        if v:IsA("Tool") and string.lower(v.Name):find("brainlot") then
            char:WaitForChild("HumanoidRootPart").CFrame = v.Handle.CFrame + Vector3.new(0, 3, 0)
        end
    end
end

local function autoWin()
    for _, v in pairs(workspace:GetDescendants()) do
        if v:IsA("Part") and v.Name == "Entregar" then
            char:WaitForChild("HumanoidRootPart").CFrame = v.CFrame + Vector3.new(0, 3, 0)
        end
    end
end

local function antiFall()
    while true do
        wait(1)
        if char:FindFirstChild("HumanoidRootPart") and char.HumanoidRootPart.Position.Y < -20 then
            char.HumanoidRootPart.CFrame = CFrame.new(0, 10, 0)
        end
    end
end

-- BOTONES
local y = 50
local function createBtn(txt, callback)
    local btn = Instance.new("TextButton", panel)
    btn.Size = UDim2.new(0.9, 0, 0, 30)
    btn.Position = UDim2.new(0.05, 0, 0, y)
    btn.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
    btn.TextColor3 = Color3.new(1, 1, 1)
    btn.Font = Enum.Font.SourceSans
    btn.TextScaled = true
    btn.Text = txt
    btn.MouseButton1Click:Connect(callback)
    y = y + 35
end

-- CREAR TODOS LOS BOTONES
local toggles = { speed = false, jump = false, fly = false, noclip = false, esp = false }

createBtn("🏃 Velocidad (Toggle)", function()
    toggles.speed = not toggles.speed
    toggleSpeed(toggles.speed)
end)

createBtn("🦘 Salto Alto (Toggle)", function()
    toggles.jump = not toggles.jump
    toggleJump(toggles.jump)
end)

createBtn("🕊️ Fly (Toggle)", function()
    toggleFly()
end)

createBtn("🚪 No Clip (Toggle)", function()
    noclip = not noclip
end)

createBtn("👁️ ESP Players (Toggle)", function()
    toggleESP()
end)

createBtn("📦 TP al Brainlot", function()
    teleportToBrainlot()
end)

createBtn("🏁 Auto Win / Entregar", function()
    autoWin()
end)

createBtn("🛡️ Anti-Caída", function()
    antiFall()
end)

-- ABRIR/CERRAR PANEL
icon.MouseButton1Click:Connect(function()
    panel.Visible = not panel.Visible
end)
