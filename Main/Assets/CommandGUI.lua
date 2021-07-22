for x, y in pairs(game.CoreGui:GetChildren()) do
   if y.Name == ("MAG") or y.Name == ("PUI") then
      y:Destroy()	
   end
end

local MAG = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local UIC = Instance.new("UICorner")
local TitleC = Instance.new("TextLabel")
local TitleA = Instance.new("TextLabel")
local TitleU = Instance.new("TextLabel")
local ScrollCAU = Instance.new("ScrollingFrame")
local UIGridLayout = Instance.new("UIGridLayout")
local Assert = Instance.new("Folder")
local CommandName = Instance.new("TextLabel")
local CommandAlias = Instance.new("TextLabel")
local CommandView = Instance.new("TextButton")
local TitleB = Instance.new("TextButton")
local ViewPage = Instance.new("Frame")
local UIC_2 = Instance.new("UICorner")
local CommandTitle = Instance.new("TextLabel")
local CommandDesc = Instance.new("TextLabel")
local TitleB_2 = Instance.new("TextButton")

--Properties:

MAG.Name = "MAG"
MAG.Parent = game.CoreGui
MAG.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Main.Name = "Main"
Main.Parent = MAG
Main.BackgroundColor3 = Color3.fromRGB(17, 17, 17)
Main.BorderSizePixel = 0
Main.Position = UDim2.new(0.375, 0, 0.349999994, 0)
Main.Size = UDim2.new(0, 487, 0, 314)

UIC.Name = "UIC"
UIC.Parent = Main

TitleC.Name = "TitleC"
TitleC.Parent = Main
TitleC.BackgroundColor3 = Color3.fromRGB(33, 33, 33)
TitleC.BorderSizePixel = 0
TitleC.Size = UDim2.new(0, 152, 0, 31)
TitleC.Font = Enum.Font.Sarpanch
TitleC.Text = "Command:"
TitleC.TextColor3 = Color3.fromRGB(118, 118, 118)
TitleC.TextSize = 35.000
TitleC.TextWrapped = true

TitleA.Name = "TitleA"
TitleA.Parent = Main
TitleA.BackgroundColor3 = Color3.fromRGB(33, 33, 33)
TitleA.BorderSizePixel = 0
TitleA.Position = UDim2.new(0.312114984, 0, 0, 0)
TitleA.Size = UDim2.new(0, 152, 0, 31)
TitleA.Font = Enum.Font.Sarpanch
TitleA.Text = "Alias:"
TitleA.TextColor3 = Color3.fromRGB(118, 118, 118)
TitleA.TextSize = 35.000
TitleA.TextWrapped = true

TitleU.Name = "TitleU"
TitleU.Parent = Main
TitleU.BackgroundColor3 = Color3.fromRGB(33, 33, 33)
TitleU.BorderSizePixel = 0
TitleU.Position = UDim2.new(0.624229968, 0, 0, 0)
TitleU.Size = UDim2.new(0, 152, 0, 31)
TitleU.Font = Enum.Font.Sarpanch
TitleU.Text = "Usage:"
TitleU.TextColor3 = Color3.fromRGB(118, 118, 118)
TitleU.TextSize = 35.000
TitleU.TextWrapped = true

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

CommandName.Name = "CommandName"
CommandName.Parent = Assert
CommandName.BackgroundColor3 = Color3.fromRGB(17, 17, 17)
CommandName.BorderSizePixel = 0
CommandName.Size = UDim2.new(0, 200, 0, 50)
CommandName.Visible = false
CommandName.Font = Enum.Font.Sarpanch
CommandName.TextColor3 = Color3.fromRGB(102, 102, 102)
CommandName.TextSize = 35.000
CommandName.TextWrapped = true

CommandAlias.Name = "CommandAlias"
CommandAlias.Parent = Assert
CommandAlias.BackgroundColor3 = Color3.fromRGB(17, 17, 17)
CommandAlias.BorderSizePixel = 0
CommandAlias.Size = UDim2.new(0, 200, 0, 50)
CommandAlias.Visible = false
CommandAlias.Font = Enum.Font.Sarpanch
CommandAlias.TextColor3 = Color3.fromRGB(102, 102, 102)
CommandAlias.TextSize = 35.000
CommandAlias.TextWrapped = true

CommandView.Name = "CommandView"
CommandView.Parent = Assert
CommandView.BackgroundColor3 = Color3.fromRGB(17, 17, 17)
CommandView.BorderSizePixel = 0
CommandView.Size = UDim2.new(0, 152, 0, 39)
CommandView.Visible = false
CommandView.Font = Enum.Font.Sarpanch
CommandView.TextColor3 = Color3.fromRGB(102, 102, 102)
CommandView.TextSize = 35.000
CommandView.TextWrapped = true

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

ViewPage.Name = "ViewPage"
ViewPage.Parent = MAG
ViewPage.BackgroundColor3 = Color3.fromRGB(17, 17, 17)
ViewPage.BorderSizePixel = 0
ViewPage.Position = UDim2.new(0.375, 0, 0.349999994, 0)
ViewPage.Size = UDim2.new(0, 487, 0, 154)
ViewPage.Visible = false

UIC_2.Name = "UIC"
UIC_2.Parent = ViewPage

CommandTitle.Name = "CommandTitle"
CommandTitle.Parent = ViewPage
CommandTitle.BackgroundColor3 = Color3.fromRGB(33, 33, 33)
CommandTitle.BorderSizePixel = 0
CommandTitle.Size = UDim2.new(0, 487, 0, 31)
CommandTitle.Font = Enum.Font.Sarpanch
CommandTitle.Text = "Title"
CommandTitle.TextColor3 = Color3.fromRGB(118, 118, 118)
CommandTitle.TextSize = 35.000
CommandTitle.TextWrapped = true

CommandDesc.Name = "CommandDesc"
CommandDesc.Parent = ViewPage
CommandDesc.BackgroundColor3 = Color3.fromRGB(33, 33, 33)
CommandDesc.BorderSizePixel = 0
CommandDesc.Position = UDim2.new(0.106776178, 0, 0.301935226, 0)
CommandDesc.Size = UDim2.new(0, 382, 0, 87)
CommandDesc.Font = Enum.Font.Sarpanch
CommandDesc.Text = "Desc"
CommandDesc.TextColor3 = Color3.fromRGB(118, 118, 118)
CommandDesc.TextSize = 25.000
CommandDesc.TextWrapped = true
CommandDesc.TextYAlignment = Enum.TextYAlignment.Top

TitleB_2.Name = "TitleB"
TitleB_2.Parent = ViewPage
TitleB_2.BackgroundColor3 = Color3.fromRGB(33, 33, 33)
TitleB_2.BorderSizePixel = 0
TitleB_2.Position = UDim2.new(0.936344981, 0, 0, 0)
TitleB_2.Size = UDim2.new(0, 31, 0, 31)
TitleB_2.Font = Enum.Font.Sarpanch
TitleB_2.Text = "X"
TitleB_2.TextColor3 = Color3.fromRGB(118, 118, 118)
TitleB_2.TextSize = 35.000

-- Scripts:

local function HWQB_fake_script() -- ScrollCAU.UIGridHandler 
	local script = Instance.new('LocalScript', ScrollCAU)

	local MainGUI = script.Parent.Parent.Parent
	local MainFrame = script.Parent.Parent
	local ScrollCAU = script.Parent
	local AssertCAU = MainFrame:WaitForChild("Assert")
	local ViewCAU = MainGUI:WaitForChild("ViewPage")
	
	local SetupView = function(CommandName, CommandDesc)
	    ViewCAU.CommandTitle.Text = CommandName; ViewCAU.CommandDesc.Text = CommandDesc
	end
	
	local RequireView = function()
	    MainFrame.Visible = false
	    ViewCAU.Visible = true
	end
	
	local ViewPage = function(CommandName, CommandDesc)
	    return function() SetupView(CommandName, CommandDesc); RequireView(); end
	end
	
	local AssertCAUF = function(CmdName, CmdAliasTable, ViewInformation)
	    
	    local Name = AssertCAU.CommandName:Clone()
	    local Alias = AssertCAU.CommandAlias:Clone(); local AliasText;
	    local View = AssertCAU.CommandView:Clone()
	    
	    
	    if table.concat(CmdAliasTable, ", ") == ("") then
	       
	       AliasText = ("N/A")
	    else
	       AliasText = table.concat(CmdAliasTable, ", ")
	    end
	    
	    Name.Text = CmdName; Name.Name = CmdName; Name.Parent = ScrollCAU; Name.Visible = true;
	    Alias.Text = AliasText; Alias.Name = CmdName .. " alias"; Alias.Parent = ScrollCAU; Alias.Visible = true;
	    View.Text = "View"; View.Parent = ScrollCAU; View.MouseButton1Down:Connect(ViewPage(CmdName, ViewInformation.Description)); View.Visible = true;
	end
	
	for i = 1,#_G.Commands do
	    AssertCAUF(_G.Commands[i].Name, _G.Commands[i].Alias, _G.Commands[i].View)
	end
end
coroutine.wrap(HWQB_fake_script)()
local function JNBHRJ_fake_script() -- TitleB.Remove 
	local script = Instance.new('LocalScript', TitleB)

	local Tween = function()
	    
	    local Tween = script.Parent.Parent:TweenPosition(UDim2.new(0.375,0,-1,0))
	    
	    repeat wait() until script.Parent.Parent.Position == UDim2.new(0.375,0,-1,0)
	    script.Parent.Parent.Parent:Destroy();
	end
	
	script.Parent.MouseButton1Down:Connect(Tween)
end
coroutine.wrap(JNBHRJ_fake_script)()
local function NJXCADN_fake_script() -- TitleB_2.Handle 
	local script = Instance.new('LocalScript', TitleB_2)

	local MainFrame = script.Parent.Parent
	local MainGUI = MainFrame.Parent
	local MainCGI = MainGUI:WaitForChild("Main")
	
	script.Parent.MouseButton1Down:Connect(function()
	    MainFrame.Visible = false
	    MainCGI.Visible = true
	end)
end
coroutine.wrap(NJXCADN_fake_script)()

local Success, Error = pcall(function() syn.protect_gui(MAG) end)
