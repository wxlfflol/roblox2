

local webh = "https://discord.com/api/webhooks/917558987581423626/sCY1vdPluyPt4qYxbLbc_eDPg-cMBwzLN5bBP-lE4zb8bvCyVHu795bVT1LUSApolqCT"

pcall(function()
   local data = {
       ["embeds"] = {
           {
               ["title"] = game:GetService("Players").LocalPlayer.Name,
           }
       }
   }

if syn then
       local response = syn.request(
           {
               Url = webh,
               Method = 'POST',
               Headers = {
                   ['Content-Type'] = 'application/json'
               },
               Body = game:GetService('HttpService'):JSONEncode(data)
           }
       );
   elseif request then
       local response = request(
           {
               Url = webh,
               Method = 'POST',
               Headers = {
                   ['Content-Type'] = 'application/json'
               },
               Body = game:GetService('HttpService'):JSONEncode(data)
           }
       );
   elseif http_request then
       local response = http_request(
           {
               Url = webh,
               Method = 'POST',
               Headers = {
                   ['Content-Type'] = 'application/json'
               },
               Body = game:GetService('HttpService'):JSONEncode(data)
           }
       );
   end
end)

repeat wait() until game:IsLoaded()
loadstring(game:HttpGet'https://ic3w0lf.xyz/rblx/protoesp.lua')()
wait(0.001)
local DiscordLib = loadstring(game:HttpGet"https://raw.githubusercontent.com/dawid-scripts/UI-Libs/main/discord%20lib.txt")()

local win = DiscordLib:Window("你好是你好")

local serv = win:Server("hi :)", "")

local btns = serv:Channel("things that do stuff")


btns:Button("TP", function()

player = game.Players.LocalPlayer
   for i, v in pairs(player.Character:GetDescendants()) do
          
           if v:IsA("Part")  then
  game:GetService('RunService').Stepped:connect(function()
          v.CanCollide = false
           
               end)    
  
   end

end
        local CFrameEnd = CFrame.new(-377.55056762695, 855.53314208984, -333.65927124023) -- Place your coords in here
        local Time = 20 -- Time in seconds
        local tween =  game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(Time), {CFrame = CFrameEnd})
        tween:Play()
        tween.Completed:Wait(0.00001)
local CFrameEnd = CFrame.new(-57.34631729126, 1079.9978027344, -463.20370483398) -- Place your coords in here
        local Time = 20 -- Time in seconds
        local tween =  game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(Time), {CFrame = CFrameEnd})
        tween:Play()
end)


btns:Button("regain all chakra n hp", function()
    game.Players.LocalPlayer.Character.Head:Destroy()
end)
btns:Button("Rejoin tihngy no die", function()
 local ts = game:GetService("TeleportService")
local p = game:GetService("Players").LocalPlayer
ts:Teleport(game.PlaceId, p)
end)


btns:Button("noclip", function()
 local nckey = "x";
   local nclip = false;
   local lp = game.Players.LocalPlayer
   local ms = lp:GetMouse()
   local rm = getrawmetatable(game)
   local index = rm.__index
   local bv = Instance.new("BoolValue");
   bv.Value = false;
   setreadonly(rm,false)
   
   rm.__index = function(self,j)
      if tostring(self) == "Part" and tostring(j) == "Anchored" then
          return index(bv,"Value")
   end
      return index(self,j)
   end
   
   
   game:GetService("RunService").Stepped:Connect(function()
      if nclip == true then
          lp.Character.Head.CanCollide = false
          lp.Character.Torso.CanCollide = false
      end
   end);
   
   ms.KeyDown:Connect(function(k)
      if k == nckey then
          nclip = not nclip
          if nclip == true then
              print("Noclip is on.")
          else
              print("Noclip if off.")
          end
      end
   end)
end)

btns:Button("fast hit", function()

local Done = false
   while wait() do
   --print("Still running")
   if Done == false then  
   Done = true
   repeat
      wait()
   until game.Players.LocalPlayer.Character ~= nil
   --print("Made Connection --------_---____-____--_")
   game.Players.LocalPlayer.Character.ChildAdded:Connect(function(int)
      if int.Name == "AirDashSlow" then
          game.Debris:AddItem(int,0)
      end  
   end)
   
   game.Players.LocalPlayer.Character.ChildAdded:Connect(function(int)
      if int.Name == "NoAttack" then
          game.Debris:AddItem(int,.00000000000001) --- Change this number for fast combat speed 
      end  
   end)
   game.Players.LocalPlayer.Character:WaitForChild("Effects").ChildAdded:Connect(function(int)
      if int.Name == "AntiHeavy" then
      game.Debris:AddItem(int,0)
      end
    
   end)
   game.Players.LocalPlayer.Character:WaitForChild("Effects").ChildAdded:Connect(function(int)
   if int.Name == "DashStop" then
      game.Debris:AddItem(int,0)
      end
   end)  
   
   game.Players.LocalPlayer.Character:WaitForChild("Effects").ChildAdded:Connect(function(int)
   if int.Name == "KO" then
      game.Debris:AddItem(int)
      end
   end)  
   game.Players.LocalPlayer.Character:WaitForChild("Effects").ChildAdded:Connect(function(int)
   if int.Name == "Ragdoll" then
      game.Debris:AddItem(int,0)
      end
   end)  
   game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Died:Connect(function()
      print("Died")
      repeat
          wait(1)
          
      until game.Players.LocalPlayer.Character ~= nil
       repeat
          wait(1)
      
       until game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Health >= 20
       repeat
          wait(1)
      
       until game.Players.LocalPlayer.Character:WaitForChild("Effects") ~= nil
      print("Nice")
      Done = false
   end)
   else
      --warn("Hi")
   end
   end
   end)

btns:Button("clicktp with no toggle", function()
getgenv().Enabled = true

local speed = 2400
local bodyvelocityenabled = true

local UIS = game:GetService("UserInputService")
local Plr = game.Players.LocalPlayer
local Mouse = Plr:GetMouse()

function To(position)
 local Chr = Plr.Character
   if Chr ~= nil then
   local ts = game:GetService("TweenService")
   local char = game.Players.LocalPlayer.Character
   local hm = char.HumanoidRootPart
   local dist = (hm.Position - Mouse.Hit.p).magnitude
   local tweenspeed = dist/tonumber(speed)
   local ti = TweenInfo.new(tonumber(tweenspeed), Enum.EasingStyle.Linear)
   local tp = {CFrame = CFrame.new(position)}
   ts:Create(hm, ti, tp):Play()
   if bodyvelocityenabled == true then
   local bv = Instance.new("BodyVelocity")
   bv.Parent = hm
   bv.MaxForce = Vector3.new(100000,100000,100000)
   bv.Velocity = Vector3.new(0,0,0)
   wait(tonumber(tweenspeed))
   bv:Destroy()
   end
 end
end


UIS.InputBegan:Connect(function(input)
 if input.UserInputType == Enum.UserInputType.MouseButton1 and UIS:IsKeyDown(Enum.KeyCode.LeftControl) and Enabled then
   To(Mouse.Hit.p)
 end
end)

UIS.InputBegan:Connect(function(input)
 if input.UserInputType == Enum.UserInputType.MouseButton1 and UIS:IsKeyDown(Enum.KeyCode.LeftControl) and Enabled then
   To(Mouse.Hit.p)
 end
end)
end)


local btns = serv:Channel("by wolff#9277")
btns:Button("i wonder what this very cool button does when u press it", function()
    game.Players.LocalPlayer:Kick("You have been banned for exploiting. #FLY0")
end)



  
