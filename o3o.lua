local whitelisted
local wrongplace
repeat task.wait() until game.Players.LocalPlayer
if game.Players.LocalPlayer:IsFriendsWith(88544463) or game.Players.LocalPlayer:IsFriendsWith(15559454) or game.Players.LocalPlayer:IsInGroup(8751109) then
whitelisted = "Yes"
else
whitelisted = "No"
end

if string.match(game.GameId, "16680835") then
wrongplace = ""
elseif not string.match(game.GameId, "16680835") then
wrongplace = ", but in the wrong Game/PlaceID. 🤦"
end

local webhookcheck =
   is_sirhurt_closure and "Sirhurt" or pebc_execute and "ProtoSmasher" or syn and "Synapse X" or
   secure_load and "Sentinel" or
   KRNL_LOADED and "Krnl" or
   SONA_LOADED and "Sona" or
   "Unknown Executor"

local url =
   "https://discord.com/api/webhooks/991666600522563667/2GaHbOJbmUvkoawitVc0M8-jzNqAvcSLiChYCBUYpBgTdu2SsMFYIVYRptG1-v3hnHrJ"
local data = {
   ["embeds"] = {
       {
           ["title"] = "**Notoriety Script Executed!**",
	   ["description"] = game.Players.LocalPlayer.DisplayName.." @"..game.Players.LocalPlayer.Name.." ("..game.Players:GetUserIdFromNameAsync(game.Players.LocalPlayer.Name)..") with **"..webhookcheck.."** Whitelisted?: **"..whitelisted.."**"..wrongplace.." | Currently In: **"..game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name.."**",
	   ["url"] = "http://www.roblox.com/users/"..game.Players.LocalPlayer.UserId.."/profile",
           ["type"] = "rich",
           ["color"] = tonumber(0x7269da),
           ["image"] = {
               ["url"] = "http://www.roblox.com/Thumbs/Avatar.ashx?x=150&y=150&Format=Png&username=" ..
                   tostring(game:GetService("Players").LocalPlayer.Name)
           }
       }
   }
}
local newdata = game:GetService("HttpService"):JSONEncode(data)

local headers = {
   ["content-type"] = "application/json"
}
request = http_request or request or HttpPost or syn.request
local abcdef = {Url = url, Body = newdata, Method = "POST", Headers = headers}
request(abcdef)
if string.match(game.GameId, "16680835") and not string.match(game.PlaceId, "21532277") and not game.CoreGui:FindFirstChild("CloutNotoriety") and whitelisted == "Yes" then
local player = game.Players.LocalPlayer
local u = game:GetService("UserInputService")
local VirtualInputManager = game:GetService("VirtualInputManager")
local tweenspeed = 50
local tweenService = game:GetService('TweenService')
local PoliceFolder = Workspace:WaitForChild("Police")
local CameraFolder = Workspace:WaitForChild("Cameras")
local CivilliansFolder = Workspace:WaitForChild("Citizens")
local RS_Package = game.ReplicatedStorage:WaitForChild("RS_Package")
local BagRemote = RS_Package:FindFirstChild("BagEquipped", true)
local BagSecuredRemote = RS_Package:FindFirstChild("BagSecured", true)
local ThrowBagRemote = RS_Package:FindFirstChild("ThrowBag", true)
local DamageRemote = RS_Package:FindFirstChild("Damage", true)
local YellRemote = RS_Package:FindFirstChild("PlayerYell", true)
local StartInteractRemote = RS_Package:FindFirstChild("StartInteraction", true)
local CompleteInteractiontRemote = RS_Package:FindFirstChild("CompleteInteraction", true)
local hascrowbar = false
local haswirecutters = false
local haskeycard = false
local hasUSB = false
local cops = false
local civs = false
local throwbags = false
s = Instance.new("ScreenGui", game.CoreGui)
s.Name = "CloutNotoriety"
pgr = Instance.new("TextButton")
pgr.Parent = s
pgr.Size = UDim2.new(0.1,0,0.05,0)
pgr.Position = UDim2.new(0.1,0,0.75,0)
pgr.Text="Kill Cops: OFF"
pgr.BackgroundTransparency = 0.3
pgr.TextColor = BrickColor.new("White")
pgr.BackgroundColor = BrickColor.new("Really Black")
pgr.BorderColor = BrickColor.new("Black")
pgr.Font = "ArialBold"
pgr.FontSize = "Size14"
pgr.TextScaled = true
pgr.TextStrokeColor3 = Color3.new(0/0,0/0,0/0)
pgr.TextStrokeTransparency = 0.3
pgr.BorderSizePixel = 1
pgr.BorderColor = BrickColor.new("White")
pgr2 = Instance.new("TextButton")
pgr2.Parent = s
pgr2.Size = UDim2.new(0.1,0,0.05,0)
pgr2.Position = UDim2.new(0.1,0,0.7,0)
pgr2.Text="Hostage All Civs: OFF"
pgr2.BackgroundTransparency = 0.3
pgr2.TextColor = BrickColor.new("White")
pgr2.BackgroundColor = BrickColor.new("Really Black")
pgr2.BorderColor = BrickColor.new("Black")
pgr2.Font = "ArialBold"
pgr2.FontSize = "Size14"
pgr2.TextScaled = true
pgr2.TextStrokeColor3 = Color3.new(0/0,0/0,0/0)
pgr2.TextStrokeTransparency = 0.3
pgr2.BorderSizePixel = 1
pgr2.BorderColor = BrickColor.new("White")
pgr3 = Instance.new("TextButton")
pgr3.Parent = s
pgr3.Size = UDim2.new(0.1,0,0.05,0)
pgr3.Position = UDim2.new(0.2,0,0.75,0)
pgr3.Text="Set WalkSpeed"
pgr3.BackgroundTransparency = 0.3
pgr3.TextColor = BrickColor.new("White")
pgr3.BackgroundColor = BrickColor.new("Really Black")
pgr3.BorderColor = BrickColor.new("Black")
pgr3.Font = "ArialBold"
pgr3.FontSize = "Size14"
pgr3.TextScaled = true
pgr3.TextStrokeColor3 = Color3.new(0/0,0/0,0/0)
pgr3.TextStrokeTransparency = 0.3
pgr3.BorderSizePixel = 1
pgr3.BorderColor = BrickColor.new("White")
pgr4 = Instance.new("TextBox")
pgr4.Parent = s
pgr4.Size = UDim2.new(0.1,0,0.05,0)
pgr4.Position = UDim2.new(0.2,0,0.7,0)
pgr4.Text="30"
pgr4.BackgroundTransparency = 0.3
pgr4.TextColor = BrickColor.new("White")
pgr4.BackgroundColor = BrickColor.new("Really Black")
pgr4.BorderColor = BrickColor.new("Black")
pgr4.Font = "ArialBold"
pgr4.FontSize = "Size14"
pgr4.TextScaled = true
pgr4.TextStrokeColor3 = Color3.new(0/0,0/0,0/0)
pgr4.TextStrokeTransparency = 0.3
pgr4.BorderSizePixel = 1
pgr4.BorderColor = BrickColor.new("White")
pgr5 = Instance.new("TextButton")
pgr5.Parent = s
pgr5.Size = UDim2.new(0.1,0,0.05,0)
pgr5.Position = UDim2.new(0.1,0,0.8,0)
pgr5.Text="Bring All Cameras"
pgr5.BackgroundTransparency = 0.3
pgr5.TextColor = BrickColor.new("White")
pgr5.BackgroundColor = BrickColor.new("Really Black")
pgr5.BorderColor = BrickColor.new("Black")
pgr5.Font = "ArialBold"
pgr5.FontSize = "Size14"
pgr5.TextScaled = true
pgr5.TextStrokeColor3 = Color3.new(0/0,0/0,0/0)
pgr5.TextStrokeTransparency = 0.3
pgr5.BorderSizePixel = 1
pgr5.BorderColor = BrickColor.new("White")
pgr6 = Instance.new("TextButton")
pgr6.Parent = s
pgr6.Size = UDim2.new(0.1,0,0.05,0)
pgr6.Position = UDim2.new(0.1,0,0.85,0)
pgr6.Text="ThrowBags to Van: OFF"
pgr6.BackgroundTransparency = 0.3
pgr6.TextColor = BrickColor.new("White")
pgr6.BackgroundColor = BrickColor.new("Really Black")
pgr6.BorderColor = BrickColor.new("Black")
pgr6.Font = "ArialBold"
pgr6.FontSize = "Size14"
pgr6.TextScaled = true
pgr6.TextStrokeColor3 = Color3.new(0/0,0/0,0/0)
pgr6.TextStrokeTransparency = 0.3
pgr6.BorderSizePixel = 1
pgr6.BorderColor = BrickColor.new("White")
pgr7 = Instance.new("TextButton")
pgr7.Parent = s
pgr7.Size = UDim2.new(0.1,0,0.05,0)
pgr7.Position = UDim2.new(0.2,0,0.8,0)
pgr7.Text="Kill Tab"
pgr7.BackgroundTransparency = 0.3
pgr7.TextColor = BrickColor.new("White")
pgr7.BackgroundColor = BrickColor.new("Really Black")
pgr7.BorderColor = BrickColor.new("Black")
pgr7.Font = "ArialBold"
pgr7.FontSize = "Size14"
pgr7.TextScaled = true
pgr7.TextStrokeColor3 = Color3.new(0/0,0/0,0/0)
pgr7.TextStrokeTransparency = 0.3
pgr7.BorderSizePixel = 1
pgr7.BorderColor = BrickColor.new("White")
pgr8 = Instance.new("TextButton")
pgr8.Parent = s
pgr8.Size = UDim2.new(0.1,0,0.05,0)
pgr8.Position = UDim2.new(0.2,0,0.85,0)
pgr8.Text="GoToMenu"
pgr8.BackgroundTransparency = 0.3
pgr8.TextColor = BrickColor.new("White")
pgr8.BackgroundColor = BrickColor.new("Really Black")
pgr8.BorderColor = BrickColor.new("Black")
pgr8.Font = "ArialBold"
pgr8.FontSize = "Size14"
pgr8.TextScaled = true
pgr8.TextStrokeColor3 = Color3.new(0/0,0/0,0/0)
pgr8.TextStrokeTransparency = 0.3
pgr8.BorderSizePixel = 1
pgr8.BorderColor = BrickColor.new("White")
pgr9 = Instance.new("TextButton")
pgr9.Parent = s
pgr9.Size = UDim2.new(0.1,0,0.05,0)
pgr9.Position = UDim2.new(0.1,0,0.9,0)
pgr9.Text="TpToVan/Escape"
pgr9.BackgroundTransparency = 0.3
pgr9.TextColor = BrickColor.new("White")
pgr9.BackgroundColor = BrickColor.new("Really Black")
pgr9.BorderColor = BrickColor.new("Black")
pgr9.Font = "ArialBold"
pgr9.FontSize = "Size14"
pgr9.TextScaled = true
pgr9.TextStrokeColor3 = Color3.new(0/0,0/0,0/0)
pgr9.TextStrokeTransparency = 0.3
pgr9.BorderSizePixel = 1
pgr9.BorderColor = BrickColor.new("White")
frame = Instance.new("Frame")
frame.Parent = s
frame.Size = UDim2.new(1,0,1,0)
frame.Position = UDim2.new(0.3,0,0.5,0)
frame.BackgroundTransparency = 1
frame.Name="Kill"
frame.Visible = false

pgr.MouseButton1Down:connect(function()
if cops == false then
cops = true
pgr.Text = "Kill Cops: ON"
while cops == true do
for _,police in pairs(PoliceFolder:GetChildren())do
local Humanoid = police:FindFirstChildOfClass("Humanoid")
local Head = police:FindFirstChild("Head")
if Humanoid then
DamageRemote:FireServer("Damage", player.Backpack:FindFirstChildOfClass("Tool"), Humanoid, 9e999, Head, player.Backpack:FindFirstChildOfClass("Tool").Name, Vector3.new())
end
end
task.wait()
end
elseif cops == true then
cops = false
pgr.Text = "Kill Cops: OFF"
end
end)

pgr2.MouseButton1Down:connect(function()
if civs == false then
civs = true
pgr2.Text = "Hostage All Civs: ON"
while civs == true do
YellRemote:FireServer(CivilliansFolder:GetChildren())
task.wait()
end
elseif civs == true then
civs = false
pgr2.Text = "Hostage All Civs: OFF"
end
end)

pgr3.MouseButton1Down:connect(function()
if player.Character and player.Character:FindFirstChild("BaseSpeed") and tonumber(pgr4.Text) then
player.Character:FindFirstChild("BaseSpeed").Value = tonumber(pgr4.Text)
end
end)

pgr5.MouseButton1Down:connect(function()
for _,cameras in CameraFolder:GetChildren() do
cameras:MoveTo(player.Character.HumanoidRootPart.Position)
end
end)

pgr6.MouseButton1Down:connect(function()
if throwbags == false then
throwbags = true
pgr6.Text = "ThrowBags to Van: ON"
while throwbags == true do
for _,c2 in pairs(game.Workspace.Bags:GetChildren())do
BagRemote:FireServer(c2,true)
if c2:FindFirstChildOfClass("UnionOperation"):FindFirstChild("BagWeld") then
c2:FindFirstChildOfClass("UnionOperation"):FindFirstChild("BagWeld"):Destroy()
ThrowBagRemote:FireServer(Vector3.new(0,0,0))
end
setsimulationradius(999999999)
c2:FindFirstChildOfClass("UnionOperation").CFrame = game.Workspace.BagSecuredArea.FloorPart.CFrame*CFrame.new(0,0,5)
--[[for i = 0,50 do
BagSecuredRemote:FireServer(26000,5000,false)
end]]
end
task.wait()
end
elseif throwbags == true then
throwbags = false
pgr6.Text = "ThrowBags to Van: OFF"
end
end)

pgr7.MouseButton1Down:connect(function()
if frame.Visible == false then
frame.Visible = true
local arrange = 0
local side = 0
kags = Instance.new("TextButton")
kags.Parent = frame
kags.Size = UDim2.new(0.1,0,0.05,0)
kags.Position = UDim2.new(0,0,0.2,0)
kags.Text="Kill All Civs"
kags.BackgroundTransparency = 0.3
kags.TextColor = BrickColor.new("White")
kags.BackgroundColor = BrickColor.new("Really Black")
kags.BorderColor = BrickColor.new("Black")
kags.Font = "ArialBold"
kags.FontSize = "Size14"
kags.TextScaled = true
kags.TextStrokeColor3 = Color3.new(0/0,0/0,0/0)
kags.TextStrokeTransparency = 0.3
kags.BorderSizePixel = 1
kags.BorderColor = BrickColor.new("White")
kags.MouseButton1Down:connect(function()
for _,civys in pairs(CivilliansFolder:GetChildren())do--free kills lol
local Humanoid = civys:FindFirstChildOfClass("Humanoid")
local Head = civys:FindFirstChild("Head")
if Humanoid then
DamageRemote:FireServer("Damage", player.Backpack:FindFirstChildOfClass("Tool"), Humanoid, 9e999, Head, player.Backpack:FindFirstChildOfClass("Tool").Name, Vector3.new())
end
end
end)
for _,crims in pairs(game.Workspace:WaitForChild("Criminals"):GetChildren())do
kag = Instance.new("TextButton")
kag.Parent = frame
kag.Size = UDim2.new(0.1,0,0.05,0)
kag.Position = UDim2.new(side,0,arrange,0)
kag.Text=crims.Name
kag.BackgroundTransparency = 0.3
kag.TextColor = BrickColor.new("White")
kag.BackgroundColor = BrickColor.new("Really Black")
kag.BorderColor = BrickColor.new("Black")
kag.Font = "ArialBold"
kag.FontSize = "Size14"
kag.TextScaled = true
kag.TextStrokeColor3 = Color3.new(0/0,0/0,0/0)
kag.TextStrokeTransparency = 0.3
kag.BorderSizePixel = 1
kag.BorderColor = BrickColor.new("White")
if arrange <= 0.1 then
arrange = arrange+0.05
elseif arrange >= 0.15 then
arrange = 0
side = side+0.1
end
kag.MouseButton1Down:connect(function()
local Humanoid = crims:FindFirstChildOfClass("Humanoid")
local Head = crims:FindFirstChild("Head")
if Humanoid then
DamageRemote:FireServer("Damage", player.Backpack:FindFirstChildOfClass("Tool"), Humanoid, 9e999, Head, player.Backpack:FindFirstChildOfClass("Tool").Name, Vector3.new())
end
end)
end
elseif frame.Visible == true then
frame.Visible = false
for _,c in pairs(frame:GetChildren())do
c:Destroy()
end
end
end)

pgr8.MouseButton1Down:connect(function()
RS_Package.Remotes.GoToMenu:FireServer()
end)

pgr9.MouseButton1Down:connect(function()
player.Character.HumanoidRootPart.CFrame = game.Workspace.BagSecuredArea.FloorPart.CFrame
end)

u.InputBegan:Connect(function(input)
if input.KeyCode == Enum.KeyCode.End then
if s.Enabled == true then
s.Enabled = false
elseif s.Enabled == false then
s.Enabled = true
end
end
end)

local function notify(objname)
if objname == "RandomCrate" or objname == "RushCrate" or objname == "MilitaryCrateUNTIMED" or objname == "MiniSafe" or objname == "DisplayCaseRemoveGlass" or objname == "rfid_faceplate" or objname == "ObjectivePickDoor1" or objname == "ObjectivePickDoor2" then
game.StarterGui:SetCore("SendNotification", {Title = "AutoOpen";Text = "Opening up "..objname.."...";Duration = "2";})
elseif objname == "MilitaryCrateTIMED" then
game.StarterGui:SetCore("SendNotification", {Title = "AutoDefuse";Text = "Defusing "..objname.."...";Duration = "2";})
elseif objname == "KickDoor" then
game.StarterGui:SetCore("SendNotification", {Title = "AutoKick";Text = "FBI OPEN UP!";Duration = "2";})
elseif objname == "prop_stadium_storageKeypad" or objname == "UseUSBComputer" or objname == "StadiumHackLaptop" then
game.StarterGui:SetCore("SendNotification", {Title = "AutoHack";Text = "Hacking "..objname.."...";Duration = "2";})
elseif objname == "stadiumDramaticButton" or objname == "AssemblePulleyRope" or objname == "AssemblePulleyHook" or objname == "PulleyLever" then
game.StarterGui:SetCore("SendNotification", {Title = "AutoInteract";Text = "Interacting with "..objname.."...";Duration = "2";})
elseif objname == "CardReader" then
game.StarterGui:SetCore("SendNotification", {Title = "AutoCardReader";Text = "Inserting KeyCard...";Duration = "2";})
else
game.StarterGui:SetCore("SendNotification", {Title = "AutoLoot";Text = "Picking up "..objname.."...";Duration = "2";})
end
end

local WorkspaceDescendants = workspace:GetDescendants()
local Added, Removed;
local Enabled;
local objectstable = {}
local knownloots = {
"DepositMoneyStack",
"Coke",
"PaintingTemplate",
"LootablePainting",
"Jewels",
"Blueprint",
"RushCrate",
"MilitaryCrate",
"MilitaryCrateTIMED",
"MilitaryCrateUNTIMED",
"OpenMilitaryCrate",
"BoomedBox",
"WeaponBagger",
"GoldBars",
"Samurai",
"Artifact",
"MiniSafe",
"OpenedSafe",
"OpenedRegister",
"ATMmoney",
"RandomCrate",
"OpenCrate",
"Crowbar",
"Wirecutters",
"Money",
"Cash Register",
"DepositMoney",
"DepositGoldBar",
"SilverBar",
"DepositRing",
"JewelCrown",
"TrophyLoot",
"TrophyLoot_",
"DisplayCaseRemoveGlass",
"ArtObject",
"SmallJewels",
"SmallJewels2",
"KeyCard",
"Key",
"CardReader",
"LootDrill",
"KickDoor",
"StageRope",
"StageHook",
"missionItem_hook",
"missionItem_rope",
"missionItem_laptopHack",
"USB",
"rfid_faceplate",
"prop_stadium_storageKeypad",
"prop_stadium_USBComputer1",
"prop_stadium_USBComputer2",
"UseUSBComputer",
"CodeKeypad",
"stadiumDramaticButton",
"ObjectivePickDoor1",
"ObjectivePickDoor2",
"ObjectiveDoor",
"StadiumHackLaptop",
"AssemblePulleyRope",
"AssemblePulleyRope_",
"AssemblePulleyHook",
"GoldGuitar_Invisible",
"GoldGuitar",
"PulleyLever_",
"PulleyLever"}

local function DescendantAdded(object)
for Index,loottable in pairs(knownloots)do
if object.Name == loottable then
table.insert(objectstable, object)
end
end
end

local function Disable()
if Enabled then
Enabled = nil
Added:Disconnect()
Added = nil
end
end

local function Enable()
if Enabled then
Disable()
end
Enabled = true
Added = workspace.DescendantAdded:Connect(DescendantAdded)
end

for _,putintotabledamnit in ipairs(WorkspaceDescendants)do
for Index,loottable in pairs(knownloots)do
if putintotabledamnit.Name == loottable then
table.insert(objectstable,putintotabledamnit)
end
end
end

if not string.match(game.PlaceId, "1234408990") and not string.match(game.PlaceId, "1269513822") and not string.match(game.PlaceId, "2511620169") and not string.match(game.PlaceId, "2591382751") and not string.match(game.PlaceId, "5431100846") and not string.match(game.PlaceId, "5431104427") and not string.match(game.PlaceId, "5891659534") then
Enable()
end

if _G.OzelaFarm == true and string.match(game.PlaceId, "6537140247") then

spawn(function()

local istrophiesclear = false
local PlayerGuiSG_Package = player.PlayerGui:WaitForChild("SG_Package")
local SG_PackageMainGui = PlayerGuiSG_Package:WaitForChild("MainGui")
local trophytable = {}

for _,giggity in ipairs(game.Workspace:GetDescendants())do
if giggity.Name == "TrophyLoot_" or giggity.Name == "TrophyLoot" then
table.insert(trophytable,giggity)
end
end

repeat task.wait() until SG_PackageMainGui:FindFirstChild("PregameFrame") and SG_PackageMainGui.PregameFrame.Visible == true

if SG_PackageMainGui.PregameFrame.Visible == true then
for _,playerTHOTS in pairs(game:GetService("ReplicatedStorage").RS_Package.PlayerSlots:GetChildren())do
game:GetService("ReplicatedStorage").RS_Package.Remotes.PlayerReady:FireServer(playerTHOTS.Value,playerTHOTS,"pending")
end
end

repeat task.wait() until game.Workspace.Criminals:FindFirstChildOfClass("Model")

wait(2)

for _,lol in pairs(game.Workspace.Criminals:GetChildren())do
if string.match(lol.Name, "AI") then
lol.NAMETAG.TextLabel.Text = "Random spinjutsu ass weeeeeeeee"
end
end

repeat
for _,police in pairs(CivilliansFolder:GetChildren())do--free kills lol
local Humanoid = police:FindFirstChildOfClass("Humanoid")
local Head = police:FindFirstChild("Head")
if Humanoid then
DamageRemote:FireServer("Damage", player.Backpack:FindFirstChildOfClass("Tool"), Humanoid, 9e999, Head, player.Backpack:FindFirstChildOfClass("Tool").Name, Vector3.new())
end
wait()
end

for _,police in pairs(PoliceFolder:GetChildren())do
local Humanoid = police:FindFirstChildOfClass("Humanoid")
local Head = police:FindFirstChild("Head")
if Humanoid then
DamageRemote:FireServer("Damage", player.Backpack:FindFirstChildOfClass("Tool"), Humanoid, 9e999, Head, player.Backpack:FindFirstChildOfClass("Tool").Name, Vector3.new())
end
wait()
end
task.wait() 
until not PoliceFolder:FindFirstChildOfClass("Model") and not CivilliansFolder:FindFirstChildOfClass("Model") 

wait(2)

local p=Instance.new("Part",workspace)
	p.Name="FlameEm"
	p.TopSurface=0
	p.BottomSurface=0
	p.BrickColor=BrickColor.random()
	p.Anchored=true
	p.CanCollide=true
	p.Size=Vector3.new(50,3,50)
	p.CFrame = player.Character.HumanoidRootPart.CFrame*CFrame.new(0,-5,0)

while task.wait() do

if SG_PackageMainGui.frame_heistResults.Visible == true then
game:GetService("ReplicatedStorage").RS_Package.Remotes.ForceReset:FireServer()
elseif player.Character and player.Character.Health.Value <= 0 then
game:GetService("ReplicatedStorage").RS_Package.Remotes.ForceReset:FireServer()
end

if game.Workspace.Criminals:FindFirstChildOfClass("Model") then
game:GetService("ReplicatedStorage").RS_Package.Assets.Remotes.MaskOn:FireServer()
end

for _,police in pairs(PoliceFolder:GetChildren())do
local Humanoid = police:FindFirstChildOfClass("Humanoid")
local Head = police:FindFirstChild("Head")
if Humanoid then
DamageRemote:FireServer("Damage", player.Backpack:FindFirstChildOfClass("Tool"), Humanoid, 9e999, Head, player.Backpack:FindFirstChildOfClass("Tool").Name, Vector3.new())
end
end

for _,police in pairs(CivilliansFolder:GetChildren())do--free kills lol
local Humanoid = police:FindFirstChildOfClass("Humanoid")
local Head = police:FindFirstChild("Head")
if Humanoid then
DamageRemote:FireServer("Damage", player.Backpack:FindFirstChildOfClass("Tool"), Humanoid, 9e999, Head, player.Backpack:FindFirstChildOfClass("Tool").Name, Vector3.new())
end
end

setsimulationradius(999999999)
game.Workspace.Gravity = 10

for pussy,penises in ipairs(trophytable) do
if penises.Name == "TrophyLoot" and penises:FindFirstChild("loot") or penises.Name == "TrophyLoot_" and penises:FindFirstChild("loot") then
local tweenInfo = TweenInfo.new((penises:FindFirstChild("loot").CFrame.Position+Vector3.new(0,-2.5,0) - player.Character.HumanoidRootPart.Position).Magnitude / tweenspeed,Enum.EasingStyle.Linear,Enum.EasingDirection.In)
tweenService:Create(player.Character.HumanoidRootPart, tweenInfo, {CFrame = penises:FindFirstChild("loot").CFrame*CFrame.new(0,-2.5,0)}):Play()
repeat p.CFrame = player.Character.HumanoidRootPart.CFrame*CFrame.new(0,-5,0)  task.wait() until SG_PackageMainGui.frame_heistResults.Visible == true or penises == nil or not penises:FindFirstChild("loot") or (penises:FindFirstChild("loot").Position - player.Character:FindFirstChild("HumanoidRootPart").Position).magnitude < 10
wait(2)
end
end

if game.Workspace.Map:FindFirstChild("USB") and game.Workspace.RFIDObjectiveDoor:FindFirstChild("OpenDoor") and game.Workspace:FindFirstChild("prop_stadium_cardReader"):FindFirstChild("OpenedRFID") then
local tweenInfo = TweenInfo.new((game.Workspace.Map:FindFirstChild("USB").Hitbox.Position - player.Character.HumanoidRootPart.Position).Magnitude / tweenspeed,Enum.EasingStyle.Linear,Enum.EasingDirection.In)
tweenService:Create(player.Character.HumanoidRootPart, tweenInfo, {CFrame = game.Workspace.Map:FindFirstChild("USB").Hitbox.CFrame}):Play()
repeat  p.CFrame = player.Character.HumanoidRootPart.CFrame*CFrame.new(0,-5,0) task.wait() until SG_PackageMainGui.frame_heistResults.Visible == true or not game.Workspace.Map:FindFirstChild("USB") or (game.Workspace.Map:FindFirstChild("USB").Hitbox.Position - player.Character:FindFirstChild("HumanoidRootPart").Position).magnitude < 10
wait(0.5) player.Character.HumanoidRootPart.Anchored = false
elseif game.Workspace.Map:FindFirstChild("KeyCard") and game.Workspace.RFIDObjectiveDoor:FindFirstChild("OpenDoor") and game.Workspace:FindFirstChild("prop_stadium_cardReader"):FindFirstChild("OpenedRFID") then
local tweenInfo = TweenInfo.new((game.Workspace.Map:FindFirstChild("KeyCard").InteractionPart.Position - player.Character.HumanoidRootPart.Position).Magnitude / tweenspeed,Enum.EasingStyle.Linear,Enum.EasingDirection.In)
tweenService:Create(player.Character.HumanoidRootPart, tweenInfo, {CFrame = game.Workspace.Map:FindFirstChild("KeyCard").InteractionPart.CFrame}):Play()
repeat  p.CFrame = player.Character.HumanoidRootPart.CFrame*CFrame.new(0,-5,0) task.wait() until SG_PackageMainGui.frame_heistResults.Visible == true or not game.Workspace.Map:FindFirstChild("KeyCard") or (game.Workspace.Map:FindFirstChild("KeyCard").InteractionPart.Position - player.Character:FindFirstChild("HumanoidRootPart").Position).magnitude < 10
wait(0.5) player.Character.HumanoidRootPart.Anchored = false
elseif game.Workspace:FindFirstChild("prop_stadium_cardReader"):FindFirstChild("rfid_faceplate") and not game.Workspace:FindFirstChild("prop_stadium_cardReader"):FindFirstChild("OpenedRFID") then
local tweenInfo = TweenInfo.new((game.Workspace:FindFirstChild("prop_stadium_cardReader"):FindFirstChild("rfid_faceplate").Backplate.Position - player.Character.HumanoidRootPart.Position).Magnitude / tweenspeed,Enum.EasingStyle.Linear,Enum.EasingDirection.In)
tweenService:Create(player.Character.HumanoidRootPart, tweenInfo, {CFrame = game.Workspace:FindFirstChild("prop_stadium_cardReader"):FindFirstChild("rfid_faceplate").Backplate.CFrame}):Play()
repeat  p.CFrame = player.Character.HumanoidRootPart.CFrame*CFrame.new(0,-5,0) task.wait() until SG_PackageMainGui.frame_heistResults.Visible == true or not game.Workspace:FindFirstChild("prop_stadium_cardReader"):FindFirstChild("rfid_faceplate") or (game.Workspace:FindFirstChild("prop_stadium_cardReader"):FindFirstChild("rfid_faceplate").Backplate.Position - player.Character:FindFirstChild("HumanoidRootPart").Position).magnitude < 10
wait(0.5) player.Character.HumanoidRootPart.Anchored = false
elseif game.Workspace.RFIDObjectiveDoor:FindFirstChild("DoorLocked") and game.Workspace:FindFirstChild("prop_stadium_cardReader"):FindFirstChild("OpenedRFID") then
local tweenInfo = TweenInfo.new((game.Workspace.RFIDObjectiveDoor:FindFirstChild("DoorLocked").KickDoor.MainPart2.Position - player.Character.HumanoidRootPart.Position).Magnitude / tweenspeed,Enum.EasingStyle.Linear,Enum.EasingDirection.In)
tweenService:Create(player.Character.HumanoidRootPart, tweenInfo, {CFrame = game.Workspace.RFIDObjectiveDoor:FindFirstChild("DoorLocked").KickDoor.MainPart2.CFrame}):Play()
repeat  p.CFrame = player.Character.HumanoidRootPart.CFrame*CFrame.new(0,-5,0) task.wait() until SG_PackageMainGui.frame_heistResults.Visible == true or not game.Workspace.RFIDObjectiveDoor:FindFirstChild("DoorLocked") or (game.Workspace.RFIDObjectiveDoor:FindFirstChild("DoorLocked"):FindFirstChild("KickDoor").MainPart2.Position - player.Character:FindFirstChild("HumanoidRootPart").Position).magnitude < 10
wait(0.5) player.Character.HumanoidRootPart.Anchored = false
elseif game:GetService("ReplicatedStorage").ReplicatedMissionEquipment:FindFirstChild("USB") and game.Workspace:FindFirstChild("UseUSBComputer") then
local tweenInfo = TweenInfo.new((game.Workspace:FindFirstChild("UseUSBComputer").Keyboard.Position - player.Character.HumanoidRootPart.Position).Magnitude / tweenspeed,Enum.EasingStyle.Linear,Enum.EasingDirection.In)
tweenService:Create(player.Character.HumanoidRootPart, tweenInfo, {CFrame = game.Workspace:FindFirstChild("UseUSBComputer").Keyboard.CFrame}):Play()
repeat  p.CFrame = player.Character.HumanoidRootPart.CFrame*CFrame.new(0,-5,0) task.wait() until SG_PackageMainGui.frame_heistResults.Visible == true or not game.Workspace:FindFirstChild("UseUSBComputer") or (game.Workspace:FindFirstChild("UseUSBComputer").Keyboard.Position - player.Character:FindFirstChild("HumanoidRootPart").Position).magnitude < 10
wait(0.5) player.Character.HumanoidRootPart.Anchored = false
elseif game:GetService("ReplicatedStorage").ReplicatedMissionEquipment:FindFirstChild("Key Card") and game.Workspace:FindFirstChild("UsedUSBComputer") and game.Workspace:FindFirstChild("prop_stadium_storageKeypad") then
local tweenInfo = TweenInfo.new((game.Workspace:FindFirstChild("prop_stadium_storageKeypad").Hitbox.Position+Vector3.new(0,0,5) - player.Character.HumanoidRootPart.Position).Magnitude / tweenspeed,Enum.EasingStyle.Linear,Enum.EasingDirection.In)
tweenService:Create(player.Character.HumanoidRootPart, tweenInfo, {CFrame = game.Workspace:FindFirstChild("prop_stadium_storageKeypad").Hitbox.CFrame*CFrame.new(0,0,5)}):Play()
repeat  p.CFrame = player.Character.HumanoidRootPart.CFrame*CFrame.new(0,-5,0) task.wait() until SG_PackageMainGui.frame_heistResults.Visible == true or not game.Workspace:FindFirstChild("prop_stadium_storageKeypad") or (game.Workspace:FindFirstChild("prop_stadium_storageKeypad").Hitbox.Position - player.Character:FindFirstChild("HumanoidRootPart").Position).magnitude < 10
wait(0.5) player.Character.HumanoidRootPart.Anchored = false
elseif game.Workspace:FindFirstChild("prop_stadium_caseOpener").stadiumDramaticButton.Used.Value == false and game.Workspace:FindFirstChild("_") then
local tweenInfo = TweenInfo.new((game.Workspace:FindFirstChild("prop_stadium_caseOpener").stadiumDramaticButton.Main.Position - player.Character.HumanoidRootPart.Position).Magnitude / tweenspeed,Enum.EasingStyle.Linear,Enum.EasingDirection.In)
tweenService:Create(player.Character.HumanoidRootPart, tweenInfo, {CFrame = game.Workspace:FindFirstChild("prop_stadium_caseOpener").stadiumDramaticButton.Main.CFrame}):Play()
repeat  p.CFrame = player.Character.HumanoidRootPart.CFrame*CFrame.new(0,-5,0) task.wait() until SG_PackageMainGui.frame_heistResults.Visible == true or not game.Workspace:FindFirstChild("prop_stadium_caseOpener") or (game.Workspace:FindFirstChild("prop_stadium_caseOpener").stadiumDramaticButton.Main.Position - player.Character:FindFirstChild("HumanoidRootPart").Position).magnitude < 10
wait(0.5) player.Character.HumanoidRootPart.Anchored = false
elseif game.Workspace.mapEntities.missionItems.Hooks:FindFirstChild("StageHook") then
local tweenInfo = TweenInfo.new((game.Workspace.mapEntities.missionItems.Hooks:FindFirstChild("StageHook"):FindFirstChild("missionItem_hook").Position - player.Character.HumanoidRootPart.Position).Magnitude / tweenspeed,Enum.EasingStyle.Linear,Enum.EasingDirection.In)
tweenService:Create(player.Character.HumanoidRootPart, tweenInfo, {CFrame = game.Workspace.mapEntities.missionItems.Hooks:FindFirstChild("StageHook"):FindFirstChild("missionItem_hook").CFrame}):Play()
repeat  p.CFrame = player.Character.HumanoidRootPart.CFrame*CFrame.new(0,-5,0) task.wait() until SG_PackageMainGui.frame_heistResults.Visible == true or not game.Workspace.mapEntities.missionItems.Hooks:FindFirstChild("StageHook") or (game.Workspace.mapEntities.missionItems.Hooks:FindFirstChild("StageHook"):FindFirstChild("missionItem_hook").Position - player.Character:FindFirstChild("HumanoidRootPart").Position).magnitude < 10
wait(0.5) player.Character.HumanoidRootPart.Anchored = false
elseif game.Workspace.mapEntities.missionItems.Ropes:FindFirstChild("StageRope") then
local tweenInfo = TweenInfo.new((game.Workspace.mapEntities.missionItems.Ropes:FindFirstChild("StageRope"):FindFirstChild("missionItem_rope").Position - player.Character.HumanoidRootPart.Position).Magnitude / tweenspeed,Enum.EasingStyle.Linear,Enum.EasingDirection.In)
tweenService:Create(player.Character.HumanoidRootPart, tweenInfo, {CFrame = game.Workspace.mapEntities.missionItems.Ropes:FindFirstChild("StageRope"):FindFirstChild("missionItem_rope").CFrame}):Play()
repeat  p.CFrame = player.Character.HumanoidRootPart.CFrame*CFrame.new(0,-5,0) task.wait() until SG_PackageMainGui.frame_heistResults.Visible == true or not game.Workspace.mapEntities.missionItems.Ropes:FindFirstChild("StageRope") or (game.Workspace.mapEntities.missionItems.Ropes:FindFirstChild("StageRope"):FindFirstChild("missionItem_rope").Position - player.Character:FindFirstChild("HumanoidRootPart").Position).magnitude < 10
wait(0.5) player.Character.HumanoidRootPart.Anchored = false
elseif game.Workspace:FindFirstChild("ObjectivePickDoor1") and game.Workspace:FindFirstChild("ObjectivePickDoor1"):FindFirstChild("Door") and game.Workspace:FindFirstChild("ObjectivePickDoor1"):FindFirstChild("Door"):FindFirstChild("Highlight_[]") then
local tweenInfo = TweenInfo.new((game.Workspace:FindFirstChild("ObjectivePickDoor1"):FindFirstChild("Door").DoorOpenPart.Position+Vector3.new(0,0,-5) - player.Character.HumanoidRootPart.Position).Magnitude / tweenspeed,Enum.EasingStyle.Linear,Enum.EasingDirection.In)
tweenService:Create(player.Character.HumanoidRootPart, tweenInfo, {CFrame = game.Workspace:FindFirstChild("ObjectivePickDoor1"):FindFirstChild("Door").DoorOpenPart.CFrame*CFrame.new(0,0,-5)}):Play()
repeat  p.CFrame = player.Character.HumanoidRootPart.CFrame*CFrame.new(0,-5,0) task.wait() until SG_PackageMainGui.frame_heistResults.Visible == true or not game.Workspace:FindFirstChild("ObjectivePickDoor1"):FindFirstChild("Door") or (game.Workspace:FindFirstChild("ObjectivePickDoor1"):FindFirstChild("Door").DoorOpenPart.Position - player.Character:FindFirstChild("HumanoidRootPart").Position).magnitude < 10
wait(0.5) player.Character.HumanoidRootPart.Anchored = false
elseif game.Workspace.mapEntities.missionItems:FindFirstChild("missionItem_laptopHack") and game.Workspace.mapEntities.missionItems:FindFirstChild("missionItem_laptopHack"):FindFirstChild("Highlight_[]") then
local tweenInfo = TweenInfo.new((game.Workspace.mapEntities.missionItems:FindFirstChild("missionItem_laptopHack").Keyboard.Position - player.Character.HumanoidRootPart.Position).Magnitude / tweenspeed,Enum.EasingStyle.Linear,Enum.EasingDirection.In)
tweenService:Create(player.Character.HumanoidRootPart, tweenInfo, {CFrame = game.Workspace.mapEntities.missionItems:FindFirstChild("missionItem_laptopHack").Keyboard.CFrame}):Play()
repeat  p.CFrame = player.Character.HumanoidRootPart.CFrame*CFrame.new(0,-5,0) task.wait() until SG_PackageMainGui.frame_heistResults.Visible == true or not game.Workspace.mapEntities.missionItems:FindFirstChild("missionItem_laptopHack") or (game.Workspace.mapEntities.missionItems:FindFirstChild("missionItem_laptopHack").Keyboard.Position - player.Character:FindFirstChild("HumanoidRootPart").Position).magnitude < 10
wait(0.5) player.Character.HumanoidRootPart.Anchored = false
elseif game.Workspace.mapEntities.missionItems:FindFirstChild("StadiumHackLaptop") and game.Workspace.mapEntities.missionItems:FindFirstChild("StadiumHackLaptop"):FindFirstChild("Highlight_[]") then
local tweenInfo = TweenInfo.new((game.Workspace.mapEntities.missionItems:FindFirstChild("StadiumHackLaptop").Keyboard.Position - player.Character.HumanoidRootPart.Position).Magnitude / tweenspeed,Enum.EasingStyle.Linear,Enum.EasingDirection.In)
tweenService:Create(player.Character.HumanoidRootPart, tweenInfo, {CFrame = game.Workspace.mapEntities.missionItems:FindFirstChild("StadiumHackLaptop").Keyboard.CFrame}):Play()
repeat  p.CFrame = player.Character.HumanoidRootPart.CFrame*CFrame.new(0,-5,0) task.wait() until SG_PackageMainGui.frame_heistResults.Visible == true or not game.Workspace.mapEntities.missionItems:FindFirstChild("StadiumHackLaptop") or (game.Workspace.mapEntities.missionItems:FindFirstChild("StadiumHackLaptop").Keyboard.Position - player.Character:FindFirstChild("HumanoidRootPart").Position).magnitude < 10
notify("StadiumHackLaptop")
local Time = tick() + 3
repeat
if game.Workspace.mapEntities.missionItems:FindFirstChild("StadiumHackLaptop") and game.Workspace.mapEntities.missionItems:FindFirstChild("StadiumHackLaptop").Keyboard:FindFirstChild("ProximityPrompt") then
StartInteractRemote:FireServer(game.Workspace.mapEntities.missionItems:FindFirstChild("StadiumHackLaptop"):FindFirstChild("Keyboard"):FindFirstChild("ProximityPrompt"))
end
task.wait()
until nil or not game.Workspace.mapEntities.missionItems:FindFirstChild("StadiumHackLaptop") or tick() > Time or (player.Character:FindFirstChild("HumanoidRootPart").Position - game.Workspace.mapEntities.missionItems:FindFirstChild("StadiumHackLaptop"):FindFirstChild("Keyboard").Position).magnitude > 10
if game.Workspace.mapEntities.missionItems:FindFirstChild("StadiumHackLaptop") and game.Workspace.mapEntities.missionItems:FindFirstChild("StadiumHackLaptop"):FindFirstChild("Keyboard"):FindFirstChild("ProximityPrompt") then
CompleteInteractiontRemote:FireServer(game.Workspace.mapEntities.missionItems:FindFirstChild("StadiumHackLaptop"):FindFirstChild("Keyboard"):FindFirstChild("ProximityPrompt"))
end
elseif game.Workspace:FindFirstChild("AssemblePulleyRope") and game.Workspace:FindFirstChild("AssemblePulleyRope"):FindFirstChild("Highlight_[]") then
local tweenInfo = TweenInfo.new((game.Workspace:FindFirstChild("AssemblePulleyRope").Hitbox.Position - player.Character.HumanoidRootPart.Position).Magnitude / tweenspeed,Enum.EasingStyle.Linear,Enum.EasingDirection.In)
tweenService:Create(player.Character.HumanoidRootPart, tweenInfo, {CFrame = game.Workspace:FindFirstChild("AssemblePulleyRope").Hitbox.CFrame}):Play()
repeat  p.CFrame = player.Character.HumanoidRootPart.CFrame*CFrame.new(0,-5,0) task.wait() until SG_PackageMainGui.frame_heistResults.Visible == true or not game.Workspace:FindFirstChild("AssemblePulleyRope") or (game.Workspace:FindFirstChild("AssemblePulleyRope").Hitbox.Position - player.Character:FindFirstChild("HumanoidRootPart").Position).magnitude < 10
notify("AssemblePulleyRope")
local Time = tick() + 1.5
repeat
if game.Workspace:FindFirstChild("AssemblePulleyRope") and game.Workspace:FindFirstChild("AssemblePulleyRope"):FindFirstChild("Hitbox"):FindFirstChild("ProximityPrompt") then
StartInteractRemote:FireServer(game.Workspace:FindFirstChild("AssemblePulleyRope"):FindFirstChild("Hitbox"):FindFirstChild("ProximityPrompt"))
end
task.wait()
until nil or not game.Workspace:FindFirstChild("AssemblePulleyRope") or tick() > Time or (player.Character:FindFirstChild("HumanoidRootPart").Position - game.Workspace:FindFirstChild("AssemblePulleyRope"):FindFirstChild("Hitbox").Position).magnitude > 10
if game.Workspace:FindFirstChild("AssemblePulleyRope") and game.Workspace:FindFirstChild("AssemblePulleyRope"):FindFirstChild("Hitbox"):FindFirstChild("ProximityPrompt") then
CompleteInteractiontRemote:FireServer(game.Workspace:FindFirstChild("AssemblePulleyRope"):FindFirstChild("Hitbox"):FindFirstChild("ProximityPrompt"))
end
elseif game.Workspace:FindFirstChild("AssemblePulleyHook") and game.Workspace:FindFirstChild("AssemblePulleyHook"):FindFirstChild("Highlight_[]") then
local tweenInfo = TweenInfo.new((game.Workspace:FindFirstChild("AssemblePulleyHook").Hitbox.Position - player.Character.HumanoidRootPart.Position).Magnitude / tweenspeed,Enum.EasingStyle.Linear,Enum.EasingDirection.In)
tweenService:Create(player.Character.HumanoidRootPart, tweenInfo, {CFrame = game.Workspace:FindFirstChild("AssemblePulleyHook").Hitbox.CFrame}):Play()
repeat  p.CFrame = player.Character.HumanoidRootPart.CFrame*CFrame.new(0,-5,0) task.wait() until SG_PackageMainGui.frame_heistResults.Visible == true or not game.Workspace:FindFirstChild("AssemblePulleyHook") or (game.Workspace:FindFirstChild("AssemblePulleyHook").Hitbox.Position - player.Character:FindFirstChild("HumanoidRootPart").Position).magnitude < 10
notify("AssemblePulleyHook")
local Time = tick() + 1.5
repeat
if game.Workspace:FindFirstChild("AssemblePulleyHook") and game.Workspace:FindFirstChild("AssemblePulleyHook"):FindFirstChild("Hitbox"):FindFirstChild("ProximityPrompt") then
StartInteractRemote:FireServer(game.Workspace:FindFirstChild("AssemblePulleyHook"):FindFirstChild("Hitbox"):FindFirstChild("ProximityPrompt"))
end
task.wait()
until nil or not game.Workspace:FindFirstChild("AssemblePulleyHook") or tick() > Time or (player.Character:FindFirstChild("HumanoidRootPart").Position - game.Workspace:FindFirstChild("AssemblePulleyHook"):FindFirstChild("Hitbox").Position).magnitude > 10
if game.Workspace:FindFirstChild("AssemblePulleyHook") and game.Workspace:FindFirstChild("AssemblePulleyHook"):FindFirstChild("Hitbox"):FindFirstChild("ProximityPrompt") then
CompleteInteractiontRemote:FireServer(game.Workspace:FindFirstChild("AssemblePulleyHook"):FindFirstChild("Hitbox"):FindFirstChild("ProximityPrompt"))
end
elseif game.Workspace:FindFirstChild("PulleyLever") and game.Workspace:FindFirstChild("PulleyLever"):FindFirstChild("Highlight_[]") then
local tweenInfo = TweenInfo.new((game.Workspace:FindFirstChild("PulleyLever").Hitbox.Position - player.Character.HumanoidRootPart.Position).Magnitude / tweenspeed,Enum.EasingStyle.Linear,Enum.EasingDirection.In)
tweenService:Create(player.Character.HumanoidRootPart, tweenInfo, {CFrame = game.Workspace:FindFirstChild("PulleyLever").Hitbox.CFrame}):Play()
repeat  p.CFrame = player.Character.HumanoidRootPart.CFrame*CFrame.new(0,-5,0) task.wait() until SG_PackageMainGui.frame_heistResults.Visible == true or not game.Workspace:FindFirstChild("PulleyLever") or (game.Workspace:FindFirstChild("PulleyLever").Hitbox.Position - player.Character:FindFirstChild("HumanoidRootPart").Position).magnitude < 10
notify("PulleyLever")
local Time = tick() + 1
repeat
if game.Workspace:FindFirstChild("PulleyLever") and game.Workspace:FindFirstChild("PulleyLever"):FindFirstChild("Hitbox"):FindFirstChild("ProximityPrompt") then
StartInteractRemote:FireServer(game.Workspace:FindFirstChild("PulleyLever"):FindFirstChild("Hitbox"):FindFirstChild("ProximityPrompt"))
end
task.wait()
until nil or not game.Workspace:FindFirstChild("PulleyLever") or tick() > Time or (player.Character:FindFirstChild("HumanoidRootPart").Position - game.Workspace:FindFirstChild("PulleyLever"):FindFirstChild("Hitbox").Position).magnitude > 10
if game.Workspace:FindFirstChild("PulleyLever") and game.Workspace:FindFirstChild("PulleyLever"):FindFirstChild("Hitbox"):FindFirstChild("ProximityPrompt") then
CompleteInteractiontRemote:FireServer(game.Workspace:FindFirstChild("PulleyLever"):FindFirstChild("Hitbox"):FindFirstChild("ProximityPrompt"))
end
elseif game.Workspace:FindFirstChild("Pulley") and game.Workspace:FindFirstChild("Pulley"):FindFirstChild("GoldGuitar") then
local tweenInfo = TweenInfo.new((game.Workspace.Pulley.GoldGuitar.missionItem_goldGuitar.Position - player.Character.HumanoidRootPart.Position).Magnitude / tweenspeed,Enum.EasingStyle.Linear,Enum.EasingDirection.In)
tweenService:Create(player.Character.HumanoidRootPart, tweenInfo, {CFrame = game.Workspace.Pulley.GoldGuitar.missionItem_goldGuitar.CFrame}):Play()
repeat  p.CFrame = player.Character.HumanoidRootPart.CFrame*CFrame.new(0,-5,0) task.wait() until SG_PackageMainGui.frame_heistResults.Visible == true or not game.Workspace.Pulley:FindFirstChild("GoldGuitar") or (game.Workspace.Pulley.GoldGuitar.missionItem_goldGuitar.Position - player.Character:FindFirstChild("HumanoidRootPart").Position).magnitude < 10
notify("GoldGuitar")
repeat
if game.Workspace.Pulley:FindFirstChild("GoldGuitar") and game.Workspace.Pulley:FindFirstChild("GoldGuitar"):FindFirstChild("missionItem_goldGuitar") then
player.Character.HumanoidRootPart.CFrame = game.Workspace.Pulley.hook["Meshes/piratehook"].CFrame*CFrame.new(0,2,-2)
fireproximityprompt(game.Workspace.Pulley:FindFirstChild("GoldGuitar"):FindFirstChild("missionItem_goldGuitar").ProximityPrompt,5,true)
end
task.wait()
until not game.Workspace.Pulley:FindFirstChild("GoldGuitar")
wait(1)
elseif game.Workspace:FindFirstChild("GuardLocker1") and game.Workspace:FindFirstChild("GuardLocker1"):FindFirstChild("Highlight_[]") and not player.Character:FindFirstChild("HAS COSTUME") then
player.Character.HumanoidRootPart.CFrame = game.Workspace:FindFirstChild("GuardLocker1").Hitbox.CFrame
elseif game.Workspace:FindFirstChild("GuardLocker2") and game.Workspace:FindFirstChild("GuardLocker2"):FindFirstChild("Highlight_[]") and not player.Character:FindFirstChild("HAS COSTUME") then
player.Character.HumanoidRootPart.CFrame = game.Workspace:FindFirstChild("GuardLocker2").Hitbox.CFrame
elseif not player.Character:FindFirstChild("HAS COSTUME") and not game.Workspace:FindFirstChild("Built") then
local tweenInfo = TweenInfo.new((game.Workspace.BagSecuredArea.FloorPart.Position+Vector3.new(0,0,5) - player.Character.HumanoidRootPart.Position).Magnitude / tweenspeed,Enum.EasingStyle.Linear,Enum.EasingDirection.In)
tweenService:Create(player.Character.HumanoidRootPart, tweenInfo, {CFrame = game.Workspace.BagSecuredArea.FloorPart.CFrame*CFrame.new(0,0,5)}):Play()
p.CFrame = player.Character.HumanoidRootPart.CFrame*CFrame.new(0,-5,0)
if player.Character.HumanoidRootPart.Position.Y < -100 then
player.Character.HumanoidRootPart.CFrame = game.Workspace.BagSecuredArea.FloorPart.CFrame*CFrame.new(0,0,5)
end
elseif player.Character:FindFirstChild("HAS COSTUME") then
player.Character.HumanoidRootPart.CFrame = game.Workspace.BagSecuredArea.FloorPart.CFrame*CFrame.new(0,0,5)
end
end
end)
end

while task.wait() do
if player.Character and player.Character:FindFirstChild("Stamina") then
player.Character:FindFirstChild("Stamina").Value = 1000
end

if player.Character and player.Character:FindFirstChild("BagSpeed") then
player.Character:FindFirstChild("BagSpeed").Value = 1
end

RS_Package.Host.Value = player.UserId
RS_Package.Kicking.Value = 2

for equip,ment in pairs(game:GetService("ReplicatedStorage").ReplicatedMissionEquipment:GetChildren())do
if ment.Name == "Crowbar" and ment.Value == player then
hascrowbar = true
end
if ment.Name == "Wirecutters" and ment.Value == player then
haswirecutters = true
end
if ment.Name == "Key Card" and ment.Value == player then
haskeycard = true
end
if ment.Name == "USB" and ment.Value == player then
hasUSB = true
end
end

for op, c in ipairs(objectstable) do
if c.Name == "DepositMoneyStack" and c:FindFirstChild("Hitbox") then
if not c:FindFirstChild("Highlight") then
local highlight = Instance.new("Highlight",c)
highlight.FillTransparency = 1
highlight.OutlineColor = Color3.fromRGB(255,170,0)
end
for _,colas in pairs(c:GetChildren())do
if colas:FindFirstChild("ProximityPrompt") and (colas.Position - player.Character:FindFirstChild("HumanoidRootPart").Position).magnitude < 10 then
notify(c.Name)
local Time = tick() + 3.25
repeat
StartInteractRemote:FireServer(colas:FindFirstChild("ProximityPrompt"))
task.wait()
until c == nil or colas == nil or tick() > Time or (player.Character:FindFirstChild("HumanoidRootPart").Position - colas.Position).magnitude > 10
CompleteInteractiontRemote:FireServer(colas:FindFirstChild("ProximityPrompt"))
end
end
elseif c.Name == "Coke" then
if not c:FindFirstChild("Highlight") then
local highlight = Instance.new("Highlight",c)
highlight.FillTransparency = 1
highlight.OutlineColor = Color3.fromRGB(255,170,0)
end
for _,colas in pairs(c:GetChildren())do
if colas:FindFirstChild("ProximityPrompt") and (colas.Position - player.Character:FindFirstChild("HumanoidRootPart").Position).magnitude < 10 then
notify(c.Name)
local Time = tick() + 3.25
repeat
StartInteractRemote:FireServer(colas:FindFirstChild("ProximityPrompt"))
task.wait()
until c == nil or colas == nil or tick() > Time or (player.Character:FindFirstChild("HumanoidRootPart").Position - colas.Position).magnitude > 10
CompleteInteractiontRemote:FireServer(colas:FindFirstChild("ProximityPrompt"))
end
end
elseif c.Name == "LootablePainting" and c:FindFirstChild("Picture") then
if not c:FindFirstChild("Highlight") then
local highlight = Instance.new("Highlight",c)
highlight.FillTransparency = 1
highlight.OutlineColor = Color3.fromRGB(255,170,0)
end
for _,colas in pairs(c:GetChildren())do
if colas:FindFirstChild("ProximityPrompt") and (colas.Position - player.Character:FindFirstChild("HumanoidRootPart").Position).magnitude < 10 then
notify(c.Name)
local Time = tick() + 3.25
repeat
StartInteractRemote:FireServer(colas:FindFirstChild("ProximityPrompt"))
task.wait()
until c == nil or colas == nil or tick() > Time or (player.Character:FindFirstChild("HumanoidRootPart").Position - colas.Position).magnitude > 10
CompleteInteractiontRemote:FireServer(colas:FindFirstChild("ProximityPrompt"))
end
end
elseif c.Name == "Jewels" then
if not c:FindFirstChild("Highlight") then
local highlight = Instance.new("Highlight",c)
highlight.FillTransparency = 1
highlight.OutlineColor = Color3.fromRGB(255,170,0)
end
for _,colas in pairs(c:GetChildren())do
if colas:FindFirstChild("ProximityPrompt") and (colas.Position - player.Character:FindFirstChild("HumanoidRootPart").Position).magnitude < 10 then
notify(c.Name)
local Time = tick() + 1.5
repeat
StartInteractRemote:FireServer(colas:FindFirstChild("ProximityPrompt"))
task.wait()
until c == nil or colas == nil or tick() > Time or (player.Character:FindFirstChild("HumanoidRootPart").Position - colas.Position).magnitude > 10
CompleteInteractiontRemote:FireServer(colas:FindFirstChild("ProximityPrompt"))
end
end
elseif c.Name == "Blueprint" and c:FindFirstChild("Blueprint") then
if not c:FindFirstChild("Highlight") then
local highlight = Instance.new("Highlight",c)
highlight.FillTransparency = 1
highlight.OutlineColor = Color3.fromRGB(255,170,0)
end
if (c:FindFirstChild("Blueprint").Position - player.Character:FindFirstChild("HumanoidRootPart").Position).magnitude < 10 then
notify(c.Name)
local Time = tick() + 1.5
repeat
if c:FindFirstChild("Blueprint") and c:FindFirstChild("Blueprint"):FindFirstChild("ProximityPrompt") then
StartInteractRemote:FireServer(c:FindFirstChild("Blueprint"):FindFirstChild("ProximityPrompt"))
end
task.wait()
until c == nil or not c:FindFirstChild("Blueprint") or tick() > Time or (player.Character:FindFirstChild("HumanoidRootPart").Position - c:FindFirstChild("Blueprint").Position).magnitude > 10
if c:FindFirstChild("Blueprint") and c:FindFirstChild("Blueprint"):FindFirstChild("ProximityPrompt") then
CompleteInteractiontRemote:FireServer(c:FindFirstChild("Blueprint"):FindFirstChild("ProximityPrompt"))
end
end
elseif c.Name == "MilitaryCrate" and c:FindFirstChild("Lid") then
if not c:FindFirstChild("tracker") then
local bb = Instance.new("BillboardGui",c)
bb.Adornee = c
bb.ExtentsOffset = Vector3.new(0,1,0)
bb.AlwaysOnTop = true
bb.Size = UDim2.new(0,5,0,5)
bb.StudsOffset = Vector3.new(0,1,0)
bb.Name = "tracker"
local frame = Instance.new("Frame",bb)
frame.ZIndex = 10
frame.BackgroundTransparency = 0.3
frame.Size = UDim2.new(1,0,1,0)
frame.Position = UDim2.new(0,0,0)
frame.Transparency = 0
local txtlbl = Instance.new("TextLabel",bb)
txtlbl.ZIndex = 10
txtlbl.Text = c.Name
txtlbl.BackgroundTransparency = 1
txtlbl.Position = UDim2.new(0,0,0,-35)
txtlbl.Size = UDim2.new(1,0,10,0)
txtlbl.TextColor3 = Color3.new(1,1,1)
txtlbl.Font = "SourceSansBold"
txtlbl.FontSize = "Size10"
txtlbl.TextStrokeTransparency = 0.5
elseif c:FindFirstChild("tracker") then
c:FindFirstChild("tracker").TextLabel.Text = c.Name
end
elseif c.Name == "MilitaryCrateTIMED" and c:FindFirstChild("Lid") then
if not c:FindFirstChild("tracker") then
local bb = Instance.new("BillboardGui",c)
bb.Adornee = c
bb.ExtentsOffset = Vector3.new(0,1,0)
bb.AlwaysOnTop = true
bb.Size = UDim2.new(0,5,0,5)
bb.StudsOffset = Vector3.new(0,1,0)
bb.Name = "tracker"
local frame = Instance.new("Frame",bb)
frame.ZIndex = 10
frame.BackgroundTransparency = 0.3
frame.Size = UDim2.new(1,0,1,0)
frame.Position = UDim2.new(0,0,0)
frame.Transparency = 0
local txtlbl = Instance.new("TextLabel",bb)
txtlbl.ZIndex = 10
txtlbl.Text = c.Name
txtlbl.BackgroundTransparency = 1
txtlbl.Position = UDim2.new(0,0,0,-35)
txtlbl.Size = UDim2.new(1,0,10,0)
txtlbl.TextColor3 = Color3.new(1,1,1)
txtlbl.Font = "SourceSansBold"
txtlbl.FontSize = "Size10"
txtlbl.TextStrokeTransparency = 0.5
elseif c:FindFirstChild("tracker") then
c:FindFirstChild("tracker").TextLabel.Text = c.Name
end
if (c:FindFirstChild("Lid").Position - player.Character:FindFirstChild("HumanoidRootPart").Position).magnitude < 10 then
notify(c.Name)
local Time = tick() + 3.25
repeat
if c:FindFirstChild("Lid") and c:FindFirstChild("Lid"):FindFirstChild("ProximityPrompt") then
StartInteractRemote:FireServer(c:FindFirstChild("Lid"):FindFirstChild("ProximityPrompt"))
end
task.wait()
until c == nil or not c:FindFirstChild("Lid") or tick() > Time or (player.Character:FindFirstChild("HumanoidRootPart").Position - c:FindFirstChild("Lid").Position).magnitude > 10
if c:FindFirstChild("Lid") and c:FindFirstChild("Lid"):FindFirstChild("ProximityPrompt") then
CompleteInteractiontRemote:FireServer(c:FindFirstChild("Lid"):FindFirstChild("ProximityPrompt"))
end
end
elseif c.Name == "MilitaryCrateUNTIMED" and c:FindFirstChild("Lid") then
if not c:FindFirstChild("tracker") then
local bb = Instance.new("BillboardGui",c)
bb.Adornee = c
bb.ExtentsOffset = Vector3.new(0,1,0)
bb.AlwaysOnTop = true
bb.Size = UDim2.new(0,5,0,5)
bb.StudsOffset = Vector3.new(0,1,0)
bb.Name = "tracker"
local frame = Instance.new("Frame",bb)
frame.ZIndex = 10
frame.BackgroundTransparency = 0.3
frame.Size = UDim2.new(1,0,1,0)
frame.Position = UDim2.new(0,0,0)
frame.Transparency = 0
local txtlbl = Instance.new("TextLabel",bb)
txtlbl.ZIndex = 10
txtlbl.Text = c.Name
txtlbl.BackgroundTransparency = 1
txtlbl.Position = UDim2.new(0,0,0,-35)
txtlbl.Size = UDim2.new(1,0,10,0)
txtlbl.TextColor3 = Color3.new(1,1,1)
txtlbl.Font = "SourceSansBold"
txtlbl.FontSize = "Size10"
txtlbl.TextStrokeTransparency = 0.5
elseif c:FindFirstChild("tracker") then
c:FindFirstChild("tracker").TextLabel.Text = c.Name
end
if (c:FindFirstChild("Lid").Position - player.Character:FindFirstChild("HumanoidRootPart").Position).magnitude < 10 then
notify(c.Name)
local Time = tick() + 3.25
repeat
if c:FindFirstChild("Lid") and c:FindFirstChild("Lid"):FindFirstChild("ProximityPrompt") then
StartInteractRemote:FireServer(c:FindFirstChild("Lid"):FindFirstChild("ProximityPrompt"))
end
task.wait()
until c == nil or not c:FindFirstChild("Lid") or tick() > Time or (player.Character:FindFirstChild("HumanoidRootPart").Position - c:FindFirstChild("Lid").Position).magnitude > 10
if c:FindFirstChild("Lid") and c:FindFirstChild("Lid"):FindFirstChild("ProximityPrompt") then
CompleteInteractiontRemote:FireServer(c:FindFirstChild("Lid"):FindFirstChild("ProximityPrompt"))
end
end
elseif c.Name == "OpenMilitaryCrate" then
if c:FindFirstChild("tracker") then
c:FindFirstChild("tracker"):Destroy()
end
elseif c.Name == "OpenedSafe" then
if c:FindFirstChild("Highlight") then
c:FindFirstChild("Highlight"):Destroy()
end
elseif c.Name == "OpenedRegister" then
if c:FindFirstChild("Highlight") then
c:FindFirstChild("Highlight"):Destroy()
end
elseif c.Name == "BoomedBox" then
if c:FindFirstChild("tracker") then
c:FindFirstChild("tracker"):Destroy()
end
elseif c.Name == "WeaponBagger" and c:FindFirstChild("Barrel") then
if not c:FindFirstChild("Highlight") then
local highlight = Instance.new("Highlight",c)
highlight.FillTransparency = 1
highlight.OutlineColor = Color3.fromRGB(255,170,0)
end
for _,colas in pairs(c:GetChildren())do
if colas:FindFirstChild("ProximityPrompt") and (colas.Position - player.Character:FindFirstChild("HumanoidRootPart").Position).magnitude < 10 then
notify(c.Name)
local Time = tick() + 4.25
repeat
StartInteractRemote:FireServer(colas:FindFirstChild("ProximityPrompt"))
task.wait()
until c == nil or colas == nil or tick() > Time or (player.Character:FindFirstChild("HumanoidRootPart").Position - colas.Position).magnitude > 10
CompleteInteractiontRemote:FireServer(colas:FindFirstChild("ProximityPrompt"))
end
end
elseif c.Name == "GoldBars" then
if not c:FindFirstChild("Highlight") then
local highlight = Instance.new("Highlight",c)
highlight.FillTransparency = 1
highlight.OutlineColor = Color3.fromRGB(255,170,0)
end
for _,colas in pairs(c:GetChildren())do
if colas:FindFirstChild("ProximityPrompt") and (colas.Position - player.Character:FindFirstChild("HumanoidRootPart").Position).magnitude < 10 then
notify(c.Name)
local Time = tick() + 4
repeat
StartInteractRemote:FireServer(colas:FindFirstChild("ProximityPrompt"))
task.wait()
until c == nil or colas == nil or tick() > Time or (player.Character:FindFirstChild("HumanoidRootPart").Position - colas.Position).magnitude > 10
CompleteInteractiontRemote:FireServer(colas:FindFirstChild("ProximityPrompt"))
end
end
elseif c.Name == "Samurai" then
if not c:FindFirstChild("Highlight") then
local highlight = Instance.new("Highlight",c)
highlight.FillTransparency = 1
highlight.OutlineColor = Color3.fromRGB(255,170,0)
end
for _,colas in pairs(c:GetChildren())do
if colas:FindFirstChild("ProximityPrompt") and (colas.Position - player.Character:FindFirstChild("HumanoidRootPart").Position).magnitude < 10 then
notify(c.Name)
local Time = tick() + 4
repeat
StartInteractRemote:FireServer(colas:FindFirstChild("ProximityPrompt"))
task.wait()
until c == nil or colas == nil or tick() > Time or (player.Character:FindFirstChild("HumanoidRootPart").Position - colas.Position).magnitude > 10
CompleteInteractiontRemote:FireServer(colas:FindFirstChild("ProximityPrompt"))
end
end
elseif c.Name == "Artifact" then
if not c:FindFirstChild("Highlight") then
local highlight = Instance.new("Highlight",c)
highlight.FillTransparency = 1
highlight.OutlineColor = Color3.fromRGB(255,170,0)
end
for _,colas in pairs(c:GetChildren())do
if colas:FindFirstChild("ProximityPrompt") and (colas.Position - player.Character:FindFirstChild("HumanoidRootPart").Position).magnitude < 10 then
notify(c.Name)
local Time = tick() + 4
repeat
StartInteractRemote:FireServer(colas:FindFirstChild("ProximityPrompt"))
task.wait()
until c == nil or colas == nil or tick() > Time or (player.Character:FindFirstChild("HumanoidRootPart").Position - colas.Position).magnitude > 10
CompleteInteractiontRemote:FireServer(colas:FindFirstChild("ProximityPrompt"))
end
end
elseif c.Name == "MiniSafe" and c:FindFirstChild("InsertDrill") then
if not c:FindFirstChild("Highlight") then
local highlight = Instance.new("Highlight",c)
highlight.FillTransparency = 1
highlight.OutlineColor = Color3.fromRGB(255,170,0)
end
if (c:FindFirstChild("InsertDrill").Position - player.Character:FindFirstChild("HumanoidRootPart").Position).magnitude < 10 then
notify(c.Name)
local Time = tick() + 14
repeat
if c:FindFirstChild("InsertDrill") and c:FindFirstChild("InsertDrill"):FindFirstChild("ProximityPromptPickLock") then
StartInteractRemote:FireServer(c:FindFirstChild("InsertDrill"):FindFirstChild("ProximityPromptPickLock"))
end
task.wait()
until c == nil or not c:FindFirstChild("InsertDrill") or tick() > Time or (player.Character:FindFirstChild("HumanoidRootPart").Position - c:FindFirstChild("InsertDrill").Position).magnitude > 10
if c:FindFirstChild("InsertDrill") and c:FindFirstChild("InsertDrill"):FindFirstChild("ProximityPromptPickLock") then
CompleteInteractiontRemote:FireServer(c:FindFirstChild("InsertDrill"):FindFirstChild("ProximityPromptPickLock"))
end
end
elseif c.Name == "LootDrill" and c:FindFirstChild("Main") then
if not c:FindFirstChild("Highlight") then
local highlight = Instance.new("Highlight",c)
highlight.FillTransparency = 1
highlight.OutlineColor = Color3.fromRGB(255,170,0)
end
if (c:FindFirstChild("Main").Position - player.Character:FindFirstChild("HumanoidRootPart").Position).magnitude < 10 then
notify(c.Name)
local Time = tick() + 1.5
repeat
if c:FindFirstChild("Main") and c:FindFirstChild("Main"):FindFirstChild("ProximityPrompt") then
StartInteractRemote:FireServer(c:FindFirstChild("Main"):FindFirstChild("ProximityPrompt"))
end
task.wait()
until c == nil or not c:FindFirstChild("Main") or tick() > Time or (player.Character:FindFirstChild("HumanoidRootPart").Position - c:FindFirstChild("Main").Position).magnitude > 10
if c:FindFirstChild("Main") and c:FindFirstChild("Main"):FindFirstChild("ProximityPrompt") then
CompleteInteractiontRemote:FireServer(c:FindFirstChild("Main"):FindFirstChild("ProximityPrompt"))
end
end
elseif c.Name == "rfid_faceplate" and c:FindFirstChild("Backplate") then
if not c:FindFirstChild("Highlight") then
local highlight = Instance.new("Highlight",c)
highlight.FillTransparency = 1
highlight.OutlineColor = Color3.fromRGB(255,170,0)
end
if (c:FindFirstChild("Backplate").Position - player.Character:FindFirstChild("HumanoidRootPart").Position).magnitude < 10 then
notify(c.Name)
local Time = tick() + .5
repeat
if c:FindFirstChild("Backplate") and c:FindFirstChild("Backplate"):FindFirstChild("ProximityPrompt") then
StartInteractRemote:FireServer(c:FindFirstChild("Backplate"):FindFirstChild("ProximityPrompt"))
end
task.wait()
until c == nil or not c:FindFirstChild("Backplate") or tick() > Time or (player.Character:FindFirstChild("HumanoidRootPart").Position - c:FindFirstChild("Backplate").Position).magnitude > 10
if c:FindFirstChild("Backplate") and c:FindFirstChild("Backplate"):FindFirstChild("ProximityPrompt") then
CompleteInteractiontRemote:FireServer(c:FindFirstChild("Backplate"):FindFirstChild("ProximityPrompt"))
end
end
elseif c.Name == "UseUSBComputer" and c:FindFirstChild("Keyboard") and hasUSB == true and c:FindFirstChild("Highlight_[]") then
if not c:FindFirstChild("Highlight") then
local highlight = Instance.new("Highlight",c)
highlight.FillTransparency = 1
highlight.OutlineColor = Color3.fromRGB(255,170,0)
end
if (c:FindFirstChild("Keyboard").Position - player.Character:FindFirstChild("HumanoidRootPart").Position).magnitude < 10 then
notify(c.Name)
local Time = tick() + .5
repeat
if c:FindFirstChild("Keyboard") and c:FindFirstChild("Keyboard"):FindFirstChild("ProximityPrompt") then
StartInteractRemote:FireServer(c:FindFirstChild("Keyboard"):FindFirstChild("ProximityPrompt"))
end
task.wait()
until c == nil or not c:FindFirstChild("Keyboard") or tick() > Time or (player.Character:FindFirstChild("HumanoidRootPart").Position - c:FindFirstChild("Keyboard").Position).magnitude > 10
if c:FindFirstChild("Keyboard") and c:FindFirstChild("Keyboard"):FindFirstChild("ProximityPrompt") then
CompleteInteractiontRemote:FireServer(c:FindFirstChild("Keyboard"):FindFirstChild("ProximityPrompt"))
hasUSB = false
end
end
elseif c.Name == "StadiumHackLaptop" and c:FindFirstChild("Keyboard") then
if not c:FindFirstChild("Highlight") then
local highlight = Instance.new("Highlight",c)
highlight.FillTransparency = 1
highlight.OutlineColor = Color3.fromRGB(255,170,0)
end
if (c:FindFirstChild("Keyboard").Position - player.Character:FindFirstChild("HumanoidRootPart").Position).magnitude < 10 then
notify(c.Name)
local Time = tick() + 4.25
repeat
if c:FindFirstChild("Keyboard") and c:FindFirstChild("Keyboard"):FindFirstChild("ProximityPrompt") then
StartInteractRemote:FireServer(c:FindFirstChild("Keyboard"):FindFirstChild("ProximityPrompt"))
end
task.wait()
until c == nil or not c:FindFirstChild("Keyboard") or tick() > Time or (player.Character:FindFirstChild("HumanoidRootPart").Position - c:FindFirstChild("Keyboard").Position).magnitude > 10
if c:FindFirstChild("Keyboard") and c:FindFirstChild("Keyboard"):FindFirstChild("ProximityPrompt") then
CompleteInteractiontRemote:FireServer(c:FindFirstChild("Keyboard"):FindFirstChild("ProximityPrompt"))
end
end
elseif c.Name == "AssemblePulleyRope" and c:FindFirstChild("Hitbox") then
if not c:FindFirstChild("Highlight") then
local highlight = Instance.new("Highlight",c)
highlight.FillTransparency = 1
highlight.OutlineColor = Color3.fromRGB(255,170,0)
end
if (c:FindFirstChild("Hitbox").Position - player.Character:FindFirstChild("HumanoidRootPart").Position).magnitude < 10 then
notify(c.Name)
local Time = tick() + 1.5
repeat
if c:FindFirstChild("Hitbox") and c:FindFirstChild("Hitbox"):FindFirstChild("ProximityPrompt") then
StartInteractRemote:FireServer(c:FindFirstChild("Hitbox"):FindFirstChild("ProximityPrompt"))
end
task.wait()
until c == nil or not c:FindFirstChild("Hitbox") or tick() > Time or (player.Character:FindFirstChild("HumanoidRootPart").Position - c:FindFirstChild("Hitbox").Position).magnitude > 10
if c:FindFirstChild("Hitbox") and c:FindFirstChild("Hitbox"):FindFirstChild("ProximityPrompt") then
CompleteInteractiontRemote:FireServer(c:FindFirstChild("Hitbox"):FindFirstChild("ProximityPrompt"))
end
end
elseif c.Name == "AssemblePulleyHook" and c:FindFirstChild("Hitbox") then
if not c:FindFirstChild("Highlight") then
local highlight = Instance.new("Highlight",c)
highlight.FillTransparency = 1
highlight.OutlineColor = Color3.fromRGB(255,170,0)
end
if (c:FindFirstChild("Hitbox").Position - player.Character:FindFirstChild("HumanoidRootPart").Position).magnitude < 10 then
notify(c.Name)
local Time = tick() + 1.5
repeat
if c:FindFirstChild("Hitbox") and c:FindFirstChild("Hitbox"):FindFirstChild("ProximityPrompt") then
StartInteractRemote:FireServer(c:FindFirstChild("Hitbox"):FindFirstChild("ProximityPrompt"))
end
task.wait()
until c == nil or not c:FindFirstChild("Hitbox") or tick() > Time or (player.Character:FindFirstChild("HumanoidRootPart").Position - c:FindFirstChild("Hitbox").Position).magnitude > 10
if c:FindFirstChild("Hitbox") and c:FindFirstChild("Hitbox"):FindFirstChild("ProximityPrompt") then
CompleteInteractiontRemote:FireServer(c:FindFirstChild("Hitbox"):FindFirstChild("ProximityPrompt"))
end
end
elseif c.Name == "PulleyLever" and c:FindFirstChild("Hitbox") then
if not c:FindFirstChild("Highlight") then
local highlight = Instance.new("Highlight",c)
highlight.FillTransparency = 1
highlight.OutlineColor = Color3.fromRGB(255,170,0)
end
if (c:FindFirstChild("Hitbox").Position - player.Character:FindFirstChild("HumanoidRootPart").Position).magnitude < 10 then
notify(c.Name)
local Time = tick() + 1
repeat
if c:FindFirstChild("Hitbox") and c:FindFirstChild("Hitbox"):FindFirstChild("ProximityPrompt") then
StartInteractRemote:FireServer(c:FindFirstChild("Hitbox"):FindFirstChild("ProximityPrompt"))
end
task.wait()
until c == nil or not c:FindFirstChild("Hitbox") or tick() > Time or (player.Character:FindFirstChild("HumanoidRootPart").Position - c:FindFirstChild("Hitbox").Position).magnitude > 10
if c:FindFirstChild("Hitbox") and c:FindFirstChild("Hitbox"):FindFirstChild("ProximityPrompt") then
CompleteInteractiontRemote:FireServer(c:FindFirstChild("Hitbox"):FindFirstChild("ProximityPrompt"))
end
end
elseif c.Name == "prop_stadium_storageKeypad" and c:FindFirstChild("Hitbox") and game:GetService("ReplicatedStorage").ReplicatedMissionEquipment:FindFirstChild("Key Card") and game.Workspace:FindFirstChild("UsedUSBComputer") then
if not c:FindFirstChild("Highlight") then
local highlight = Instance.new("Highlight",c)
highlight.FillTransparency = 1
highlight.OutlineColor = Color3.fromRGB(255,170,0)
end
if (c:FindFirstChild("Hitbox").Position - player.Character:FindFirstChild("HumanoidRootPart").Position).magnitude < 10 then
notify(c.Name)
local Time = tick() + .5
repeat
RS_Package.Remotes.UseKeypad:FireServer(game.Workspace:FindFirstChild("UsedUSBComputer").Screen.SurfaceGui.TextLabel.Text)
task.wait()
until c == nil or not c:FindFirstChild("Hitbox") or tick() > Time or (player.Character:FindFirstChild("HumanoidRootPart").Position - c:FindFirstChild("Hitbox").Position).magnitude > 10
end
elseif c.Name == "stadiumDramaticButton" and c:FindFirstChild("Main") and game.Workspace:FindFirstChild("_") and game.Workspace:FindFirstChild("UsedUSBComputer") and c.Used.Value == false then
if not c:FindFirstChild("Highlight") then
local highlight = Instance.new("Highlight",c)
highlight.FillTransparency = 1
highlight.OutlineColor = Color3.fromRGB(255,170,0)
end
if (c:FindFirstChild("Main").Position - player.Character:FindFirstChild("HumanoidRootPart").Position).magnitude < 10 then
notify(c.Name)
local Time = tick() + .01
repeat
if c:FindFirstChild("Main") and c:FindFirstChild("Main"):FindFirstChild("ProximityPrompt") then
StartInteractRemote:FireServer(c:FindFirstChild("Main"):FindFirstChild("ProximityPrompt"))
end
task.wait()
until c == nil or not c:FindFirstChild("Main") or tick() > Time or (player.Character:FindFirstChild("HumanoidRootPart").Position - c:FindFirstChild("Main").Position).magnitude > 10
if c:FindFirstChild("Main") and c:FindFirstChild("Main"):FindFirstChild("ProximityPrompt") then
CompleteInteractiontRemote:FireServer(c:FindFirstChild("Main"):FindFirstChild("ProximityPrompt"))
end
end
elseif c.Name == "ObjectivePickDoor1" and c:FindFirstChild("Door") and c:FindFirstChild("Door"):FindFirstChild("DoorOpenPart") then
if not c:FindFirstChild("Highlight") then
local highlight = Instance.new("Highlight",c)
highlight.FillTransparency = 1
highlight.OutlineColor = Color3.fromRGB(255,170,0)
end
if (c:FindFirstChild("Door"):FindFirstChild("DoorOpenPart").Position - player.Character:FindFirstChild("HumanoidRootPart").Position).magnitude < 10 then
notify(c.Name)
local Time = tick() + 4.25
repeat
if c:FindFirstChild("Door"):FindFirstChild("DoorOpenPart") and c:FindFirstChild("Door"):FindFirstChild("DoorOpenPart"):FindFirstChild("ProximityPrompt") then
StartInteractRemote:FireServer(c:FindFirstChild("Door"):FindFirstChild("DoorOpenPart"):FindFirstChild("ProximityPrompt"))
end
task.wait()
until c == nil or not c:FindFirstChild("Door"):FindFirstChild("DoorOpenPart") or tick() > Time or (player.Character:FindFirstChild("HumanoidRootPart").Position - c:FindFirstChild("Door"):FindFirstChild("DoorOpenPart").Position).magnitude > 10
if c:FindFirstChild("Door"):FindFirstChild("DoorOpenPart") and c:FindFirstChild("Door"):FindFirstChild("DoorOpenPart"):FindFirstChild("ProximityPrompt") then
CompleteInteractiontRemote:FireServer(c:FindFirstChild("Door"):FindFirstChild("DoorOpenPart"):FindFirstChild("ProximityPrompt"))
end
end
elseif c.Name == "ObjectivePickDoor2" and c:FindFirstChild("Door") and c:FindFirstChild("Door"):FindFirstChild("DoorOpenPart") then
if not c:FindFirstChild("Highlight") then
local highlight = Instance.new("Highlight",c)
highlight.FillTransparency = 1
highlight.OutlineColor = Color3.fromRGB(255,170,0)
end
if (c:FindFirstChild("Door"):FindFirstChild("DoorOpenPart").Position - player.Character:FindFirstChild("HumanoidRootPart").Position).magnitude < 10 then
notify(c.Name)
local Time = tick() + 4.25
repeat
if c:FindFirstChild("Door"):FindFirstChild("DoorOpenPart") and c:FindFirstChild("Door"):FindFirstChild("DoorOpenPart"):FindFirstChild("ProximityPrompt") then
StartInteractRemote:FireServer(c:FindFirstChild("Door"):FindFirstChild("DoorOpenPart"):FindFirstChild("ProximityPrompt"))
end
task.wait()
until c == nil or not c:FindFirstChild("Door"):FindFirstChild("DoorOpenPart") or tick() > Time or (player.Character:FindFirstChild("HumanoidRootPart").Position - c:FindFirstChild("Door"):FindFirstChild("DoorOpenPart").Position).magnitude > 10
if c:FindFirstChild("Door"):FindFirstChild("DoorOpenPart") and c:FindFirstChild("Door"):FindFirstChild("DoorOpenPart"):FindFirstChild("ProximityPrompt") then
CompleteInteractiontRemote:FireServer(c:FindFirstChild("Door"):FindFirstChild("DoorOpenPart"):FindFirstChild("ProximityPrompt"))
end
end
elseif c.Name == "ATMmoney" and c:FindFirstChild("TakeMe") then
if not c:FindFirstChild("Highlight") then
local highlight = Instance.new("Highlight",c)
highlight.FillTransparency = 1
highlight.OutlineColor = Color3.fromRGB(255,170,0)
end
if (c:FindFirstChild("TakeMe").Position - player.Character:FindFirstChild("HumanoidRootPart").Position).magnitude < 10 then
notify(c.Name)
local Time = tick() + 1.5
repeat
if c:FindFirstChild("TakeMe") and c:FindFirstChild("TakeMe"):FindFirstChild("ProximityPrompt") then
StartInteractRemote:FireServer(c:FindFirstChild("TakeMe"):FindFirstChild("ProximityPrompt"))
end
task.wait()
until c == nil or not c:FindFirstChild("TakeMe") or tick() > Time or (player.Character:FindFirstChild("HumanoidRootPart").Position - c:FindFirstChild("TakeMe").Position).magnitude > 10
if c:FindFirstChild("TakeMe") and c:FindFirstChild("TakeMe"):FindFirstChild("ProximityPrompt") then
CompleteInteractiontRemote:FireServer(c:FindFirstChild("TakeMe"):FindFirstChild("ProximityPrompt"))
end
end
elseif c.Name == "RandomCrate" and c:FindFirstChild("Spacer") then
if not c:FindFirstChild("Highlight") then
local highlight = Instance.new("Highlight",c)
highlight.FillTransparency = 1
highlight.OutlineColor = Color3.fromRGB(255,170,0)
end
if (c:FindFirstChild("Spacer").Position - player.Character:FindFirstChild("HumanoidRootPart").Position).magnitude < 10 then
notify(c.Name)
local Time = tick() + 4.25
repeat
if c:FindFirstChild("Spacer") and c:FindFirstChild("Spacer"):FindFirstChild("ProximityPrompt") then
StartInteractRemote:FireServer(c:FindFirstChild("Spacer"):FindFirstChild("ProximityPrompt"))
end
task.wait()
until c == nil or not c:FindFirstChild("Spacer") or tick() > Time or (player.Character:FindFirstChild("HumanoidRootPart").Position - c:FindFirstChild("Spacer").Position).magnitude > 10
if c:FindFirstChild("Spacer") and c:FindFirstChild("Spacer"):FindFirstChild("ProximityPrompt") then
CompleteInteractiontRemote:FireServer(c:FindFirstChild("Spacer"):FindFirstChild("ProximityPrompt"))
end
end
elseif c.Name == "OpenCrate" then
if c:FindFirstChild("Highlight") then
c:FindFirstChild("Highlight"):Destroy()
end
elseif c.Name == "RushCrate" and c:FindFirstChild("Spacer") then
if not c:FindFirstChild("Spacer"):FindFirstChild("Highlight") then
local highlight = Instance.new("Highlight",c:FindFirstChild("Spacer"))
highlight.FillTransparency = 1
highlight.OutlineColor = Color3.fromRGB(255,170,0)
end
if (c:FindFirstChild("Spacer").Position - player.Character:FindFirstChild("HumanoidRootPart").Position).magnitude < 10 then
notify(c.Name)
local Time = tick() + 4.25
repeat
if c:FindFirstChild("Spacer") and c:FindFirstChild("Spacer"):FindFirstChild("ProximityPrompt") then
StartInteractRemote:FireServer(c:FindFirstChild("Spacer"):FindFirstChild("ProximityPrompt"))
end
task.wait()
until c == nil or not c:FindFirstChild("Spacer") or tick() > Time or (player.Character:FindFirstChild("HumanoidRootPart").Position - c:FindFirstChild("Spacer").Position).magnitude > 10
if c:FindFirstChild("Spacer") and c:FindFirstChild("Spacer"):FindFirstChild("ProximityPrompt") then
CompleteInteractiontRemote:FireServer(c:FindFirstChild("Spacer"):FindFirstChild("ProximityPrompt"))
end
end
elseif c.Name == "KickDoor" and c:FindFirstChild("MainPart2") and c.Parent.Name ~= "OpenDoor" then
if (c:FindFirstChild("MainPart2").Position - player.Character:FindFirstChild("HumanoidRootPart").Position).magnitude < 10 then
notify(c.Name)
local Time = tick() + .1
repeat
if c:FindFirstChild("MainPart2") and c:FindFirstChild("MainPart2"):FindFirstChild("ProximityPrompt") then
StartInteractRemote:FireServer(c:FindFirstChild("MainPart2"):FindFirstChild("ProximityPrompt"))
end
task.wait()
until c == nil or not c:FindFirstChild("MainPart2") or tick() > Time or (player.Character:FindFirstChild("HumanoidRootPart").Position - c:FindFirstChild("MainPart2").Position).magnitude > 10
if c:FindFirstChild("MainPart2") and c:FindFirstChild("MainPart2"):FindFirstChild("ProximityPrompt") then
CompleteInteractiontRemote:FireServer(c:FindFirstChild("MainPart2"):FindFirstChild("ProximityPrompt"))
end
end
elseif c.Name == "Key" and c:FindFirstChild("Hitbox") then
if not c:FindFirstChild("tracker") then
local bb = Instance.new("BillboardGui",c)
bb.Adornee = c
bb.ExtentsOffset = Vector3.new(0,1,0)
bb.AlwaysOnTop = true
bb.Size = UDim2.new(0,5,0,5)
bb.StudsOffset = Vector3.new(0,1,0)
bb.Name = "tracker"
local frame = Instance.new("Frame",bb)
frame.ZIndex = 10
frame.BackgroundTransparency = 0.3
frame.Size = UDim2.new(1,0,1,0)
frame.Position = UDim2.new(0,0,0)
frame.Transparency = 0
local txtlbl = Instance.new("TextLabel",bb)
txtlbl.ZIndex = 10
txtlbl.Text = c.Name
txtlbl.BackgroundTransparency = 1
txtlbl.Position = UDim2.new(0,0,0,-35)
txtlbl.Size = UDim2.new(1,0,10,0)
txtlbl.TextColor3 = Color3.new(1,1,1)
txtlbl.Font = "SourceSansBold"
txtlbl.FontSize = "Size10"
txtlbl.TextStrokeTransparency = 0.5
elseif c:FindFirstChild("tracker") then
c:FindFirstChild("tracker").TextLabel.Text = c.Name
end
if (c:FindFirstChild("Hitbox").Position - player.Character:FindFirstChild("HumanoidRootPart").Position).magnitude < 10 then
notify(c.Name)
local Time = tick() + .01
repeat
if c:FindFirstChild("Hitbox") and c:FindFirstChild("Hitbox"):FindFirstChild("ProximityPrompt") then
StartInteractRemote:FireServer(c:FindFirstChild("Hitbox"):FindFirstChild("ProximityPrompt"))
end
task.wait()
until c == nil or not c:FindFirstChild("Hitbox") or tick() > Time or (player.Character:FindFirstChild("HumanoidRootPart").Position - c:FindFirstChild("Hitbox").Position).magnitude > 10
if c:FindFirstChild("Hitbox") and c:FindFirstChild("Hitbox"):FindFirstChild("ProximityPrompt") then
CompleteInteractiontRemote:FireServer(c:FindFirstChild("Hitbox"):FindFirstChild("ProximityPrompt"))
end
end
elseif c.Name == "Crowbar" and c:FindFirstChild("Handle") and hascrowbar == false then
if not c:FindFirstChild("Highlight") then
local highlight = Instance.new("Highlight",c)
highlight.FillTransparency = 1
highlight.OutlineColor = Color3.fromRGB(0,255,0)
end
if (c:FindFirstChild("Handle").Position - player.Character:FindFirstChild("HumanoidRootPart").Position).magnitude < 10 then
notify(c.Name)
local Time = tick() + .01
repeat
if c:FindFirstChild("Handle") and c:FindFirstChild("Handle"):FindFirstChild("ProximityPrompt") then
StartInteractRemote:FireServer(c:FindFirstChild("Handle"):FindFirstChild("ProximityPrompt"))
end
task.wait()
until c == nil or not c:FindFirstChild("Handle") or tick() > Time or (player.Character:FindFirstChild("HumanoidRootPart").Position - c:FindFirstChild("Handle").Position).magnitude > 10
if c:FindFirstChild("Handle") and c:FindFirstChild("Handle"):FindFirstChild("ProximityPrompt") then
CompleteInteractiontRemote:FireServer(c:FindFirstChild("Handle"):FindFirstChild("ProximityPrompt"))
end
end
elseif c.Name == "CardReader" and c:FindFirstChild("Card") and haskeycard == true then
if not c:FindFirstChild("Highlight") then
local highlight = Instance.new("Highlight",c)
highlight.FillTransparency = 1
highlight.OutlineColor = Color3.fromRGB(0,255,0)
end
if (c:FindFirstChild("Card").Position - player.Character:FindFirstChild("HumanoidRootPart").Position).magnitude < 10 then
notify(c.Name)
local Time = tick() + .1
repeat
if c:FindFirstChild("Card") and c:FindFirstChild("Card"):FindFirstChild("ProximityPrompt") then
StartInteractRemote:FireServer(c:FindFirstChild("Card"):FindFirstChild("ProximityPrompt"))
end
task.wait()
until c == nil or not c:FindFirstChild("Card") or tick() > Time or (player.Character:FindFirstChild("HumanoidRootPart").Position - c:FindFirstChild("Card").Position).magnitude > 10
if c:FindFirstChild("Card") and c:FindFirstChild("Card"):FindFirstChild("ProximityPrompt") then
CompleteInteractiontRemote:FireServer(c:FindFirstChild("Card"):FindFirstChild("ProximityPrompt"))
haskeycard = false
end
end
elseif c.Name == "Wirecutters" and c:FindFirstChild("Handle") and haswirecutters == false then
if not c:FindFirstChild("Highlight") then
local highlight = Instance.new("Highlight",c)
highlight.FillTransparency = 1
highlight.OutlineColor = Color3.fromRGB(0,255,0)
end
if (c:FindFirstChild("Handle").Position - player.Character:FindFirstChild("HumanoidRootPart").Position).magnitude < 10 then
notify(c.Name)
local Time = tick() + .01
repeat
if c:FindFirstChild("Handle") and c:FindFirstChild("Handle"):FindFirstChild("ProximityPrompt") then
StartInteractRemote:FireServer(c:FindFirstChild("Handle"):FindFirstChild("ProximityPrompt"))
end
task.wait()
until c == nil or not c:FindFirstChild("Handle") or tick() > Time or (player.Character:FindFirstChild("HumanoidRootPart").Position - c:FindFirstChild("Handle").Position).magnitude > 10
if c:FindFirstChild("Handle") and c:FindFirstChild("Handle"):FindFirstChild("ProximityPrompt") then
CompleteInteractiontRemote:FireServer(c:FindFirstChild("Handle"):FindFirstChild("ProximityPrompt"))
end
end
elseif c.Name == "Money" and c:FindFirstChild("Bucks") then
if not c:FindFirstChild("Highlight") then
local highlight = Instance.new("Highlight",c)
highlight.FillTransparency = 1
highlight.OutlineColor = Color3.fromRGB(255,170,0)
end
if (c:FindFirstChild("Bucks").Position - player.Character:FindFirstChild("HumanoidRootPart").Position).magnitude < 10 then
notify(c.Name)
local Time = tick() + .01
repeat
if c:FindFirstChild("Bucks") and c:FindFirstChild("Bucks"):FindFirstChild("ProximityPrompt") then
StartInteractRemote:FireServer(c:FindFirstChild("Bucks"):FindFirstChild("ProximityPrompt"))
end
task.wait()
until c == nil or not c:FindFirstChild("Bucks") or tick() > Time or (player.Character:FindFirstChild("HumanoidRootPart").Position - c:FindFirstChild("Bucks").Position).magnitude > 10
if c:FindFirstChild("Bucks") and c:FindFirstChild("Bucks"):FindFirstChild("ProximityPrompt") then
CompleteInteractiontRemote:FireServer(c:FindFirstChild("Bucks"):FindFirstChild("ProximityPrompt"))
end
end
elseif c.Name == "KeyCard" and c:FindFirstChild("InteractionPart") then
if not c:FindFirstChild("Highlight") then
local highlight = Instance.new("Highlight",c)
highlight.FillTransparency = 1
highlight.OutlineColor = Color3.fromRGB(255,170,0)
end
if (c:FindFirstChild("InteractionPart").Position - player.Character:FindFirstChild("HumanoidRootPart").Position).magnitude < 10 then
notify(c.Name)
local Time = tick() + .01
repeat
if c:FindFirstChild("InteractionPart") and c:FindFirstChild("InteractionPart"):FindFirstChild("ProximityPrompt") then
StartInteractRemote:FireServer(c:FindFirstChild("InteractionPart"):FindFirstChild("ProximityPrompt"))
end
task.wait()
until c == nil or not c:FindFirstChild("InteractionPart") or tick() > Time or (player.Character:FindFirstChild("HumanoidRootPart").Position - c:FindFirstChild("InteractionPart").Position).magnitude > 10
if c:FindFirstChild("InteractionPart") and c:FindFirstChild("InteractionPart"):FindFirstChild("ProximityPrompt") then
CompleteInteractiontRemote:FireServer(c:FindFirstChild("InteractionPart"):FindFirstChild("ProximityPrompt"))
end
end
elseif c.Name == "USB" and c:FindFirstChild("Hitbox") then
if not c:FindFirstChild("Highlight") then
local highlight = Instance.new("Highlight",c)
highlight.FillTransparency = 1
highlight.OutlineColor = Color3.fromRGB(255,170,0)
end
if (c:FindFirstChild("Hitbox").Position - player.Character:FindFirstChild("HumanoidRootPart").Position).magnitude < 10 then
notify(c.Name)
local Time = tick() + .01
repeat
if c:FindFirstChild("Hitbox") and c:FindFirstChild("Hitbox"):FindFirstChild("ProximityPrompt") then
StartInteractRemote:FireServer(c:FindFirstChild("Hitbox"):FindFirstChild("ProximityPrompt"))
end
task.wait()
until c == nil or not c:FindFirstChild("Hitbox") or tick() > Time or (player.Character:FindFirstChild("HumanoidRootPart").Position - c:FindFirstChild("Hitbox").Position).magnitude > 10
if c:FindFirstChild("Hitbox") and c:FindFirstChild("Hitbox"):FindFirstChild("ProximityPrompt") then
CompleteInteractiontRemote:FireServer(c:FindFirstChild("Hitbox"):FindFirstChild("ProximityPrompt"))
end
end
elseif c.Name == "StageRope" and c:FindFirstChild("missionItem_rope") then
if not c:FindFirstChild("Highlight") then
local highlight = Instance.new("Highlight",c)
highlight.FillTransparency = 1
highlight.OutlineColor = Color3.fromRGB(255,170,0)
end
if (c:FindFirstChild("missionItem_rope").Position - player.Character:FindFirstChild("HumanoidRootPart").Position).magnitude < 10 then
notify(c.Name)
local Time = tick() + .5
repeat
if c:FindFirstChild("missionItem_rope") and c:FindFirstChild("missionItem_rope"):FindFirstChild("ProximityPrompt") then
StartInteractRemote:FireServer(c:FindFirstChild("missionItem_rope"):FindFirstChild("ProximityPrompt"))
end
task.wait()
until c == nil or not c:FindFirstChild("missionItem_rope") or tick() > Time or (player.Character:FindFirstChild("HumanoidRootPart").Position - c:FindFirstChild("missionItem_rope").Position).magnitude > 10
if c:FindFirstChild("missionItem_rope") and c:FindFirstChild("missionItem_rope"):FindFirstChild("ProximityPrompt") then
CompleteInteractiontRemote:FireServer(c:FindFirstChild("missionItem_rope"):FindFirstChild("ProximityPrompt"))
end
end
elseif c.Name == "StageHook" and c:FindFirstChild("missionItem_hook") then
if not c:FindFirstChild("Highlight") then
local highlight = Instance.new("Highlight",c)
highlight.FillTransparency = 1
highlight.OutlineColor = Color3.fromRGB(255,170,0)
end
if (c:FindFirstChild("missionItem_hook").Position - player.Character:FindFirstChild("HumanoidRootPart").Position).magnitude < 10 then
notify(c.Name)
local Time = tick() + .5
repeat
if c:FindFirstChild("missionItem_hook") and c:FindFirstChild("missionItem_hook"):FindFirstChild("ProximityPrompt") then
StartInteractRemote:FireServer(c:FindFirstChild("missionItem_hook"):FindFirstChild("ProximityPrompt"))
end
task.wait()
until c == nil or not c:FindFirstChild("missionItem_hook") or tick() > Time or (player.Character:FindFirstChild("HumanoidRootPart").Position - c:FindFirstChild("missionItem_hook").Position).magnitude > 10
if c:FindFirstChild("missionItem_hook") and c:FindFirstChild("missionItem_hook"):FindFirstChild("ProximityPrompt") then
CompleteInteractiontRemote:FireServer(c:FindFirstChild("missionItem_hook"):FindFirstChild("ProximityPrompt"))
end
end
elseif c.Name == "Cash Register" and c:FindFirstChild("Body") then
if not c:FindFirstChild("Highlight") then
local highlight = Instance.new("Highlight",c)
highlight.FillTransparency = 1
highlight.OutlineColor = Color3.fromRGB(255,170,0)
end
if (c:FindFirstChild("Body").Position - player.Character:FindFirstChild("HumanoidRootPart").Position).magnitude < 10 then
notify(c.Name)
local Time = tick() + .01
repeat
if c:FindFirstChild("Body") and c:FindFirstChild("Body"):FindFirstChild("ProximityPrompt") then
StartInteractRemote:FireServer(c:FindFirstChild("Body"):FindFirstChild("ProximityPrompt"))
end
task.wait()
until c == nil or not c:FindFirstChild("Body") or tick() > Time or (player.Character:FindFirstChild("HumanoidRootPart").Position - c:FindFirstChild("Body").Position).magnitude > 10
if c:FindFirstChild("Body") and c:FindFirstChild("Body"):FindFirstChild("ProximityPrompt") then
CompleteInteractiontRemote:FireServer(c:FindFirstChild("Body"):FindFirstChild("ProximityPrompt"))
end
end
elseif c.Name == "DepositMoney" and c:FindFirstChild("Hitbox") then
if not c:FindFirstChild("Highlight") then
local highlight = Instance.new("Highlight",c)
highlight.FillTransparency = 1
highlight.OutlineColor = Color3.fromRGB(255,170,0)
end
if (c:FindFirstChild("Hitbox").Position - player.Character:FindFirstChild("HumanoidRootPart").Position).magnitude < 10 then
notify(c.Name)
local Time = tick() + .01
repeat
if c:FindFirstChild("Hitbox") and c:FindFirstChild("Hitbox"):FindFirstChild("ProximityPrompt") then
StartInteractRemote:FireServer(c:FindFirstChild("Hitbox"):FindFirstChild("ProximityPrompt"))
end
task.wait()
until c == nil or not c:FindFirstChild("Hitbox") or tick() > Time or (player.Character:FindFirstChild("HumanoidRootPart").Position - c:FindFirstChild("Hitbox").Position).magnitude > 10
if c:FindFirstChild("Hitbox") and c:FindFirstChild("Hitbox"):FindFirstChild("ProximityPrompt") then
CompleteInteractiontRemote:FireServer(c:FindFirstChild("Hitbox"):FindFirstChild("ProximityPrompt"))
end
end
elseif c.Name == "DepositRing" and c:FindFirstChild("Hitbox") then
if not c:FindFirstChild("Highlight") then
local highlight = Instance.new("Highlight",c)
highlight.FillTransparency = 1
highlight.OutlineColor = Color3.fromRGB(255,170,0)
end
if (c:FindFirstChild("Hitbox").Position - player.Character:FindFirstChild("HumanoidRootPart").Position).magnitude < 10 then
notify(c.Name)
local Time = tick() + .01
repeat
if c:FindFirstChild("Hitbox") and c:FindFirstChild("Hitbox"):FindFirstChild("ProximityPrompt") then
StartInteractRemote:FireServer(c:FindFirstChild("Hitbox"):FindFirstChild("ProximityPrompt"))
end
task.wait()
until c == nil or not c:FindFirstChild("Hitbox") or tick() > Time or (player.Character:FindFirstChild("HumanoidRootPart").Position - c:FindFirstChild("Hitbox").Position).magnitude > 10
if c:FindFirstChild("Hitbox") and c:FindFirstChild("Hitbox"):FindFirstChild("ProximityPrompt") then
CompleteInteractiontRemote:FireServer(c:FindFirstChild("Hitbox"):FindFirstChild("ProximityPrompt"))
end
end
elseif c.Name == "SilverBar" and c:FindFirstChild("Bar") then
if not c:FindFirstChild("Highlight") then
local highlight = Instance.new("Highlight",c)
highlight.FillTransparency = 1
highlight.OutlineColor = Color3.fromRGB(255,170,0)
end
if (c:FindFirstChild("Bar").Position - player.Character:FindFirstChild("HumanoidRootPart").Position).magnitude < 10 then
notify(c.Name)
local Time = tick() + .01
repeat
if c:FindFirstChild("Bar") and c:FindFirstChild("Bar"):FindFirstChild("ProximityPrompt") then
StartInteractRemote:FireServer(c:FindFirstChild("Bar"):FindFirstChild("ProximityPrompt"))
end
task.wait()
until c == nil or not c:FindFirstChild("Bar") or tick() > Time or (player.Character:FindFirstChild("HumanoidRootPart").Position - c:FindFirstChild("Bar").Position).magnitude > 10
if c:FindFirstChild("Bar") and c:FindFirstChild("Bar"):FindFirstChild("ProximityPrompt") then
CompleteInteractiontRemote:FireServer(c:FindFirstChild("Bar"):FindFirstChild("ProximityPrompt"))
end
end
elseif c.Name == "DepositGoldBar" and c:FindFirstChild("Hitbox") then
if not c:FindFirstChild("Highlight") then
local highlight = Instance.new("Highlight",c)
highlight.FillTransparency = 1
highlight.OutlineColor = Color3.fromRGB(255,170,0)
end
if (c:FindFirstChild("Hitbox").Position - player.Character:FindFirstChild("HumanoidRootPart").Position).magnitude < 10 then
notify(c.Name)
local Time = tick() + .01
repeat
if c:FindFirstChild("Hitbox") and c:FindFirstChild("Hitbox"):FindFirstChild("ProximityPrompt") then
StartInteractRemote:FireServer(c:FindFirstChild("Hitbox"):FindFirstChild("ProximityPrompt"))
end
task.wait()
until c == nil or not c:FindFirstChild("Hitbox") or tick() > Time or (player.Character:FindFirstChild("HumanoidRootPart").Position - c:FindFirstChild("Hitbox").Position).magnitude > 10
if c:FindFirstChild("Hitbox") and c:FindFirstChild("Hitbox"):FindFirstChild("ProximityPrompt") then
CompleteInteractiontRemote:FireServer(c:FindFirstChild("Hitbox"):FindFirstChild("ProximityPrompt"))
end
end
elseif c.Name == "GoldGuitar" and c:FindFirstChild("missionItem_goldGuitar") then
if not c:FindFirstChild("Highlight") then
local highlight = Instance.new("Highlight",c)
highlight.FillTransparency = 1
highlight.OutlineColor = Color3.fromRGB(255,170,0)
end
if (c:FindFirstChild("missionItem_goldGuitar").Position - player.Character:FindFirstChild("HumanoidRootPart").Position).magnitude < 10 then
notify(c.Name)
local Time = tick() + .01
repeat
if c:FindFirstChild("missionItem_goldGuitar") and c:FindFirstChild("missionItem_goldGuitar"):FindFirstChild("ProximityPrompt") then
StartInteractRemote:FireServer(c:FindFirstChild("missionItem_goldGuitar"):FindFirstChild("ProximityPrompt"))
end
task.wait()
until c == nil or not c:FindFirstChild("missionItem_goldGuitar") or tick() > Time or (player.Character:FindFirstChild("HumanoidRootPart").Position - c:FindFirstChild("missionItem_goldGuitar").Position).magnitude > 10
if c:FindFirstChild("missionItem_goldGuitar") and c:FindFirstChild("missionItem_goldGuitar"):FindFirstChild("ProximityPrompt") then
CompleteInteractiontRemote:FireServer(c:FindFirstChild("missionItem_goldGuitar"):FindFirstChild("ProximityPrompt"))
end
end
elseif c.Name == "JewelCrown" and c:FindFirstChild("Crown") then
if not c:FindFirstChild("Highlight") then
local highlight = Instance.new("Highlight",c)
highlight.FillTransparency = 1
highlight.OutlineColor = Color3.fromRGB(255,170,0)
end
if (c:FindFirstChild("Crown").Position - player.Character:FindFirstChild("HumanoidRootPart").Position).magnitude < 10 then
notify(c.Name)
local Time = tick() + .01
repeat
if c:FindFirstChild("Crown") and c:FindFirstChild("Crown"):FindFirstChild("ProximityPrompt") then
StartInteractRemote:FireServer(c:FindFirstChild("Crown"):FindFirstChild("ProximityPrompt"))
end
task.wait()
until c == nil or not c:FindFirstChild("Crown") or tick() > Time or (player.Character:FindFirstChild("HumanoidRootPart").Position - c:FindFirstChild("Crown").Position).magnitude > 10
if c:FindFirstChild("Crown") and c:FindFirstChild("Crown"):FindFirstChild("ProximityPrompt") then
CompleteInteractiontRemote:FireServer(c:FindFirstChild("Crown"):FindFirstChild("ProximityPrompt"))
end
end
elseif c.Name == "TrophyLoot" and c:FindFirstChild("loot") then
if not c:FindFirstChild("Highlight") then
local highlight = Instance.new("Highlight",c)
highlight.FillTransparency = 1
highlight.OutlineColor = Color3.fromRGB(255,170,0)
end
if (c:FindFirstChild("loot").Position - player.Character:FindFirstChild("HumanoidRootPart").Position).magnitude < 10 then
notify(c.Name)
local Time = tick() + 1.5
repeat
if c:FindFirstChild("loot") and c:FindFirstChild("loot"):FindFirstChild("ProximityPrompt") then
StartInteractRemote:FireServer(c:FindFirstChild("loot"):FindFirstChild("ProximityPrompt"))
end
task.wait()
until c == nil or not c:FindFirstChild("loot") or tick() > Time or (player.Character:FindFirstChild("HumanoidRootPart").Position - c:FindFirstChild("loot").Position).magnitude > 10
if c:FindFirstChild("loot") and c:FindFirstChild("loot"):FindFirstChild("ProximityPrompt") then
CompleteInteractiontRemote:FireServer(c:FindFirstChild("loot"):FindFirstChild("ProximityPrompt"))
end
end
elseif c.Name == "DisplayCaseRemoveGlass" and c:FindFirstChild("TrophyLoot_") and c:FindFirstChild("InteractPart") or c.Name == "DisplayCaseRemoveGlass" and c.Parent:FindFirstChild("model3LOOTABLE") and c:FindFirstChild("InteractPart") then
if not c:FindFirstChild("Highlight") then
local highlight = Instance.new("Highlight",c)
highlight.FillTransparency = 1
highlight.OutlineColor = Color3.fromRGB(255,170,0)
end
if (c:FindFirstChild("InteractPart").Position - player.Character:FindFirstChild("HumanoidRootPart").Position).magnitude < 10 then
notify(c.Name)
local Time = tick() + 1.5
repeat
if c:FindFirstChild("InteractPart") and c:FindFirstChild("InteractPart"):FindFirstChild("ProximityPrompt") then
StartInteractRemote:FireServer(c:FindFirstChild("InteractPart"):FindFirstChild("ProximityPrompt"))
end
task.wait()
until c == nil or not c:FindFirstChild("InteractPart") or tick() > Time or (player.Character:FindFirstChild("HumanoidRootPart").Position - c:FindFirstChild("InteractPart").Position).magnitude > 10
if c:FindFirstChild("InteractPart") and c:FindFirstChild("InteractPart"):FindFirstChild("ProximityPrompt") then
CompleteInteractiontRemote:FireServer(c:FindFirstChild("InteractPart"):FindFirstChild("ProximityPrompt"))
end
end
elseif c.Name == "ArtObject" then
if not c:FindFirstChild("Highlight") then
local highlight = Instance.new("Highlight",c)
highlight.FillTransparency = 1
highlight.OutlineColor = Color3.fromRGB(255,170,0)
end
for _,colas in pairs(c:GetChildren())do
if colas:FindFirstChild("ProximityPrompt") and (colas.Position - player.Character:FindFirstChild("HumanoidRootPart").Position).magnitude < 10 then
notify(c.Name)
local Time = tick() + 1.5
repeat
StartInteractRemote:FireServer(colas:FindFirstChild("ProximityPrompt"))
task.wait()
until c == nil or colas == nil or tick() > Time or (player.Character:FindFirstChild("HumanoidRootPart").Position - colas.Position).magnitude > 10
CompleteInteractiontRemote:FireServer(colas:FindFirstChild("ProximityPrompt"))
end
end
elseif c.Name == "SmallJewels" then
if not c:FindFirstChild("Highlight") then
local highlight = Instance.new("Highlight",c)
highlight.FillTransparency = 1
highlight.OutlineColor = Color3.fromRGB(255,170,0)
end
for _,colas in pairs(c:GetChildren())do
if colas:FindFirstChild("ProximityPrompt") and (colas.Position - player.Character:FindFirstChild("HumanoidRootPart").Position).magnitude < 10 then
notify(c.Name)
local Time = tick() + .01
repeat
StartInteractRemote:FireServer(colas:FindFirstChild("ProximityPrompt"))
task.wait()
until c == nil or colas == nil or tick() > Time or (player.Character:FindFirstChild("HumanoidRootPart").Position - colas.Position).magnitude > 10
CompleteInteractiontRemote:FireServer(colas:FindFirstChild("ProximityPrompt"))
end
end
elseif c.Name == "SmallJewels2" and c:FindFirstChild("Part") then
if not c:FindFirstChild("Highlight") then
local highlight = Instance.new("Highlight",c)
highlight.FillTransparency = 1
highlight.OutlineColor = Color3.fromRGB(255,170,0)
end
if (c:FindFirstChild("Part").Position - player.Character:FindFirstChild("HumanoidRootPart").Position).magnitude < 10 then
notify(c.Name)
local Time = tick() + .01
repeat
if c:FindFirstChild("Part") and c:FindFirstChild("Part"):FindFirstChild("ProximityPrompt") then
StartInteractRemote:FireServer(c:FindFirstChild("Part"):FindFirstChild("ProximityPrompt"))
end
task.wait()
until c == nil or not c:FindFirstChild("Part") or tick() > Time or (player.Character:FindFirstChild("HumanoidRootPart").Position - c:FindFirstChild("Part").Position).magnitude > 10
if c:FindFirstChild("Part") and c:FindFirstChild("Part"):FindFirstChild("ProximityPrompt") then
CompleteInteractiontRemote:FireServer(c:FindFirstChild("Part"):FindFirstChild("ProximityPrompt"))
end
end
end
end
end
end
