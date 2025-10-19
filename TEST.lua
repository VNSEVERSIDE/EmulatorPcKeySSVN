local VirtualInputManager = game:GetService("VirtualInputManager")
local CollectionService = game:GetService("CollectionService")
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

local function createGUI()
	local G2L = {}

	G2L["ScreenGui_1"] = Instance.new("ScreenGui", LocalPlayer:WaitForChild("PlayerGui"))
	G2L["ScreenGui_1"].ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	CollectionService:AddTag(G2L["ScreenGui_1"], "main")

	local function createButton(name, key, posX, posY, sizeX, sizeY)
		local b = Instance.new("TextButton", G2L["ScreenGui_1"])
		b.Name = name
		b.BorderSizePixel = 0
		b.TextSize = 96
		b.BackgroundColor3 = Color3.fromRGB(125,125,125)
		b.FontFace = Font.new("rbxasset://fonts/families/RomanAntique.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
		b.BackgroundTransparency = 0.5
		b.Size = UDim2.new(0, sizeX, 0, sizeY)
		b.Text = key
		b.Position = UDim2.new(0, posX, 0, posY)
		local c = Instance.new("UICorner", b)
		c.CornerRadius = UDim.new(91919120, 0)
		b.MouseButton1Click:Connect(function()
			VirtualInputManager:SendKeyEvent(true, Enum.KeyCode[key], false, game)
			task.wait(0.05)
			VirtualInputManager:SendKeyEvent(false, Enum.KeyCode[key], false, game)
		end)
	end

	createButton("TextButton_2","Q",1358,56,144,134)
	createButton("TextButton_4","E",1150,234,102,94)
	createButton("TextButton_6","R",1402,-38,98,92)
	createButton("TextButton_8","T",1288,-36,98,92)
	createButton("TextButton_a","Y",1238,70,98,92)
	createButton("TextButton_c","U",1274,186,98,92)
	createButton("TextButton_e","I",1390,198,98,92)
	createButton("TextButton_10","O",1050,-38,98,92)
	createButton("TextButton_12","P",950,-38,98,92)
	createButton("TextButton_14","F",850,-38,98,92)
	createButton("TextButton_16","G",750,-38,98,92)
	createButton("TextButton_18","H",650,-38,98,92)
	createButton("TextButton_1a","J",550,-38,98,92)
	createButton("TextButton_1c","K",450,-38,98,92)
	createButton("TextButton_1e","L",350,-38,98,92)
	createButton("TextButton_20","Z",250,-38,98,92)
	createButton("TextButton_22","X",150,-38,98,92)
	createButton("TextButton_24","C",34,50,98,92)
	createButton("TextButton_26","V",34,150,98,92)
	createButton("TextButton_28","B",34,250,98,92)
	createButton("TextButton_2a","N",34,350,98,92)
	createButton("TextButton_2c","M",34,450,98,92)

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