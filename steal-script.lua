-- SPINELLY HUB - FUTURISTIC UI (100% VISUAL)
-- Solo interfaz, sin interacción con el juego

local TweenService = game:GetService("TweenService")

-- ELEMENTOS
local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local ButtonBlue = Instance.new("TextButton")
local ButtonRed = Instance.new("TextButton")
local StatusMsg = Instance.new("TextLabel")

local CornerFrame = Instance.new("UICorner")
local CornerBlue = Instance.new("UICorner")
local CornerRed = Instance.new("UICorner")
local Glow = Instance.new("UIStroke")
local GlowBlue = Instance.new("UIStroke")
local GlowRed = Instance.new("UIStroke")
local Shadow = Instance.new("UIGradient")

ScreenGui.Parent = game.CoreGui

-- FRAME FUTURISTA
Frame.Parent = ScreenGui
Frame.Size = UDim2.new(0, 220, 0, 180)
Frame.Position = UDim2.new(0.5, -110, 0.5, -90)
Frame.BackgroundColor3 = Color3.fromRGB(15, 15, 25)
Frame.BackgroundTransparency = 0.2
CornerFrame.Parent = Frame

-- GLOW
Glow.Parent = Frame
Glow.Color = Color3.fromRGB(0, 200, 255)
Glow.Thickness = 2
Glow.Transparency = 0.5

-- SOMBRA FUTURISTA
Shadow.Parent = Frame
Shadow.Color = ColorSequence.new{
    ColorSequenceKeypoint.new(0, Color3.fromRGB(0, 170, 255)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(140, 0, 255))
}

-- ANIMACIÓN DE APARICIÓN
Frame.Position = Frame.Position - UDim2.new(0,0,0.2,0)
Frame.BackgroundTransparency = 1
Glow.Transparency = 1

TweenService:Create(Frame, TweenInfo.new(0.6, Enum.EasingStyle.Quad), {
    Position = UDim2.new(0.5, -110, 0.5, -90),
    BackgroundTransparency = 0.2
}):Play()

TweenService:Create(Glow, TweenInfo.new(0.8, Enum.EasingStyle.Quad), {
    Transparency = 0.5
}):Play()

Frame.Active = true
Frame.Draggable = true

-- TITLE
Title.Parent = Frame
Title.Size = UDim2.new(1, 0, 0, 35)
Title.BackgroundTransparency = 1
Title.Text = "SPINELLY HUB"
Title.TextScaled = true
Title.Font = Enum.Font.GothamBold
Title.TextColor3 = Color3.fromRGB(0, 220, 255)

-- BOTÓN AZUL FUTURISTA
ButtonBlue.Parent = Frame
ButtonBlue.Size = UDim2.new(0.9, 0, 0, 40)
ButtonBlue.Position = UDim2.new(0.05, 0, 0.32, 0)
ButtonBlue.BackgroundColor3 = Color3.fromRGB(0, 100, 255)
ButtonBlue.Text = "Auto Steal"
ButtonBlue.TextScaled = true
ButtonBlue.Font = Enum.Font.GothamBold
ButtonBlue.TextColor3 = Color3.fromRGB(255, 255, 255)
CornerBlue.Parent = ButtonBlue

GlowBlue.Parent = ButtonBlue
GlowBlue.Color = Color3.fromRGB(0, 150, 255)
GlowBlue.Thickness = 1.4
GlowBlue.Transparency = 0.4

-- BOTÓN ROJO FUTURISTA
ButtonRed.Parent = Frame
ButtonRed.Size = UDim2.new(0.9, 0, 0, 40)
ButtonRed.Position = UDim2.new(0.05, 0, 0.62, 0)
ButtonRed.BackgroundColor3 = Color3.fromRGB(255, 40, 40)
ButtonRed.Text = "Close"
ButtonRed.TextScaled = true
ButtonRed.Font = Enum.Font.GothamBold
ButtonRed.TextColor3 = Color3.fromRGB(255, 255, 255)
CornerRed.Parent = ButtonRed

GlowRed.Parent = ButtonRed
GlowRed.Color = Color3.fromRGB(255, 80, 80)
GlowRed.Thickness = 1.4
GlowRed.Transparency = 0.4

-- MENSAJE INFERIOR
StatusMsg.Parent = Frame
StatusMsg.Size = UDim2.new(1, 0, 0, 22)
StatusMsg.Position = UDim2.new(0, 0, 0.88, 0)
StatusMsg.BackgroundTransparency = 1
StatusMsg.Text = ""
StatusMsg.TextScaled = true
StatusMsg.Font = Enum.Font.Gotham
StatusMsg.TextColor3 = Color3.fromRGB(0, 255, 255)
StatusMsg.TextTransparency = 1

-- EFECTOS HOVER FUTURISTAS
local function Hover(btn, orig, hover)
    btn.MouseEnter:Connect(function()
        TweenService:Create(btn, TweenInfo.new(0.2), {BackgroundColor3 = hover}):Play()
    end)
    btn.MouseLeave:Connect(function()
        TweenService:Create(btn, TweenInfo.new(0.2), {BackgroundColor3 = orig}):Play()
    end)
end

Hover(ButtonBlue, Color3.fromRGB(0,100,255), Color3.fromRGB(0,150,255))
Hover(ButtonRed, Color3.fromRGB(255,40,40), Color3.fromRGB(255,75,75))

-- MENSAJE "STEALING..." ANIMADO
ButtonBlue.MouseButton1Click:Connect(function()
    StatusMsg.Text = "Stealing..."
    StatusMsg.TextTransparency = 1
    TweenService:Create(StatusMsg, TweenInfo.new(0.3), {TextTransparency = 0}):Play()

    task.delay(2, function()
        TweenService:Create(StatusMsg, TweenInfo.new(0.4), {TextTransparency = 1}):Play()
    end)
end)

-- CIERRE ANIMADO
ButtonRed.MouseButton1Click:Connect(function()
    TweenService:Create(Frame, TweenInfo.new(0.4), {
        BackgroundTransparency = 1,
        Position = Frame.Position - UDim2.new(0,0,0.2,0)
    }):Play()

    TweenService:Create(Glow, TweenInfo.new(0.4), {
        Transparency = 1
    }):Play()

    task.wait(0.4)
    Frame.Visible = false
end)
