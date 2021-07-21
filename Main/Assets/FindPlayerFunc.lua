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
