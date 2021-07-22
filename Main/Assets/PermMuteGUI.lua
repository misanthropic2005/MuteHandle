for x, y in pairs(game.CoreGui:GetChildren()) do
    if y.Name == ("MAG") or y.Name == ("PUI") then
        y:Destroy()	
    end
end

local PUI = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local UIC = Instance.new("UICorner")
local TitleN = Instance.new("TextLabel")
local TitleI = Instance.new("TextLabel")
local TitleD = Instance.new("TextLabel")
local ScrollCAU = Instance.new("ScrollingFrame")
local UIGridLayout = Instance.new("UIGridLayout")
local Assert = Instance.new("Folder")
local ExampleButton = Instance.new("TextButton")
local TitleB = Instance.new("TextButton")

--Properties:

PUI.Name = "PUI"
PUI.Parent = game.CoreGui
PUI.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Main.Name = "Main"
Main.Parent = PUI
Main.BackgroundColor3 = Color3.fromRGB(17, 17, 17)
Main.BorderSizePixel = 0
Main.Position = UDim2.new(0.375, 0, 0.349999994, 0)
Main.Size = UDim2.new(0, 487, 0, 314)
Main.Visible = false

UIC.Name = "UIC"
UIC.Parent = Main

TitleN.Name = "TitleN"
TitleN.Parent = Main
TitleN.BackgroundColor3 = Color3.fromRGB(33, 33, 33)
TitleN.BorderSizePixel = 0
TitleN.Size = UDim2.new(0, 152, 0, 31)
TitleN.Font = Enum.Font.Sarpanch
TitleN.Text = "UserName:"
TitleN.TextColor3 = Color3.fromRGB(118, 118, 118)
TitleN.TextSize = 35.000
TitleN.TextWrapped = true

TitleI.Name = "TitleI"
TitleI.Parent = Main
TitleI.BackgroundColor3 = Color3.fromRGB(33, 33, 33)
TitleI.BorderSizePixel = 0
TitleI.Position = UDim2.new(0.312114984, 0, 0, 0)
TitleI.Size = UDim2.new(0, 152, 0, 31)
TitleI.Font = Enum.Font.Sarpanch
TitleI.Text = "UserID:"
TitleI.TextColor3 = Color3.fromRGB(118, 118, 118)
TitleI.TextSize = 35.000
TitleI.TextWrapped = true

TitleD.Name = "TitleD"
TitleD.Parent = Main
TitleD.BackgroundColor3 = Color3.fromRGB(33, 33, 33)
TitleD.BorderSizePixel = 0
TitleD.Position = UDim2.new(0.624229968, 0, 0, 0)
TitleD.Size = UDim2.new(0, 152, 0, 31)
TitleD.Font = Enum.Font.Sarpanch
TitleD.Text = "Display:"
TitleD.TextColor3 = Color3.fromRGB(118, 118, 118)
TitleD.TextSize = 35.000
TitleD.TextWrapped = true

ScrollCAU.Name = "ScrollCAU"
ScrollCAU.Parent = Main
ScrollCAU.Active = true
ScrollCAU.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ScrollCAU.BackgroundTransparency = 1.000
ScrollCAU.BorderSizePixel = 0
ScrollCAU.Position = UDim2.new(0, 0, 0.0987261161, 0)
ScrollCAU.Size = UDim2.new(0, 456, 0, 283)
ScrollCAU.ScrollBarThickness = 0

UIGridLayout.Parent = ScrollCAU
UIGridLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIGridLayout.CellPadding = UDim2.new(0, 0, 0, 0)
UIGridLayout.CellSize = UDim2.new(0, 152, 0, 38)

Assert.Name = "Assert"
Assert.Parent = Main

ExampleButton.Name = "ExampleButton"
ExampleButton.Parent = Assert
ExampleButton.BackgroundColor3 = Color3.fromRGB(17, 17, 17)
ExampleButton.BorderSizePixel = 0
ExampleButton.Size = UDim2.new(0, 152, 0, 39)
ExampleButton.Visible = false
ExampleButton.Font = Enum.Font.Sarpanch
ExampleButton.TextColor3 = Color3.fromRGB(102, 102, 102)
ExampleButton.TextSize = 35.000
ExampleButton.TextWrapped = true

TitleB.Name = "TitleB"
TitleB.Parent = Main
TitleB.BackgroundColor3 = Color3.fromRGB(33, 33, 33)
TitleB.BorderSizePixel = 0
TitleB.Position = UDim2.new(0.936344981, 0, 0, 0)
TitleB.Size = UDim2.new(0, 31, 0, 31)
TitleB.Font = Enum.Font.Sarpanch
TitleB.Text = "X"
TitleB.TextColor3 = Color3.fromRGB(118, 118, 118)
TitleB.TextSize = 35.000

-- Scripts:

local function ZJNUKK_fake_script() -- ScrollCAU.UIGridHandler 
	local script = Instance.new('LocalScript', ScrollCAU)

	local MainGUI = script.Parent.Parent.Parent
	local MainFrame = script.Parent.Parent
	local ScrollCAU = script.Parent
	local AssertCAU = MainFrame:WaitForChild("Assert")
	
	
	local notification = function(String, Duration)
	    return (game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Meta Admin",Text = tostring(String),Duration = Duration}))
	end
	
	local function GetCurrentPermUsers()
	
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
	
	        return _G.Muted
	    end
	end
	
	local cache = {}
	
	local getUsernameFromUserId = function(userId)
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
	
	local getDisplayFromUserId = function(userId)
	    local Link = ("https://users.roblox.com/v1/users/" .. userId);
	    local GET = game:HttpGet(Link);
	    local JSD = game:GetService("HttpService"):JSONDecode(GET);
	    
	    return JSD.displayName
	end
	
	local CreateInformation = function(NameT, IDT, DisplayT)
	
	    local Name = AssertCAU.ExampleButton:Clone()
	    local ID = AssertCAU.ExampleButton:Clone()
	    local Display = AssertCAU.ExampleButton:Clone()
	    
	    local ButtonPressed = function()
	        Name:Destroy(); ID:Destroy(); Display:Destroy(); game.Players:Chat("!unpmute " .. IDT);
	    end
	  
	
	    Name.Text = NameT; 
	    Name.Parent = ScrollCAU; 
	    Name.Visible = true; 
	    Name.Name = NameT;
	    Name.MouseEnter:Connect(function() Name.TextColor3 = Color3.fromRGB(255, 0, 0); ID.TextColor3 = Color3.fromRGB(255, 0, 0); Display.TextColor3 = Color3.fromRGB(255, 0, 0); end)
	    Name.MouseLeave:Connect(function() Name.TextColor3 = Color3.fromRGB(102, 102, 102) ID.TextColor3 = Color3.fromRGB(102, 102, 102); Display.TextColor3 = Color3.fromRGB(102, 102, 102);end)
	    Name.MouseButton1Down:Connect(ButtonPressed)
	
	    ID.Text = IDT; 
	    ID.Parent = ScrollCAU; 
	    ID.Visible = true; 
	    ID.Name = IDT;
	    ID.MouseEnter:Connect(function() Name.TextColor3 = Color3.fromRGB(255, 0, 0); ID.TextColor3 = Color3.fromRGB(255, 0, 0); Display.TextColor3 = Color3.fromRGB(255, 0, 0); end)
	    ID.MouseLeave:Connect(function() Name.TextColor3 = Color3.fromRGB(102, 102, 102) ID.TextColor3 = Color3.fromRGB(102, 102, 102); Display.TextColor3 = Color3.fromRGB(102, 102, 102);end)
	    ID.MouseButton1Down:Connect(ButtonPressed)
	
	    Display.Text = DisplayT; 
	    Display.Parent = ScrollCAU; 
	    Display.Visible = true; 
	    Display.Name = DisplayT;
	    Display.MouseEnter:Connect(function() Name.TextColor3 = Color3.fromRGB(255, 0, 0); ID.TextColor3 = Color3.fromRGB(255, 0, 0); Display.TextColor3 = Color3.fromRGB(255, 0, 0); end)
	    Display.MouseLeave:Connect(function() Name.TextColor3 = Color3.fromRGB(102, 102, 102) ID.TextColor3 = Color3.fromRGB(102, 102, 102); Display.TextColor3 = Color3.fromRGB(102, 102, 102);end)
	    Display.MouseButton1Down:Connect(ButtonPressed)
	end
	
	local Users = GetCurrentPermUsers()
	
	notification("Please wait, fetching player information.", 10)
	
	for i = 1,#Users do
	    CreateInformation(getUsernameFromUserId(Users[i]), Users[i], getDisplayFromUserId(Users[i]))
	end
	
	wait() 
	
	MainFrame.Visible = true
	
	notification("Completed!", 3)
end
coroutine.wrap(ZJNUKK_fake_script)()
local function HFMQJI_fake_script() -- TitleB.Remove 
	local script = Instance.new('LocalScript', TitleB)

	local Tween = function()
	    
	    local Tween = script.Parent.Parent:TweenPosition(UDim2.new(0.375,0,-1,0))
	
	    repeat wait() until script.Parent.Parent.Position == UDim2.new(0.375,0,-1,0)
	    script.Parent.Parent.Parent:Destroy();
	end
	
	script.Parent.MouseButton1Down:Connect(Tween)
end
coroutine.wrap(HFMQJI_fake_script)()

local Success, Error = pcall(function() syn.protect_gui(PUI) end)
