local notification = function(String, Duration)
   return (game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Meta Admin",Text = tostring(String),Duration = Duration}))
end

local DupeCheck = function()
   local Temp = {  }
   local TempPl = { }
   local SomeoneDuped = false
   
   for i, v in pairs(game:GetService("Players"):GetPlayers()) do
      Temp[v.Name] = { }
      TempPl[v.Name] = 0
   end
   
   for i, v in pairs(game:GetService("Players"):GetPlayers()) do
      if Temp[v.Name] then
         if v.Character then
            
            local Character = v.Character:GetChildren()
            local Backpack = v.Backpack:GetDescendants()
            local BackpackSoundsPlaying = 0
            
            for z, x in pairs(Backpack) do
               
               if x:IsA("Sound") then
                  if x.Playing == (true) then
                     if x.Parent.Name == ("Handle") then
                        if x.Parent.Parent.Name == ("BoomBox") then
                           if TempPl[v.Name] ~= nil then
                              TempPl[v.Name] = TempPl[v.Name] + 1
                           end
                        end
                     end
                  end
               end
               
            end
            
            for z, x in pairs(Character) do
              
               
               local Table = Temp[v.Name]
               
               if Table ~= nil then
                  table.insert(Table, x.Name); 
                  Temp[v.Name] = Table;
               end
               
               
            end 
            
            
         end
      end
   end

   local Found = { }
   
   for i, v in pairs(game:GetService("Players"):GetPlayers()) do
      Found[v.Name] = 0
   end

   for i, v in pairs(game:GetService("Players"):GetPlayers()) do

      for i = 1,#Temp[v.Name] do
         if Temp[v.Name][i] == ("BoomBox") then
            Found[v.Name] = Found[v.Name] + 1
         end
      end
         
      if Found[v.Name] >= 2 or TempPl[v.Name] >= 2 then
         SomeoneDuped = true
         notification(v.Name .. " Is Duping!", 5)
      end
     
   end
 
   if not SomeoneDuped then notification("Nobody Is Duping!", 3) end
end

return DupeCheck
