_G.Noclip = false
_G.ForcePlay = false

game:GetService("RunService").Stepped:Connect(function(...)
    
    if _G.Noclip and game:GetService("Players").LocalPlayer.Character then
       for z, x in pairs(game:GetService("Players").LocalPlayer.Character:GetChildren()) do
          if x:IsA("BasePart") then
             x.CanCollide = false
          end
       end
    end
    
    if _G.ForcePlay and game:GetService("Players").LocalPlayer.Character then
       if game:GetService("Players").LocalPlayer.Character then
          for z, x in pairs(game:GetService("Players").LocalPlayer.Character:GetDescendants()) do
             if x:IsA("Sound") and x.Parent.Name ~= "HumanoidRootPart" then
                x.Playing = true
             end
          end
       end
    end
        
end)
