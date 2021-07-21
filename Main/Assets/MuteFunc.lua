local RunService = function()
   return (game:GetService("RunService"))
end

local Mute = function(Player)

   if Player.Character then
      for x, y in pairs(Player.Character:GetChildren()) do
         if y:IsA("Tool") then
            if y.Name == ("BoomBox") then
               local Handle = y:FindFirstChild("Handle")
               local Sound = Handle:FindFirstChild("Sound")
               
               Sound.Playing = false
            end
         end
      end
   end  
   
   if Player.Backpack then
      for x, y in pairs(Player.Backpack:GetDescendants()) do
         if y:IsA("Sound") then y.Playing = false end
      end
   end

   if Player.StarterGear then
      for x, y in pairs(Player.StarterGear:GetDescendants()) do
         if y:IsA("Sound") then y.Playing = false end
      end
   end

end

local MuteTarget = function(...)
   
   for z, x in pairs(game:GetService("Players"):GetPlayers()) do
      if table.find(Muted, x.UserId) then 
         Mute(x) 
      end
   end
   
end

if _G.RS then RunService().RenderStepped:Connect(MuteTarget) end
if not _G.RS then RunService().Stepped:Connect(MuteTarget) end
