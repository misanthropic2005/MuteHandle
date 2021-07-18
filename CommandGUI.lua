-- Gui to Lua
-- Version: 3.2

-- Instances:

local CommandS = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local Main_LIST = Instance.new("ScrollingFrame")
local UIGradient = Instance.new("UIGradient")
local UIListLayout = Instance.new("UIListLayout")
local Assets = Instance.new("Folder")
local Command = Instance.new("TextLabel")
local Main_TITLE = Instance.new("TextLabel")
local UIGradient_2 = Instance.new("UIGradient")
local UIGradient_3 = Instance.new("UIGradient")
local Close = Instance.new("TextButton")

--Properties:

CommandS.Name = "CommandS"
CommandS.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
CommandS.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Main.Name = "Main"
Main.Parent = CommandS
Main.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Main.BorderSizePixel = 0
Main.Position = UDim2.new(-0.5, 0, 0.298000008, 0)
Main.Size = UDim2.new(0, 253, 0, 382)

Main_LIST.Name = "Main_LIST"
Main_LIST.Parent = Main
Main_LIST.Active = true
Main_LIST.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Main_LIST.BackgroundTransparency = 1.000
Main_LIST.BorderSizePixel = 0
Main_LIST.Size = UDim2.new(0, 253, 0, 382)
Main_LIST.ScrollBarThickness = 7

UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(0.00, Color3.fromRGB(251, 255, 254)), ColorSequenceKeypoint.new(0.00, Color3.fromRGB(62, 255, 233)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(158, 255, 173)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 255, 255))}
UIGradient.Parent = Main_LIST

UIListLayout.Parent = Main_LIST
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder

Assets.Name = "Assets"
Assets.Parent = Main

Command.Name = "Command"
Command.Parent = Assets
Command.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Command.BackgroundTransparency = 1.000
Command.Size = UDim2.new(0, 243, 0, 41)
Command.Visible = false
Command.Font = Enum.Font.Sarpanch
Command.Text = "!Command"
Command.TextColor3 = Color3.fromRGB(0, 0, 0)
Command.TextScaled = true
Command.TextSize = 14.000
Command.TextWrapped = true

Main_TITLE.Name = "Main_TITLE"
Main_TITLE.Parent = Main
Main_TITLE.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Main_TITLE.BorderSizePixel = 0
Main_TITLE.Position = UDim2.new(0, 0, -0.0837696344, 0)
Main_TITLE.Size = UDim2.new(0, 253, 0, 32)
Main_TITLE.Font = Enum.Font.Sarpanch
Main_TITLE.Text = "Commands"
Main_TITLE.TextColor3 = Color3.fromRGB(85, 85, 255)
Main_TITLE.TextScaled = true
Main_TITLE.TextSize = 14.000
Main_TITLE.TextWrapped = true

UIGradient_2.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(0, 255, 255)), ColorSequenceKeypoint.new(0.42, Color3.fromRGB(156, 150, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 85, 255))}
UIGradient_2.Parent = Main_TITLE

UIGradient_3.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(0, 255, 255)), ColorSequenceKeypoint.new(0.42, Color3.fromRGB(156, 150, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 85, 255))}
UIGradient_3.Parent = Main

Close.Name = "Close"
Close.Parent = Main
Close.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Close.BackgroundTransparency = 1.000
Close.Position = UDim2.new(0.873517811, 0, -0.0837696344, 0)
Close.Size = UDim2.new(0, 32, 0, 32)
Close.Font = Enum.Font.Sarpanch
Close.Text = "X"
Close.TextColor3 = Color3.fromRGB(0, 255, 255)
Close.TextScaled = true
Close.TextSize = 14.000
Close.TextWrapped = true

-- Scripts:

local function BOISOWY_fake_script() -- Assets.Handle 
	local script = Instance.new('LocalScript', Assets)

	local function CreateCommand(Name, Description)
	    
	    Name = ("!" .. Name)
	    
	    local CommandAsset = script.Parent:WaitForChild("Command")
	    local CommandList = script.Parent.Parent:WaitForChild("Main_LIST")
	    local CommandYield = CommandList:WaitForChild("UIListLayout")
	    local NewCommand = CommandAsset:Clone()
	    
	    local ChangeDesc = function()
	       NewCommand.Text = Description
	    end
	    
	    local ChangeName = function()
	        NewCommand.Text = Name
	    end
	    
	    NewCommand.MouseEnter:Connect(ChangeDesc)
	    NewCommand.MouseLeave:Connect(ChangeName)
	    
	    NewCommand.Text = Name
	    NewCommand.Name = Name
	    NewCommand.Parent = CommandList
	    NewCommand.Visible = true
	end
  
  
  
  
  
  
	
	CreateCommand("Cmds", "This command will bring up the command documentation GUI. ( nil )")
	CreateCommand("Commands", "This command will bring up the command documentation GUI. ( nil )")
	CreateCommand("Mute", "This command mute's a player's boombox.( player name )")
	CreateCommand("Pmute", "This command mute's a player's permamently ( player name ).")
	CreateCommand("Stop", "This command will stop a player's audio on a boombox. ( player name )")
	CreateCommand("UnMute", "This command unmute's a player's boombox. ( player name )")
	CreateCommand("Unpmute", "This command remove a player from the perm muted config ( UserID )")
	CreateCommand("DupeCheck", "This command will check if any players are using 2+ boomboxes. ( nil )")
  
  
  
end

coroutine.wrap(BOISOWY_fake_script)()
local function CHKYQ_fake_script() -- Close.TweenOut 
	local script = Instance.new('LocalScript', Close)

	script.Parent.MouseButton1Down:Connect(function()
	    local Tween = script.Parent.Parent:TweenPosition(UDim2.new(-0.5, 0, 0.298, 0))
	    wait(.5)
	    script.Parent.Parent.Parent:Destroy()
	end)
end
coroutine.wrap(CHKYQ_fake_script)()
local function MOHWVU_fake_script() -- Main.TweenInto 
	local script = Instance.new('LocalScript', Main)

	script.Parent:TweenPosition(UDim2.new(0, 0,0.298, 0))
end
coroutine.wrap(MOHWVU_fake_script)()
