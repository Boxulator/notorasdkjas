if string.match(game.GameId, "16680835") and not string.match(game.PlaceId, "21532277") then
repeat task.wait() until game.Players.LocalPlayer
local player = game.Players.LocalPlayer
local u = game:GetService("UserInputService")
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
local cops = false
local civs = false
local throwbags = false
s = Instance.new("ScreenGui", game.CoreGui)
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
pgr8.Text="Godmode"
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
pgr8.Visible = false
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
local Humanoid = player.Character:FindFirstChildOfClass("Humanoid")
local Head = player.Character:FindFirstChild("Head")
if Humanoid then
DamageRemote:FireServer("Damage", player.Backpack:FindFirstChildOfClass("Tool"), Humanoid, -1000, Head, player.Backpack:FindFirstChildOfClass("Tool").Name, Vector3.new())
end
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
if objname == "RandomCrate" or objname == "RushCrate" or objname == "MilitaryCrateUNTIMED" or objname == "MiniSafe" or objname == "DisplayCaseRemoveGlass" then
game.StarterGui:SetCore("SendNotification", {Title = "AutoOpen";Text = "Opening up "..objname.."...";Duration = "4";})
elseif objname == "MilitaryCrateTIMED" then
game.StarterGui:SetCore("SendNotification", {Title = "AutoDefuse";Text = "Defusing "..objname.."...";Duration = "4";})
elseif objname == "CardReader" then
game.StarterGui:SetCore("SendNotification", {Title = "AutoCardReader";Text = "Inserting KeyCard...";Duration = "4";})
else
game.StarterGui:SetCore("SendNotification", {Title = "AutoLoot";Text = "Picking up "..objname.."...";Duration = "4";})
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
"KeyCard",
"Key",
"CardReader",
"LootDrill"}

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

Enable()

while task.wait() do
if player.Character and player.Character:FindFirstChild("Stamina") then
player.Character:FindFirstChild("Stamina").Value = 1000
end

if player.Character and player.Character:FindFirstChild("BagSpeed") then
player.Character:FindFirstChild("BagSpeed").Value = 1
end

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
local Time = tick() + 15
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
end
end
end
end