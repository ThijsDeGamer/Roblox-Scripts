--Self made lol also credits to the library maker
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/Revenant", true))()
local Flags = Library.Flags
--Library.DefaultColor = Color3.fromRGB(65, 143, 232)

local Window = Library:Window({
   Text = "Exploits"
})

local Window2 = Library:Window({
   Text = "Teleports"
})

local Window3 = Library:Window({
   Text = "Fun"
})

local Window4 = Library:Window({
   Text = "Character"
})

local Window5 = Library:Window({
   Text = "Settings"
})

Window:Toggle({
   Text = "Walk on Water",
   Callback = function(bool)
   	   if bool == false then do game.Workspace.WaterLevel.CanCollide = false
		  game.Workspace.WaterLevel.Size = Vector3.new(10, 1, 10)
	   end
	   end
	   if bool == true then do game.Workspace.WaterLevel.CanCollide = true
	   game.Workspace.WaterLevel.Size = Vector3.new(1000, 1, 1000)
	   end
	   end
   end
})

Window:Toggle({
   Text = "Choose Map",
   Callback = function(bool)
   	   if bool == false then do game.Players.LocalPlayer.PlayerGui.MainGui.MapVotePage.Visible = false
	   end
	   end
	   if bool == true then do game.Players.LocalPlayer.PlayerGui.MainGui.MapVotePage.Visible = true
	   end
	   end
   end
})


Window2:Button({
   Text = "Island",
   Callback = function(bool)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-108, 49, 0)
end
})
Window2:Button({
   Text = "Tower",
   Callback = function(bool)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-264, 196, 288)
end
})

Window3:Toggle({
   Text = "Milk Water",
   Callback = function(bool)
   	   if bool == false then do game.Workspace.WaterLevel.BrickColor = BrickColor.new("Bright blue")
	   end
	   end
	   if bool == true then do game.Workspace.WaterLevel.BrickColor = BrickColor.new("White")
	   end
	   end
   end
})

Window4:Slider({
   Text = "WalkSpeed",
   Default = 16,
   Minimum = 16,
   Maximum = 200,
   Callback = function(value)
       game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = value
   end
})
Window4:Slider({
   Text = "JumpPower",
   Default = 50,
   Minimum = 50,
   Maximum = 250,
   Callback = function(value)
       game.Players.LocalPlayer.Character.Humanoid.JumpPower = value
   end
})

Window5:Label({
   Text = "Made by: TRHP discord.gg/G3KVvt988s",
   Color = Color3.fromRGB(214, 214, 214)
})

Window5:Keybind({
   Text = "Toggle Library",
   Default = Enum.KeyCode.LeftAlt,
   Callback = function()
       Library:Toggle()
   end
})

wait(2)
Toggle:Set({
   Bool = true
})

while true do
   if Flags.TestFlag then
       warn("Toggled")
   end
   wait(1)
end
