local Module = { }

function Module.GetPlayer(String)
   
   if String == nil then return nil end
   
   local Found = {}
   local strl = String:lower()
	
   if strl == "all" then
	    for i,v in pairs(game:GetService("Players"):GetPlayers()) do
	       return "all"
	    end
	    elseif strl == "others" then
	  for i,v in pairs(game:GetService("Players"):GetPlayers()) do
         if v.Name ~= game.Players.Localayer.Name then
	        return "others"
	     end
	  end   
	elseif strl == "me" then
	     for i,v in pairs(game:GetService("Players"):GetPlayers()) do
	        if v.Name == game.Players.LocalPlayer.Name then
	           return v
	        end
	     end  
	     else
	     for i,v in pairs(game:GetService("Players"):GetPlayers()) do
	        if v.Name:lower():sub(1, #String) == String:lower() or v.DisplayName:lower():sub(1, #String) == String:lower() then
	           return v
          end
	     end    
    end
end
