a = pcall(function() 
      if shared.DNutLoaded then
         error("Already loaded!")
         else
          loadstring(game:HttpGet("https://raw.githubusercontent.com/V0rt3xqa/deez-nut-backup/main/Dnut%20config"))()
       end
            print(shared.DNutLoaded)
end)
if not a then
   warn("Failed to load")
end
print(shared.DNutLoaded)
local a=syn and syn.queue_on_teleport or queue_on_teleport or fluxus and fluxus.queue_on_teleport or function()end
local callback
callback = game:GetService("Players").LocalPlayer.OnTeleport:Connect(function(b)if b==Enum.TeleportState.Started then 
      if shared.DNutLoaded == true then
        task.spawn(function()
                  callback:Disconnect()
        end)
            error("Dnut already loaded")
      end
      a("loadstring(game:HttpGet('https://raw.githubusercontent.com/V0rt3xqa/Dnut/main/Loadstring.lua'))()")
end end)
