for x, y in pairs(game.CoreGui:GetChildren()) do
   if y.Name == ("CommandS") then
      y:Destroy()	
   end
end

local PermGUI = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local Main_LIST = Instance.new("ScrollingFrame")
local UIGradient = Instance.new("UIGradient")
local UIListLayout = Instance.new("UIListLayout")
local Assets = Instance.new("Folder")
local Command = Instance.new("TextButton")
local Main_TITLE = Instance.new("TextLabel")
local UIGradient_2 = Instance.new("UIGradient")
local UIGradient_3 = Instance.new("UIGradient")
local Close = Instance.new("TextButton")

PermGUI.Name = "PermGUI"
PermGUI.Parent = game.CoreGui
PermGUI.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Main.Name = "Main"
Main.Parent = PermGUI
Main.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Main.BorderSizePixel = 0
Main.Position = UDim2.new(-0.2, 0, 0.264999986, 0)
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
Command.BorderSizePixel = 0
Command.Size = UDim2.new(0, 243, 0, 41)
Command.Visible = false
Command.Font = Enum.Font.Sarpanch
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
Main_TITLE.Text = "Perm Mute List"
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

local function YXASUIL_fake_script() -- Assets.Handle 
	local script = Instance.new('LocalScript', Assets)

	local function GetCurrentPermUsers()
	    
	    local Muted = {
	        1370820253, 
	        3762170, 
	        1204489181, 
	        1120391065, 
	        205999718, 
	        374722616, 
	        1297969936, 
	        1275737609, 
	        1075487231, 
	        1074969375, 
	        464044984,
	        2002927338,
	        1454331658
	    }
	
	    local PermUserConfig = ("MetaAdmin_PermMuted.JSON")
	    local ConfigDefault = (Muted)
	    local HttpService = (game:GetService("HttpService"))
	
	    if isfile(PermUserConfig) then
	
	        local File = (readfile(PermUserConfig))
	        local Table = HttpService:JSONDecode(File)
	
	        return Table
	    end
	
	    if not isfile(PermUserConfig) then
	        writefile(PermUserConfig, HttpService:JSONEncode(ConfigDefault))
	        
	        return ConfigDefault
	    end
	end
	
	local function AddMuted(UserId, UserName)
	
	    local CommandAsset = script.Parent:WaitForChild("Command")
	    local CommandList = script.Parent.Parent:WaitForChild("Main_LIST")
	    local CommandYield = CommandList:WaitForChild("UIListLayout")
	    local NewCommand = CommandAsset:Clone()
	
	    local ChangeID = function()
	        NewCommand.Text = (UserId .. " ( " .. UserName .. " )")
	        NewCommand.TextColor3 = Color3.fromRGB(0, 0, 0)
	    end
	
	    local ChangeMSG = function()
	        NewCommand.Text = ("Remove " .. UserName)
	        NewCommand.TextColor3 = Color3.fromRGB(255, 0, 0)
	    end
	
	    local wrn = function(StringValue, NumberValue)
	        game:GetService("StarterGui"):SetCore("SendNotification",{
	            Title = "Meta Admin",
	            Text = tostring(StringValue),
	            Duration = NumberValue,
	        })
	    end
	
	    local Clicked = function()
	
	        local function PermMuteRemove(UserId)
	            local PermUserConfig = ("MetaAdmin_PermMuted.JSON")
	            local HttpService = (game:GetService("HttpService"))
	            local File = (readfile(PermUserConfig))
	            local Table = (HttpService:JSONDecode(File))
	
	            if table.find(Table, UserId) then
	                table.remove(Table, table.find(Table, UserId)); writefile(PermUserConfig, (HttpService:JSONEncode(Table)))
	                NewCommand:Destroy()
	                game:GetService("Players"):Chat("!unpmute " .. UserName)
	                wrn(UserName .. " Successfully removed.", 10)
	            else
	                wrn("Couldn't find this user in your muted list.", 5)
	            end
	        end
	
	        PermMuteRemove(UserId)
	    end
	
	    NewCommand.MouseEnter:Connect(ChangeMSG)
	    NewCommand.MouseLeave:Connect(ChangeID)
	    NewCommand.MouseButton1Down:Connect(Clicked)
	
	    NewCommand.Text = (UserId .. " ( " .. UserName .. " )")
	    NewCommand.Name = (UserId .. " ( " .. UserName .. " )")
	    NewCommand.Parent = CommandList
	    NewCommand.Visible = true
	end
	
	local cache = {}
	
	function getUsernameFromUserId(userId)
	    if cache[userId] then return cache[userId] end
	    
	    local player = game:GetService("Players"):GetPlayerByUserId(userId)
	    
	    if player then
	        
	        cache[userId] = player.Name
	        
	        return player.Name
	    end 
	    
	    local name;
	    
	    pcall(function ()
	        name = game:GetService("Players"):GetNameFromUserIdAsync(userId)
	    end)
	    
	    cache[userId] = name
	    
	    return name
	end
	
	local SCF = (script.Parent.Parent:WaitForChild("Main_LIST"))
	
	for i, v in pairs(GetCurrentPermUsers()) do
	    
	    local GetUserName = (getUsernameFromUserId(v))
	    
	    AddMuted(v, GetUserName); SCF.CanvasSize = SCF.CanvasSize + UDim2.new(0,0,0.05,0)
	end
	
	script.Parent.Parent:TweenPosition(UDim2.new(0, 0, 0.298, 0))
end
coroutine.wrap(YXASUIL_fake_script)()
local function XNNRVTJ_fake_script() -- Close.Handle 
	local script = Instance.new('LocalScript', Close)

	script.Parent.MouseButton1Down:Connect(function()
	    script.Parent.Parent:TweenPosition(UDim2.new(-0.5, 0, 0.265, 0))
	    wait(.5)
	    script.Parent.Parent.Parent:Destroy()
	end)
end
coroutine.wrap(XNNRVTJ_fake_script)()
