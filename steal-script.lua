-- UI VISUAL, SOLO MENÚ MODERNO
-- 100% SEGURO, NO TOCA EL JUEGO

local TweenService = game:GetService("TweenService")

-- ELEMENTOS
local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local ButtonBlue = Instance.new("TextButton")
local ButtonRed = Instance.new("TextButton")
local StatusMsg = Instance.new("TextLabel")
local UIShadow = Instance.new("UIShadow")

local CornerFrame = Instance.new("UICorner")
local CornerBlue = Instance.new("UICorner")
local CornerRed = Instance.new("UICorner")

ScreenGui.Parent = game.CoreGui

-- FRAME
Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
Frame.Size = UDim2.new(0,180,0,150)
Frame.Position = UDim2.new(0.5,-90,0.5,-75)
CornerFrame.Parent = Frame
Frame.Active = true
Frame.Draggable = true

-- SOMBRA DIFUMINADA
UIShadow.Parent = Frame
UIShadow.Color = Color3.fromRGB(0,0,0)
UIShadow.ShadowTransparency = 0.6
UIShadow.Offset = Vector2.new(5,5)
UIShadow.Radius = 12

-- ANIMACIÓN DE APARICIÓN
Frame.Position = Frame.Position - UDim2.new(0,0,0.3,0) -- empieza más arriba
Frame.BackgroundTransparency = 1
local tween = TweenService:Create(Frame, TweenInfo.new(0.5, Enum.EasingStyle.Bounce), {BackgroundTransparency = 0, Position = UDim2.new(0.5,-90,0.5,-75)})
tween:Play()

-- TITLE
Title.Parent = Frame
Title.BackgroundTransparency = 1
Title.Size = UDim2.new(1,0,0,30)
Title.Text = "Spinelly Hub"
Title.TextScaled = true
Title.Font = Enum.Font.GothamBold
Title.TextColor3 = Color3.fromRGB(255,255,255)

-- BOTÓN AZUL
ButtonBlue.Parent = Frame
ButtonBlue.Size = UDim2.new(0.9,0,0,35)
ButtonBlue.Position = UDim2.new(0.05,0,0.35,0)
ButtonBlue.BackgroundColor3 = Color3.fromRGB(0,110,255)
ButtonBlue.Text = "Auto Steal"
ButtonBlue.TextScaled = true
ButtonBlue.Font = Enum.Font.GothamBold
ButtonBlue.TextColor3 = Color3.fromRGB(255,255,255)
CornerBlue.Parent = ButtonBlue

-- BOTÓN ROJO
ButtonRed.Parent = Frame
ButtonRed.Size = UDim2.new(0.9,0,0,35)
ButtonRed.Position = UDim2.new(0.05,0,0.65,0)
ButtonRed.BackgroundColor3 = Color3.fromRGB(255,30,30)
ButtonRed.Text = "Close"
ButtonRed.TextScaled = true
ButtonRed.Font = Enum.Font.GothamBold
ButtonRed.TextColor3 = Color3.fromRGB(255,255,255)
CornerRed.Parent = ButtonRed

-- MENSAJE INFERIOR
StatusMsg.Parent = Frame
StatusMsg.Size = UDim2.new(1,0,0,20)
StatusMsg.Position = UDim2.new(0,0,0.85,0)
StatusMsg.BackgroundTransparency = 1
StatusMsg.Text = ""
StatusMsg.TextScaled = true
StatusMsg.Font = Enum.Font.Gotham
StatusMsg.TextColor3 = Color3.fromRGB(200,200,200)

-- FUNCIÓN CERRAR
ButtonRed.MouseButton1Click:Connect(function()
    local tweenClose = TweenService:Create(Frame, TweenInfo.new(0.3), {BackgroundTransparency = 1, Position = Frame.Position - UDim2.new(0,0,0.1,0)})
    tweenClose:Play()
    tweenClose.Completed:Wait()
    Frame.Visible = false
end)

-- FUNCIÓN AUTO STEAL (MENSAJE VISUAL)
ButtonBlue.MouseButton1Click:Connect(function()
    StatusMsg.Text = "Stealing..."
    local fadeIn = TweenService:Create(StatusMsg, TweenInfo.new(0.3), {TextTransparency = 0})
    fadeIn:Play()
    task.delay(2, function()
        local fadeOut = TweenService:Create(StatusMsg, TweenInfo.new(0.5), {TextTransparency = 1})
        fadeOut:Play()
    end)
end)

-- EFECTOS HOVER
local function addHover(button, color, hoverColor)
    button.MouseEnter:Connect(function()
        TweenService:Create(button, TweenInfo.new(0.2), {BackgroundColor3 = hoverColor}):Play()
    end)
    button.MouseLeave:Connect(function()
        TweenService:Create(button, TweenInfo.new(0.2), {BackgroundColor3 = color}):Play()
    end)
end

addHover(ButtonBlue, Color3.fromRGB(0,110,255), Color3.fromRGB(0,150,255))
addHover(ButtonRed, Color3.fromRGB(255,30,30), Color3.fromRGB(255,70,70))
