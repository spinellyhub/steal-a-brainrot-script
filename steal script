-- UI VISUAL, NO INTERACTÚA CON EL JUEGO
-- SOLO MUESTRA UN MENÚ

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local ButtonBlue = Instance.new("TextButton")
local ButtonRed = Instance.new("TextButton")
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

-- FUNCIÓN VISUAL PARA CERRAR EL MENÚ (NO TOCA EL JUEGO)
ButtonRed.MouseButton1Click:Connect(function()
    Frame.Visible = false
end)
