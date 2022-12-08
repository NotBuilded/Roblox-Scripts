local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
		local Window = OrionLib:MakeWindow({Name = ""..game.Name.."", HidePremium = false, SaveConfig = false, ConfigFolder = "OrionTest"})
	
	
		local Tab = Window:MakeTab({
			Name = "💀  Home",
			Icon = "",
			PremiumOnly = false
		})
	
		local Tab2 = Window:MakeTab({
			Name = "👍  Others",
			Icon = "",
			PremiumOnly = false
		})
	
		local Tab3 = Window:MakeTab({
			Name = "👋  Client",
			Icon = "",
			PremiumOnly = false
		})

		local Section = Tab3:AddSection({
			Name = "Time"
		})

		Tab3:AddSlider({
	Name = "Time",
	Min = 0,
	Max = 24,
	Default = 5,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "bananas",
	Callback = function(Value)
		game.Lighting.TimeOfDay = Value.."00:00"
	end    
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
