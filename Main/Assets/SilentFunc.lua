local Success, Error = pcall(function()

local Meta = getrawmetatable(game)
local Name = Meta.__namecall

setreadonly(Meta, false)

Meta.__namecall = newcclosure(function(self, ...)
    
    local Args = { ... }
    local Blse = { "!mute", "!unmute", "!pmute", "!unpmute", "!stop", "!dupecheck", "!pgui", "!cmds", "!commands" }

    if self.Name == ("SayMessageRequest") then
       
       local Message = Args[1]:lower()
       local RealMessage = Args[1]
       
       if RealMessage:sub(1,1) == ("!") or Message:sub(1,1) == ("!") then
          return wait(9e9)
       end
    
       if RealMessage:sub(1,4) == ("/e !") or Message:sub(1,4) == ("/e !") then
          return wait(9e9)
       end
       
       for i = 1,#Blse do
          if Message:find(Blse[i]) then
             return wait(9e9)
          end
       end

       if RealMessage:sub(1) == ("!") then
          return wait(9e9)
       end
       
       print(Message:sub(1), Message:sub(1,4))
       
    end
    
    return Name(self, ...)
end)

setreadonly(Meta, true)
    
end)

local notification = function(String, Duration)
   return (game:GetService("StarterGui"):SetCore("SendNotification",{Title = "Meta Admin",Text = tostring(String),Duration = Duration}))
end

if not Success then notification("This exploit does not support metatables!", 5) end
