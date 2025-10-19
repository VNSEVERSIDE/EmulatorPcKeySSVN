local CollectionService = game:GetService("CollectionService")
local VirtualInputManager = game:GetService("VirtualInputManager")
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

local function createGUI()
    local G2L = {}

    G2L["ScreenGui_1"] = Instance.new("ScreenGui", LocalPlayer:WaitForChild("PlayerGui"))
    G2L["ScreenGui_1"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling
    CollectionService:AddTag(G2L["ScreenGui_1"], "main")

    G2L["Frame_2"] = Instance.new("Frame", G2L["ScreenGui_1"])
    G2L["Frame_2"]["BorderSizePixel"] = 0
    G2L["Frame_2"]["BackgroundColor3"] = Color3.fromRGB(36, 36, 36)
    G2L["Frame_2"]["Size"] = UDim2.new(0, 334, 0, 322)
    G2L["Frame_2"]["Position"] = UDim2.new(0, 168, 0, 276)
    G2L["Frame_2"]["BackgroundTransparency"] = 0.3

    G2L["UICorner_3"] = Instance.new("UICorner", G2L["Frame_2"])
    G2L["UICorner_3"]["CornerRadius"] = UDim.new(5, 0)

    G2L["TextButton_4"] = Instance.new("TextButton", G2L["ScreenGui_1"])
    G2L["TextButton_4"]["BorderSizePixel"] = 0
    G2L["TextButton_4"]["TextSize"] = 96
    G2L["TextButton_4"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
    G2L["TextButton_4"]["FontFace"] = Font.new("rbxasset://fonts/families/RomanAntique.json")
    G2L["TextButton_4"]["BackgroundTransparency"] = 0.67
    G2L["TextButton_4"]["Size"] = UDim2.new(0, 96, 0, 110)
    G2L["TextButton_4"]["Text"] = "W"
    G2L["TextButton_4"]["Position"] = UDim2.new(0, 286, 0, 282)

    G2L["UICorner_5"] = Instance.new("UICorner", G2L["TextButton_4"])
    G2L["UICorner_5"]["CornerRadius"] = UDim.new(1, 0)

    G2L["TextButton_6"] = Instance.new("TextButton", G2L["ScreenGui_1"])
    G2L["TextButton_6"]["BorderSizePixel"] = 0
    G2L["TextButton_6"]["TextSize"] = 96
    G2L["TextButton_6"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
    G2L["TextButton_6"]["FontFace"] = Font.new("rbxasset://fonts/families/RomanAntique.json")
    G2L["TextButton_6"]["BackgroundTransparency"] = 0.67
    G2L["TextButton_6"]["Size"] = UDim2.new(0, 110, 0, 96)
    G2L["TextButton_6"]["Text"] = "A"
    G2L["TextButton_6"]["Position"] = UDim2.new(0, 176, 0, 390)

    G2L["UICorner_7"] = Instance.new("UICorner", G2L["TextButton_6"])
    G2L["UICorner_7"]["CornerRadius"] = UDim.new(1, 0)

    G2L["TextButton_8"] = Instance.new("TextButton", G2L["ScreenGui_1"])
    G2L["TextButton_8"]["BorderSizePixel"] = 0
    G2L["TextButton_8"]["TextSize"] = 96
    G2L["TextButton_8"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
    G2L["TextButton_8"]["FontFace"] = Font.new("rbxasset://fonts/families/RomanAntique.json")
    G2L["TextButton_8"]["BackgroundTransparency"] = 0.67
    G2L["TextButton_8"]["Size"] = UDim2.new(0, 110, 0, 96)
    G2L["TextButton_8"]["Text"] = "D"
    G2L["TextButton_8"]["Position"] = UDim2.new(0, 382, 0, 390)

    G2L["UICorner_9"] = Instance.new("UICorner", G2L["TextButton_8"])
    G2L["UICorner_9"]["CornerRadius"] = UDim.new(1, 0)

    G2L["TextButton_a"] = Instance.new("TextButton", G2L["ScreenGui_1"])
    G2L["TextButton_a"]["BorderSizePixel"] = 0
    G2L["TextButton_a"]["TextSize"] = 96
    G2L["TextButton_a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
    G2L["TextButton_a"]["FontFace"] = Font.new("rbxasset://fonts/families/RomanAntique.json")
    G2L["TextButton_a"]["BackgroundTransparency"] = 0.67
    G2L["TextButton_a"]["Size"] = UDim2.new(0, 96, 0, 110)
    G2L["TextButton_a"]["Text"] = "S"
    G2L["TextButton_a"]["Position"] = UDim2.new(0, 286, 0, 484)

    G2L["UICorner_b"] = Instance.new("UICorner", G2L["TextButton_a"])
    G2L["UICorner_b"]["CornerRadius"] = UDim.new(1, 0)

    G2L["TextButton_c"] = Instance.new("TextButton", G2L["ScreenGui_1"])
    G2L["TextButton_c"]["BorderSizePixel"] = 0
    G2L["TextButton_c"]["TextSize"] = 60
    G2L["TextButton_c"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0)
    G2L["TextButton_c"]["FontFace"] = Font.new("rbxasset://fonts/families/RomanAntique.json")
    G2L["TextButton_c"]["BackgroundTransparency"] = 0.8
    G2L["TextButton_c"]["Size"] = UDim2.new(0, 216, 0, 214)
    G2L["TextButton_c"]["Text"] = "SPACE"
    G2L["TextButton_c"]["Position"] = UDim2.new(0, 1194, 0, 332)

    G2L["UICorner_d"] = Instance.new("UICorner", G2L["TextButton_c"])
    G2L["UICorner_d"]["CornerRadius"] = UDim.new(10000, 0)

    local holding = {}
    local function holdKey(keyCode, button)
        button.MouseButton1Down:Connect(function()
            holding[keyCode] = true
            VirtualInputManager:SendKeyEvent(true, keyCode, false, game)
        end)
        button.MouseButton1Up:Connect(function()
            holding[keyCode] = false
            VirtualInputManager:SendKeyEvent(false, keyCode, false, game)
        end)
    end

    holdKey(Enum.KeyCode.W, G2L["TextButton_4"])
    holdKey(Enum.KeyCode.A, G2L["TextButton_6"])
    holdKey(Enum.KeyCode.S, G2L["TextButton_a"])
    holdKey(Enum.KeyCode.D, G2L["TextButton_8"])

    G2L["TextButton_c"].MouseButton1Click:Connect(function()
        VirtualInputManager:SendKeyEvent(true, Enum.KeyCode.Space, false, game)
        task.wait(0.1)
        VirtualInputManager:SendKeyEvent(false, Enum.KeyCode.Space, false, game)
    end)

    return G2L["ScreenGui_1"]
end

local function init()
    for _, gui in ipairs(LocalPlayer.PlayerGui:GetChildren()) do
        if CollectionService:HasTag(gui, "main") then
            gui:Destroy()
        end
    end
    createGUI()
end

init()

LocalPlayer.CharacterAdded:Connect(function()
    task.wait(1)
    init()
end)