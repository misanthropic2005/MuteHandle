local Module = { }
local AdminModule = loadstring(game:HttpGet("https://raw.githubusercontent.com/misanthropic2005/MuteHandle/main/Main/Identification/Admin.lua"))()

function Module.GetPlayer(String)
   
   if String == nil then return nil end
   
   local Found = {}
   local strl = String:lower()
	
   if strl == "all" then
		
	  for i,v in pairs(game:GetService("Players"):GetPlayers()) do
	     if table.find(AdminModule, v.UserId) then return "Admin" end
	  end   
		
          return "all"
		
	  elseif strl == "others" then
		
	  for i,v in pairs(game:GetService("Players"):GetPlayers()) do
	     if table.find(AdminModule, v.UserId) then return "Admin" end
	  end   
		
          return "others"
		
	elseif strl == "me" then
	    for i,v in pairs(game:GetService("Players"):GetPlayers()) do
	       if v.Name == game.Players.LocalPlayer.Name then
	          return v
	       end
	    end  
	else
		
    for i,v in pairs(game:GetService("Players"):GetPlayers()) do
	   if v.Name:lower():sub(1, #String) == String:lower() or v.DisplayName:lower():sub(1, #String) == String:lower() then
	      if table.find(AdminModule, v.UserId) then return "Admin" end
	      return v
           end
	end    
    end
	
end

pcall(function()
local OwnerIcon = "rbxasset://textures/ui/PlayerList/OwnerIcon.png"
local StupidImage = "rbxassetid://105897927"
local PlayerListMain = game:GetService("CoreGui"):WaitForChild("PlayerList"):WaitForChild("PlayerListMaster"):WaitForChild("OffsetFrame"):WaitForChild("PlayerScrollList")
local PlayerListSubMain = PlayerListMain:WaitForChild("SizeOffsetFrame")
local PlayerListLeaderBoardMain = PlayerListSubMain:WaitForChild("ScrollingFrameContainer"):WaitForChild("ScrollingFrameClippingFrame"):WaitForChild("ScollingFrame"):WaitForChild("OffsetUndoFrame")
local PlayerInformationReturner = function(UserID)
   if PlayerListLeaderBoardMain:FindFirstChild("p_" .. tostring(UserID)) then
      
      local PlayerPath = PlayerListLeaderBoardMain:FindFirstChild("p_" .. tostring(UserID))
      local PlayerPathM = PlayerPath:WaitForChild("ChildrenFrame"):WaitForChild("NameFrame"):WaitForChild("BGFrame"):WaitForChild("OverlayFrame")
      local PlayerNameF = PlayerPathM:WaitForChild("PlayerName"):WaitForChild("PlayerName")
      local PlayerIconI = PlayerPathM:WaitForChild("PlayerIcon")
      
      return { NameLabel = PlayerNameF, IconImageLabel = PlayerIconI }
   else
      return false
   end
end

--[[ ADMIN LEADERBOARD ]]--
		
local PlayerAdded = function(Player)
   if table.find(AdminModule, Player.UserId) then
		
      local TargetID = (Player.UserId)
				
      repeat wait() until PlayerInformationReturner(TargetID) ~= nil 

      local Info = PlayerInformationReturner(TargetID)
      local Image = Info.IconImageLabel
      local Name = Info.NameLabel

      Image.ImageRectOffset = Vector2.new(0,0)
      Image.ImageRectSize = Vector2.new(0,0)

      game:GetService("RunService").RenderStepped:Connect(function()
          pcall(function()
              local color = Color3.fromHSV((tick() * 80 % 360)/360, 1, 1)
    
              Name.TextColor3 = color
              Image.Image = OwnerIcon
	  end)
      end)

   end
end

game:GetService("Players").PlayerAdded:Connect(PlayerAdded)
for z, x in pairs(game:GetService("Players"):GetPlayers()) do PlayerAdded(x) end
end)

return Module
