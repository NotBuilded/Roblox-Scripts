-- Gui to Lua
-- Version: 3.2

-- Instances:

local FLUILoaderPage = Instance.new("ScreenGui")
local fn = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local Frame = Instance.new("Frame")
local ScrollingFrame = Instance.new("ScrollingFrame")
local sc1 = Instance.new("TextButton")
local close = Instance.new("ImageButton")

--Properties:

FLUILoaderPage.Name = "FLUILoaderPage"
FLUILoaderPage.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
FLUILoaderPage.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

fn.Name = "fn"
fn.Parent = FLUILoaderPage
fn.BackgroundColor3 = Color3.fromRGB(3, 3, 3)
fn.Position = UDim2.new(0.330674827, 0, 0.33016625, 0)
fn.Size = UDim2.new(0, 500, 0, 300)

TextLabel.Parent = fn
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.Size = UDim2.new(0, 70, 0, 35)
TextLabel.Font = Enum.Font.JosefinSans
TextLabel.Text = "FLUI"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextSize = 30.000

Frame.Parent = fn
Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame.BackgroundTransparency = 1.000
Frame.Position = UDim2.new(0, 0, 0.140000105, 0)
Frame.Size = UDim2.new(0, 500, 0, 258)

ScrollingFrame.Parent = Frame
ScrollingFrame.Active = true
ScrollingFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ScrollingFrame.BackgroundTransparency = 1.000
ScrollingFrame.BorderSizePixel = 0
ScrollingFrame.Size = UDim2.new(0, 500, 0, 258)
ScrollingFrame.ScrollBarThickness = 4

sc1.Name = "sc1"
sc1.Parent = ScrollingFrame
sc1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
sc1.BackgroundTransparency = 1.000
sc1.BorderSizePixel = 0
sc1.Position = UDim2.new(0.156000003, 0, 0.0339383855, 0)
sc1.Size = UDim2.new(0, 344, 0, 50)
sc1.AutoButtonColor = false
sc1.Font = Enum.Font.JosefinSans
sc1.Text = "Impossible Obby By Glaze Community"
sc1.TextColor3 = Color3.fromRGB(255, 255, 255)
sc1.TextSize = 18.000

close.Name = "close"
close.Parent = fn
close.BackgroundTransparency = 1.000
close.Position = UDim2.new(0.948085904, 0, -0.00102138519, 0)
close.Size = UDim2.new(0, 25, 0, 25)
close.ZIndex = 2
close.Image = "rbxassetid://3926305904"
close.ImageRectOffset = Vector2.new(284, 4)
close.ImageRectSize = Vector2.new(24, 24)

-- Scripts:

local function SRUXJIB_fake_script() -- sc1.LocalScript 
	local script = Instance.new('LocalScript', sc1)

	script.Parent.MouseButton1Up:Connect(function()
		--// script
		--// kopalnia racer - roblox
	
		local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
		local Window = OrionLib:MakeWindow({Name = "FIGB / Glaze Community", HidePremium = false, SaveConfig = false, ConfigFolder = "OrionTest"})
	
	
		local Tab = Window:MakeTab({
			Name = "Tab 1",
			Icon = "rbxassetid://4483345998",
			PremiumOnly = false
		})
	
		local Tab2 = Window:MakeTab({
			Name = "Tab 2",
			Icon = "rbxassetid://4483345998",
			PremiumOnly = false
		})
	
		local Tab3 = Window:MakeTab({
			Name = "Tab 3",
			Icon = "rbxassetid://4483345998",
			PremiumOnly = false
		})
	
		Tab3:AddButton({
			Name = "Leave The Game",
			Callback = function()
				game:Shutdown()
			end
		})
	
		function messageboxx(tit, cnt, tim)
			OrionLib:MakeNotification({
				Name = tit,
				Content = cnt,
				Image = "rbxassetid://4483345998",
				Time = tim
			})
		end
	
		local Section = Tab:AddSection({
			Name = "Main"
		})
	
		Tab:AddButton({
			Name = "Color Pads (Red = Bad Ones, White = Good Ones)",
			Callback = function()
				for _,v in pairs(workspace.tiles:GetChildren()) do
					if v:IsA("Part") then
	
						if v:FindFirstChild("Break") then
							v.BrickColor = BrickColor.new("Really red")
						end
						if not v:FindFirstChild("Break") then
							v.BrickColor = BrickColor.new("Really green")
						end
	
					end
				end
			end    
		})
	
		Tab:AddButton({
			Name = "Show Dead Part",
			Callback = function()
				if workspace:FindFirstChild("Death") then
					workspace.Death.Transparency = 0.5
				end
				if not workspace:FindFirstChild("Death") then
					messageboxx("Death Box", "There is no Death Part", 3)
				end
			end
		})
	
		Tab:AddButton({
			Name = "Delete Dead Part",
			Callback = function()
				if workspace:FindFirstChild("Death") then
					workspace.Death:Destroy()
				end
				if not workspace:FindFirstChild("Death") then
					messageboxx("Death Box", "There is no Death Part", 3)
				end
			end
		})
	
		Tab:AddButton({
			Name = "Teleport to End",
			Callback = function()
				workspace[game.Players.LocalPlayer.Name].HumanoidRootPart.CFrame = workspace.Spawn.CFrame
			end
		})
	
	
		local Section = Tab:AddSection({
			Name = "Give Items"
		})
	
		Tab:AddButton({
			Name = "Give Jetpack",
			Callback = function()
				v1 = game.ReplicatedStorage.Tools.Jetpack:Clone()
				v1.Parent = game.Players.LocalPlayer.Backpack
			end 
		})
	
		Tab:AddButton({
			Name = "Get Gravity Coil",
			Callback = function()
				workspace[game.Players.LocalPlayer.Name].HumanoidRootPart.CFrame = CFrame.new(-749, 63, -575)
				wait(4)
				workspace[game.Players.LocalPlayer.Name].HumanoidRootPart.CFrame = workspace.Spawn2.CFrame
			end
		})
		Tab:AddButton({
			Name = "Get Speed Coil",
			Callback = function()
				workspace[game.Players.LocalPlayer.Name].HumanoidRootPart.CFrame = CFrame.new(-751, 63, -585)
				wait(4)
				workspace[game.Players.LocalPlayer.Name].HumanoidRootPart.CFrame = workspace.Spawn2.CFrame
			end
		})
		Tab:AddButton({
			Name = "Get Magic Carpet",
			Callback = function()
				workspace[game.Players.LocalPlayer.Name].HumanoidRootPart.CFrame = CFrame.new(-751, 63, -594)
				wait(4)
				workspace[game.Players.LocalPlayer.Name].HumanoidRootPart.CFrame = workspace.Spawn2.CFrame
			end
		})
	
		local Section = Tab:AddSection({
			Name = "Others"
		})
		Tab:AddTextbox({
			Name = "Custom Glass Break Sound",
			Default = "default box input",
			TextDisappear = true,
			Callback = function(Value)
				workspace["Glass breaking"].SoundId = "rbxassetid://"..Value
			end	  
		})
	
		Tab:AddButton({
			Name = "Show Session Deaths",
			Callback = function()
				messageboxx("Session Deaths", game.Players.LocalPlayer.sessionData.Deaths.Value, 5)
			end
		})
	
		Tab:AddTextbox({
			Name = "Show Someone Session Deaths",
			Default = "Full Name",
			TextDisappear = true,
			Callback = function(Value)
				messageboxx("Session Deaths for "..Value, game.Players[Value].sessionData.Deaths.Value, 5)
			end	  
		})
	
		local Section = Tab:AddSection({
			Name = "HD Admin"
		})
	
		Tab:AddToggle({
			Name = "Toggle HD Admin Icon",
			Default = false,
			Callback = function(Value)
				game.Players.LocalPlayer.PlayerGui.TopbarPlus.TopbarContainer.Visible = Value
			end
		})
	
		local Section = Tab2:AddSection({
			Name = "Player TP"
		})
	
		Tab2:AddTextbox({
			Name = "Name of target to Teleport / Instant",
			Default = "default box input",
			TextDisappear = true,
			Callback = function(Value)
				workspace[game.Players.LocalPlayer.Name].HumanoidRootPart.CFrame = workspace[Value].HumanoidRootPart.CFrame
			end	  
		})
	
		Tab2:AddTextbox({
			Name = "Name of target to Teleport / Keybind",
			Default = "default box input",
			TextDisappear = true,
			Callback = function(Value)
				_G.TargetTeleport = Value
			end	  
		})
		Tab2:AddBind({
			Name = "Teleport",
			Default = Enum.KeyCode.B,
			Hold = false,
			Callback = function()
				workspace[game.Players.LocalPlayer.Name].HumanoidRootPart.CFrame = workspace[_G.TargetTeleport].HumanoidRootPart.CFrame
			end    
		})
	
		local Section = Tab2:AddSection({
			Name = "LocalPlayer"
		})
	
		Tab2:AddSlider({
			Name = "Gravity",
			Min = 0,
			Max = 1000,
			Default = 192,
			Color = Color3.fromRGB(255,255,255),
			Increment = 1,
			ValueName = "bananas",
			Callback = function(Value)
				workspace.Gravity = Value
			end    
		})
	
		Tab2:AddSlider({
			Name = "Speed",
			Min = 0,
			Max = 50,
			Default = 16,
			Color = Color3.fromRGB(255,255,255),
			Increment = 1,
			ValueName = "bananas",
			Callback = function(Value)
				game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
			end    
		})
		Tab2:AddSlider({
			Name = "Jump",
			Min = 0,
			Max = 150,
			Default = 50,
			Color = Color3.fromRGB(255,255,255),
			Increment = 1,
			ValueName = "bananas",
			Callback = function(Value)
				game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
			end    
		})
	
		local Section = Tab2:AddSection({
			Name = "Commands"
		})
	
		Tab2:AddButton({
			Name = "/clear",
			Callback = function()
				for _,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
	
					if v:IsA("Tool") then
						v:Destroy()
					end
				end
			end
		})
	
		Tab2:AddButton({
			Name = "Delete Ice Parts (if they still visible)",
			Callback = function()
				for _,v in pairs(workspace:GetChildren()) do
					if v.Name == "Ice" then
						v:Destroy()
					end
				end
			end
		})
		messageboxx("98% Fail Impossible Glass Bridge!", "Script Loaded!, Have Fun With v1", 3)
	end)
end
coroutine.wrap(SRUXJIB_fake_script)()
local function OAXHVBR_fake_script() -- close.LocalScript 
	local script = Instance.new('LocalScript', close)

	script.Parent.MouseButton1Up:Connect(function()
		script.Parent.Parent.Parent.fn:Destroy()
	end)
end
coroutine.wrap(OAXHVBR_fake_script)()
local function WLCIVCQ_fake_script() -- fn.UY 
	local script = Instance.new('LocalScript', fn)

	local UserInputService = game:GetService("UserInputService")
	local runService = (game:GetService("RunService"));
	
	local gui = script.Parent
	
	local dragging
	local dragInput
	local dragStart
	local startPos
	
	function Lerp(a, b, m)
		return a + (b - a) * m
	end;
	
	local lastMousePos
	local lastGoalPos
	local DRAG_SPEED = (8); -- // The speed of the UI darg.
	function Update(dt)
		if not (startPos) then return end;
		if not (dragging) and (lastGoalPos) then
			gui.Position = UDim2.new(startPos.X.Scale, Lerp(gui.Position.X.Offset, lastGoalPos.X.Offset, dt * DRAG_SPEED), startPos.Y.Scale, Lerp(gui.Position.Y.Offset, lastGoalPos.Y.Offset, dt * DRAG_SPEED))
			return 
		end;
	
		local delta = (lastMousePos - UserInputService:GetMouseLocation())
		local xGoal = (startPos.X.Offset - delta.X);
		local yGoal = (startPos.Y.Offset - delta.Y);
		lastGoalPos = UDim2.new(startPos.X.Scale, xGoal, startPos.Y.Scale, yGoal)
		gui.Position = UDim2.new(startPos.X.Scale, Lerp(gui.Position.X.Offset, xGoal, dt * DRAG_SPEED), startPos.Y.Scale, Lerp(gui.Position.Y.Offset, yGoal, dt * DRAG_SPEED))
	end;
	
	gui.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			dragging = true
			dragStart = input.Position
			startPos = gui.Position
			lastMousePos = UserInputService:GetMouseLocation()
	
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragging = false
				end
			end)
		end
	end)
	
	gui.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			dragInput = input
		end
	end)
	
	runService.Heartbeat:Connect(Update)
end
coroutine.wrap(WLCIVCQ_fake_script)()
