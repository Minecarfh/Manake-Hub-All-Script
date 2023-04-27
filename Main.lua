
function TextUpGame(Str,Mode)
	for i,v in pairs(game.Players.LocalPlayer.PlayerGui.Notifications:GetChildren()) do
		v:Destroy()
	end
	wait()
	require(game:GetService("ReplicatedStorage").Notification).new(tostring(Str)):Display();
	if Mode == nil then
	elseif  Mode == "YM" then
		game.Players.LocalPlayer.PlayerGui.Notifications.NotificationTemplate.TextColor3 = Color3.new(0.890196, 1, 0.494118)
	elseif  Mode == "GM" then
		game.Players.LocalPlayer.PlayerGui.Notifications.NotificationTemplate.TextColor3 = Color3.new(0.403922, 1, 0.454902)
	elseif  Mode == "LM" then
		game.Players.LocalPlayer.PlayerGui.Notifications.NotificationTemplate.TextColor3 = Color3.new(1, 1, 1)
	elseif  Mode == "PM" then
		game.Players.LocalPlayer.PlayerGui.Notifications.NotificationTemplate.TextColor3 = Color3.new(0.686275, 0.580392, 1)
	elseif  Mode == "RM" then
		game.Players.LocalPlayer.PlayerGui.Notifications.NotificationTemplate.TextColor3 = Color3.new(1, 0.439216, 0.607843)
	end
end

TextUpGame("Manake Hub Loading Ui","PM")
Old_World = false;
New_World = false;
Three_World = false;
local v9 = game.PlaceId;
if (v9 == 2753915549) then
	Old_World = true;
elseif (v9 == 4442272183) then
	New_World = true;
elseif (v9 == 7449423635) then
	Three_World = true;
end
local UserInputService = game:GetService("UserInputService")
local v10 = game.Players.LocalPlayer:GetMouse();
local Nameplayer = game.Players.LocalPlayer.Name
local v11 = game.GetService(game, "GuiService");
local v12 = game.GetService(game, "Players");
local v13 = v12.LocalPlayer;
local v14 = game.GetService(game, "Workspace").CurrentCamera;
local Players = game:GetService("Players"):GetChildren()
local localPlayer = game.Players.LocalPlayer
local camera = game:GetService("Workspace").CurrentCamera
local CurrentCamera = game.Workspace.CurrentCamera
local c = workspace.CurrentCamera
local ps = game:GetService("Players")
local lp = ps.LocalPlayer
local rs = game:GetService("RunService")

if game:GetService("Players").LocalPlayer.PlayerGui.Main:FindFirstChild("ChooseTeam") then
	repeat
		wait();
		if (game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("Main").ChooseTeam.Visible == true) then
			for v731, v732 in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Pirates.Frame.ViewportFrame.TextButton.Activated)) do
				v732.Function();
			end
		end
	until (game.Players.LocalPlayer.Team ~= nil) and game:IsLoaded() 
end


local library = loadstring(game:HttpGet("https://pastebin.com/raw/3Qh312pu"))()
local Wait = library.subs.Wait 


local PepsisWorld = library:CreateWindow({
	Name = "Manake Hub",
	Themeable = {Info = "Discord Server: BBzNaKxTNw"}
})

-- { Tap }

local GeneralTab = PepsisWorld:CreateTab({
	Name = "General"
})

local PlayerTap = PepsisWorld:CreateTab({
	Name = "Player"
})

local RaidsTap = PepsisWorld:CreateTab({
	Name = "Raids"
})

local Item_Shop = PepsisWorld:CreateTab({
	Name = "Misc"
})

-- { Tap }

---- Zone Local
local plr = game.Players.LocalPlayer
local CbFw = getupvalues(require(plr.PlayerScripts.CombatFramework))
local CbFw2 = CbFw[2]
local v10 = game.Players.LocalPlayer:GetMouse();
local Nameplayer = game.Players.LocalPlayer.Name
local v11 = game.GetService(game, "GuiService");
local v12 = game.GetService(game, "Players");
local v14 = game.GetService(game, "Workspace").CurrentCamera;
_G.PlayerName = game.Players.LocalPlayer.Name

function CheckNowIsland()
	_G.NowIsalnd = tostring(game:GetService("Players")[_G.PlayerName].Data.LastSpawnPoint.Value)
end
local v9 = game.PlaceId;
if (v9 == 2753915549) then
	Old_World = true;
elseif (v9 == 4442272183) then
	New_World = true;
elseif (v9 == 7449423635) then
	Three_World = true;
end
_G.SetJump = 0
_G.AutoFarm = false
_G.AutoSecond_Sea = false
_G.AutoThird_Sea = false
_G.AutoFarmSky = false
_G.Select_Mode_Farm = ""
_G.Auto_Farm_Candy = false
_G.Auto_Farm_Candy = false
_G.Auto_Farm_Bones = false
_G.Auto_Farm_Ectoplasm = false
_G.Auto_Farm_FishTail = false
_G.Auto_Farm_Dragon_Scale = false
_G.Auto_Farm_Cocoa =false
_G.Cooldown_Attach = false
_G.Auto_Farm_Dark_Fregment = false
_G.Auto_Farm_Leather = false
_G.ChackPlayer = false
_G.ChckMon = false
_G.Auto_Farm_Scrap_Metal = false
_G.Auto_Farm_Angel_Wings = false
_G.Auto_Farm_Yeti_Fur = false
_G.Auto_Farm_Radioactive_Material = false
_G.Auto_Farm_Mystic_Droplet = false
_G.Auto_Farm_Mini_Tusk = false
_G.Auto_Farm_Gunpowder = false
_G.Auto_Farm_Demonic_Wisp = false
_G.Auto_Farm_Vampire_Fang = false
_G.Auto_Superhuman  = false
_G.Auto_Death_Step = false
_G.Auto_Electric_Claw = false
_G.Auto_Sharkman_Karate = false
_G.Auto_Dragon_Talon = false
_G.Auto_Godhuman = false
_G.Auto_Cake_rince = false
_G.Select_Boss = false
_G.Auto_Farm_indra =false
_G.Auto_Farm_Boss = false
_G.Auto_Farm_Boss_Hop_Server  = false
_G.Auto_Farm_Position = false
_G.Auto_Elite_Hunte = false
_G.Auto_Elite_Hunte_Hop = false
_G.Auto_Farm_Bones = false
_G.Auto_Hoolow_Scythe = false
_G.Auto_Random_Surprise = false
_G.Auto_Hop_Server_FullMoon = false
_G.Auto_Hop_Mirage_Island = false
_G.Auto_Mirage_Island = false
_G.Auto_Farm_V4 = false
_G.Auto_V4 = false
_G.WeapoMAA = nil
_G.FastAttack_select = nil
_G.AutoAttack_Select = nil
_G.Observation = false
_G.Observation_Hop = false
_G.Fast_Attach = false
_G.Auto_Attach = false
_G.Bypass_Tp = false
_G.Fast_Tween = false
_G.FarmRandomCFrame = false
_G.FarmCFrameUpdown = false
_G.Stop_Walk_Mon = false
_G.Disabled_Damage = false
_G.Custom_Level = false
_G.Bringmob = false
_G.CUTLEVEL = false
_G.CRC = false
_G.Auto_Buy_Armament_Color = false
_G.Farm_Chests = false
_G.Castle_Raid = false
_G.Castle_Raid = false
_G.Teleport_Island = false
_G.Teleport_Npc = false
_G.DistanceMon = false
_G.Select_Island = ""
_G.Select_Npc = ""

------------------- 

local FarmingSection = GeneralTab:CreateSection({
	Name = "Farming"
})

local Quest_Label = FarmingSection:AddLabel(" Quest : ???")
local Mon_Label = FarmingSection:AddLabel(" Mon : ???")
local Framing_Label = FarmingSection:AddLabel(" Farming : ???")

FarmingSection:AddDropdown({
	Name = "Select Mode Farm",
	Default = "Farm Level",
	List = {"Farm Level","Farm Materials","Auto Melee","Farm Mastery","Auto Item"},
	Value = "Farm Level",
	Flag = "Drop Select",
	Callback = function(V)
		_G.Select_Mode_Farm = V
	end
})

FarmingSection:AddToggle({
	Name = "Auto Farm",
	Flag = "AutoFarmLevel",
	Callback = function(Value)
		_G.AutoFarm = Value
		if _G.AutoFarm == false then
			v47(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame);
		else 
			DelQuest()
			CheckQuest();
			v47(CFrameQuest);
		end
	end
})

FarmingSection:AddToggle({
	Name = "Auto Second Sea ",
	Flag = "AutoSecond_Sea ",
	Callback = function(Value)
		_G.AutoSecond_Sea = Value
	end
})

FarmingSection:AddToggle({
	Name = "Auto Third Sea",
	Flag = "AutoThird_Sea",
	Callback = function(Value)
		_G.AutoThird_Sea = Value
	end
})

if Old_World then
	FarmingSection:AddToggle({
		Name = "Auto Farm Sky",
		Callback = function(Value)
			_G.AutoFarmSky = Value
		end
	})
end

FarmingSection:AddToggle({
	Name = "Auto Farm Factory",
	Flag = "Auto Farm Factory",
	Callback = function(Value)
		_G.Auto_Farm_Factory = Value
	end
})

FarmingSection:AddToggle({
	Name = "Hop Farm Factory",
	Flag = "Hop Farm Factory",
	Callback = function(Value)
		_G.Auto_Farm_Factory_Hop = Value
	end
})


local Materials = GeneralTab:CreateSection({
	Name = "Materials",
	Side = "left"
})



Materials:AddToggle({
	Name = " Auto Farm Bones ",
	Flag = " Auto Farm Bones ",
	Callback = function(Value)
		_G.Auto_Farm_Bones = Value
	end
})

Materials:AddToggle({
	Name = " Auto Farm Ectoplasm ",
	Flag = " Auto Farm Ectoplasm ",
	Callback = function(Value)
		_G.Auto_Farm_Ectoplasm = Value
	end
})


Materials:AddToggle({
	Name = " Auto Farm FishTail ",
	Flag = " Auto Farm FishTail ",
	Callback = function(Value)
		_G.Auto_Farm_FishTail = Value
	end
})

Materials:AddToggle({
	Name = " Auto Farm Dragon Scale ",
	Flag = " Auto Farm Dragon Scale ",
	Callback = function(Value)
		_G.Auto_Farm_Dragon_Scale = Value
	end
})

Materials:AddToggle({
	Name = " Auto Farm Cocoa ",
	Flag = " Auto Farm Cocoa ",
	Callback = function(Value)
		_G.Auto_Farm_Cocoa = Value
	end
})

Materials:AddToggle({
	Name = " Auto Farm Dark Fregment ",
	Flag = " Auto Farm Dark Fregment  ",
	Callback = function(Value)
		_G.Auto_Farm_Dark_Fregment = Value
	end
})

Materials:AddToggle({
	Name = " Auto Farm Leather ",
	Flag = " Auto Farm Leather  ",
	Callback = function(Value)
		_G.Auto_Farm_Leather = Value
	end
})


Materials:AddToggle({
	Name = " Auto Farm Scrap Metal ",
	Flag = " Auto Farm Scrap Metal  ",
	Callback = function(Value)
		_G.Auto_Farm_Scrap_Metal = Value
	end
})

Materials:AddToggle({
	Name = " Auto Farm Angel Wings ",
	Flag = " Auto Farm Angel Wings  ",
	Callback = function(Value)
		_G.Auto_Farm_Angel_Wings = Value
	end
})

local Materials = GeneralTab:CreateSection({
	Name = "Materials 2",
	Side = "left"
})

Materials:AddToggle({
	Name = " Auto Farm Yeti Fur ",
	Flag = " Auto Farm Yeti Fur  ",
	Callback = function(Value)
		_G.Auto_Farm_Yeti_Fur = Value
	end
})

Materials:AddToggle({
	Name = " Auto Farm Radioactive Material ",
	Flag = " Auto Farm Radioactive Material  ",
	Callback = function(Value)
		_G.Auto_Farm_Radioactive_Material = Value
	end
})

Materials:AddToggle({
	Name = " Auto Farm Mystic Droplet ",
	Flag = " Auto Farm Mystic Droplet  ",
	Callback = function(Value)
		_G.Auto_Farm_Mystic_Droplet = Value
	end
})

Materials:AddToggle({
	Name = " Auto Farm Mini Tusk ",
	Flag = " Auto Farm Mini Tusk  ",
	Callback = function(Value)
		_G.Auto_Farm_Mini_Tusk = Value
	end
})

Materials:AddToggle({
	Name = " Auto Farm Gunpowder ",
	Flag = " Auto Farm Gunpowder  ",
	Callback = function(Value)
		_G.Auto_Farm_Gunpowder = Value
	end
})

Materials:AddToggle({
	Name = " Auto Farm Demonic Wisp ",
	Flag = " Auto Farm Demonic Wisp  ",
	Callback = function(Value)
		_G.Auto_Farm_Demonic_Wisp = Value
	end
})

Materials:AddToggle({
	Name = " Auto Farm Vampire Fang ",
	Flag = " Auto Farm Vampire Fang  ",
	Callback = function(Value)
		_G.Auto_Farm_Vampire_Fang = Value
	end
})


Materials:AddToggle({
	Name = " Auto Farm Meteorite ",
	Flag = " Auto Farm Meteorite  ",
	Callback = function(Value)
		_G.Auto_Farm_Meteorite = Value
	end
})

local Auto_Farm_Mell = GeneralTab:CreateSection({
	Name = "Auto Melee",
	Side = "left"
})

Auto_Farm_Mell:AddToggle({
	Name = " Auto Superhuman ",
	Flag = " Auto Superhuman ",
	Callback = function(Value)
		_G.Auto_Superhuman = Value
	end
})

Auto_Farm_Mell:AddToggle({
	Name = " Auto Death Step ",
	Flag = " Auto Death Step ",
	Callback = function(Value)
		_G.Auto_Death_Step = Value
	end
})

Auto_Farm_Mell:AddToggle({
	Name = " Auto Electric Claw ",
	Flag = " Auto Electric Claw ",
	Callback = function(Value)
		_G.Auto_Electric_Claw = Value
	end
})

Auto_Farm_Mell:AddToggle({
	Name = " Auto Sharkman Karate",
	Flag = " Auto Sharkman Karate ",
	Callback = function(Value)
		_G.Auto_Sharkman_Karate = Value
	end
})

Auto_Farm_Mell:AddToggle({
	Name = " Auto Dragon Talon",
	Flag = " Auto Dragon Talon ",
	Callback = function(Value)
		_G.Auto_Dragon_Talon = Value
	end
})

Auto_Farm_Mell:AddToggle({
	Name = " Auto Godhuman",
	Flag = " Auto Godhuman ",
	Callback = function(Value)
		_G.Auto_Godhuman = Value
	end
})

local Cake_Prince = GeneralTab:CreateSection({
	Name = "Cake Prince",
	Side = "left"
})

local Killed_Label = Cake_Prince:AddLabel("{ Killed : ??? }")
local Portal_Label = Cake_Prince:AddLabel("{ Portal : ??? }")

Cake_Prince:AddToggle({
	Name = " Auto Cake Prince ",
	Flag = " Auto Cake Prince ",
	Callback = function(Value)
		_G.Auto_Cake_rince = Value
	end
})

local fARM_Boss = GeneralTab:CreateSection({
	Name = "Farm Boss",
	Side = "left"
})

local BossM = {}

if Old_World then
	SN = "World 1"
elseif Three_World then
	SN = "World 3"
elseif New_World then
	SN = "World 2"
else
	SN = "WTF ???"
end
local BossM = {}

for i, v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
	if string.find(v.Name, "Boss") then
		if v.Name == "Ice Admiral [Lv. 700] [Boss]" then
		else
			table.insert(BossM, v.Name)
		end
	end
end


local FBA = fARM_Boss:AddDropdown({
	Name = "Select Boss { "..SN.." }",
	List = BossM ,
	Flag = "Drop Select Boss",
	Callback = function(V)
		_G.Select_Boss = V
	end
})

fARM_Boss:AddToggle({
	Name = " Auto Farm Rip indra ",
	Flag = " Auto Farm indra ",
	Callback = function(Value)
		_G.Auto_Farm_indra = Value
	end
})

fARM_Boss:AddToggle({
	Name = " Auto Farm Boss ",
	Flag = " Auto Farm Boss ",
	Callback = function(Value)
		_G.Auto_Farm_Boss = Value
	end
})

fARM_Boss:AddToggle({
	Name = " Auto Farm Boss Hop Server",
	Flag = " Auto Farm Boss Server",
	Callback = function(Value)
		_G.Auto_Farm_Boss_Hop_Server = Value
	end
})
local BossM2 = {}
fARM_Boss:AddButton({
	Name = " Refresh Boss ",
	Callback = function()
		for i, v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
			if string.find(v.Name, "Boss") then
				if v.Name == "Ice Admiral [Lv. 700] [Boss]" then
				else
					table.insert(BossM2, v.Name)
					FBA:UpdateList(BossM2)
				end
			end
		end

	end
})


local AutoFarmPos = GeneralTab:CreateSection({
	Name = "Auto Farm Pos",
	Side = "left"
})

local Pos_Label = AutoFarmPos:AddLabel("{ Pos : ??? }")
_G.PosMon = nil

AutoFarmPos:AddToggle({
	Name = " Auto Farm Position ",
	Callback = function(Value)
		_G.Auto_Farm_Position = Value
	end
})

AutoFarmPos:AddButton({
	Name = "Set Pos Mon",
	Callback = function()
		Pos_Label:Set("{ Pos : "..tostring(game.Players.LocalPlayer.Character.HumanoidRootPart.Position).." }")
		_G.PosMon = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
	end
})

local Auto_Elite_Hunte = GeneralTab:CreateSection({
	Name = "Auto Elite Hunter",
	Side = "left"
})

local Status_Label_Elite = Auto_Elite_Hunte:AddLabel("{ Status : ??? }")
local Elite_Process_Label_Elite = Auto_Elite_Hunte:AddLabel("{ Elite Process : ??? }")

Auto_Elite_Hunte:AddToggle({
	Name = " Auto Elite Hunte ",
	Flag = " Auto_Elite_Hunte ",
	Callback = function(Value)
		_G.Auto_Elite_Hunte = Value
	end
})

Auto_Elite_Hunte:AddToggle({
	Name = " Auto Elite Hunte Hop ",
	Flag = " Auto_Elite_Hunte_Hop ",
	Callback = function(Value)
		_G.Auto_Elite_Hunte_Hop = Value
	end
})


local Auto_Farm_Bones = GeneralTab:CreateSection({
	Name = "Auto_Farm_Bones",
	Side = "left"
})

Auto_Farm_Bones:AddToggle({
	Name = " Auto Farm Bones ",
	Flag = " Auto Farm Bones ",
	Callback = function(Value)
		_G.Auto_Farm_Bones = Value
	end
})

Auto_Farm_Bones:AddToggle({
	Name = " Auto Hoolow Scythe ",
	Flag = " Auto Hoolow Scythe ",
	Callback = function(Value)
		_G.Auto_Hoolow_Scythe = Value
	end
})

Auto_Farm_Bones:AddToggle({
	Name = " Auto Random Surprise ",
	Flag = " Auto Random Surprise ",
	Callback = function(Value)
		_G.Auto_Random_Surprise = Value
	end
})

local Auto_Farm_V4 = GeneralTab:CreateSection({
	Name = "Full_Moon",
	Side = "left"
})

local Status_FullMoon = Auto_Farm_V4:AddLabel("{ FullMoon : 0/5 { 0/10 } }")
local Status_Time_FullMoon = Auto_Farm_V4:AddLabel("{ Moon 5/5 :  }")
local Status_Mirage_Island = Auto_Farm_V4:AddLabel("{ Mirage Island : Not Fuond }")


Auto_Farm_V4:AddToggle({
	Name = " Auto Hop Server FullMoon ",
	Flag = " Auto Hop Server FullMoon ",
	Callback = function(Value)
		_G.Auto_Hop_Server_FullMoon = Value
	end
})

Auto_Farm_V4:AddToggle({
	Name = " Auto Hop Mirage Island ",
	Flag = " Auto Hop Mirage Island ",
	Callback = function(Value)
		_G.Auto_Hop_Mirage_Island = Value
	end
})

Auto_Farm_V4:AddToggle({
	Name = " Auto Mirage Island ",
	Flag = " Auto Mirage Island ",
	Callback = function(Value)
		_G.Auto_Mirage_Island = Value
	end
})


Auto_Farm_V4:AddToggle({
	Name = " Auto Farm V4 ",
	Flag = " Auto Farm V4 ",
	Callback = function(Value)
		_G.Auto_Farm_V4 = Value
	end
})

Auto_Farm_V4:AddToggle({
	Name = " Auto V4 ",
	Flag = " Auto V4 ",
	Callback = function(Value)
		_G.Auto_V4 = Value
	end
})

local Auto_Item = GeneralTab:CreateSection({
	Name = "Auto_Item",
	Side = "left"
})

Auto_Item:AddToggle({
	Name = " Auto Bisento V2 ",
	Flag = " Auto Bisento V2  ",
	Callback = function(Value)
		_G.Auto_Bisento_V2  = Value
	end
})

Auto_Item:AddToggle({
	Name = " Auto Saber ",
	Flag = " Auto Saber ",
	Callback = function(Value)
		_G.Auto_Saber  = Value
	end
})

Auto_Item:AddToggle({
	Name = " Auto Polr 1st ",
	Flag = " Auto Bisento V2  ",
	Callback = function(Value)
		_G.Auto_Bisento_V2  = Value
	end
})

Auto_Item:AddToggle({
	Name = " Auto Trident ",
	Flag = "Auto Trident  ",
	Callback = function(Value)
		_G.Auto_Trident  = Value
	end
})

Auto_Item:AddToggle({
	Name = " Auto Shark Saw ",
	Flag = " Auto Shark Saw ",
	Callback = function(Value)
		_G.Auto_Shark_Saw  = Value
	end
})

Auto_Item:AddToggle({
	Name = " Auto Rengoku ",
	Flag = " Auto Shark Saw ",
	Callback = function(Value)
		_G.Auto_Shark_Saw  = Value
	end
})

Auto_Item:AddToggle({
	Name = " Auto Mindnight Bkade ",
	Flag = " Auto Mindnight Bkade ",
	Callback = function(Value)
		_G.Auto_Mindnight_Bkade  = Value
	end
})


Auto_Item:AddToggle({
	Name = " Auto Buddy ",
	Flag = " Auto Buddy  ",
	Callback = function(Value)
		_G.Auto_Buddy  = Value
	end
})

Auto_Item:AddToggle({
	Name = " Auto Valkyrie Helmet ",
	Flag = " AAuto Valkyrie Helmet  ",
	Callback = function(Value)
		_G.Auto_Valkyrie_Helmet  = Value
	end
})

Auto_Item:AddToggle({
	Name = " Auto Dark Dagger ",
	Flag = " Auto Dark Dagger  ",
	Callback = function(Value)
		_G.Auto_Dark_Dagger   = Value
	end
})

Auto_Item:AddToggle({
	Name = " Auto Serpent Bow ",
	Flag = " Auto Serpent Bow   ",
	Callback = function(Value)
		_G.Auto_Serpent_Bow    = Value
	end
})

Auto_Item:AddToggle({
	Name = " Auto Serpent Bow ",
	Flag = " Auto Serpent Bow   ",
	Callback = function(Value)
		_G.Auto_Serpent_Bow = Value
	end
})

Auto_Item:AddToggle({
	Name = " Auto Twin Hooks ",
	Flag = " Auto Twin Hooks   ",
	Callback = function(Value)
		_G.Auto_Twin_Hooks = Value
	end
})

Auto_Item:AddToggle({
	Name = " Auto Canvader ",
	Flag = " Auto Canvader   ",
	Callback = function(Value)
		_G.Auto_Canvader = Value
	end
})

Auto_Item:AddToggle({
	Name = " Hop Server ",
	Flag = " Hop Server ",
	Callback = function(Value)
		_G.Hop_Server_Item = Value
	end
})

local Setting_Farm = GeneralTab:CreateSection({
	Name = "Setting Farm",
	Side = "Right"
})

Setting_Farm:AddDropdown({
	Name = "Select Weapon",
	List = {"Sword","Melee","Fruit"},
	Value = "Melee",
	Flag = "Drop Select Weapon",
	Callback = function(V)
		_G.WeapoMAA = V
	end
})
_G.Fast_Delay = 0.2
Setting_Farm:AddDropdown({
	Name = "Select Fast Attack",
	List = {"Farm Mode","Very Slow","Slow","Fast","Super Fast { Careful }","Normal Super Fast"},
	Value = "Fast",
	Flag = "Drop Select Weapon",
	Callback = function(V)
		if V == "Slow" then
			_G.Fast_Delay = 0.05
		elseif V == "Very Slow" then
			_G.Fast_Delay = 0.1
		elseif V == "Fast" then
			_G.Fast_Delay = 0
		elseif V == "Super Fast { Careful }" then
			_G.Fast_Delay = -(math.huge^math.huge^math.huge)
		elseif V == "Farm Mode" then
			_G.Fast_Delay = 0.05
			_G.ChckMon_Player = true
			_G.Cooldown_Attach = true
			_G.Fast_Attach_Toggle = true
		end
	end
})

Setting_Farm:AddDropdown({
	Name = "Select Auto Attack",
	List = {"Auto Click { Normal }","Auto Click { Check Mon }","Auto Click { Check Player }"},
	Value = "Auto Click { Check Mon }",
	Flag = "Drop Select Weapon",
	Callback = function(V)
		if V == "Auto Click { Normal }" then
			_G.ChckMon_Player = true
		elseif V == "Auto Click { Check Mon }" then
			_G.ChckMon_Player = false
		elseif V == "Auto Click { Check Player }" then
			_G.ChckMon_Player = true
		end	
	end
})


local Auto_Farm_OBF = GeneralTab:CreateSection({
	Name = "Farm Observation",
	Side = "left"
})

local FarmOBF_STATS = Auto_Farm_OBF:AddLabel("{ Observation : ??? }")

Auto_Farm_OBF:AddToggle({
	Name = " Auto Farm Observation ",
	Flag = " Auto Farm Observation ",
	Callback = function(Value)
		_G.Observation = Value
		while Value do
			if Value then	
				local args = {
					[1] = "KenTalk",
					[2] = "Status"
				}

				local str = tostring(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args)))

				FarmOBF_STATS:Set("{ Observation : "..string.sub(str, 1,4).." }")
			end
		end
	end
})

Auto_Farm_OBF:AddToggle({
	Name = " Auto Farm Observation Hop ",
	Flag = " Auto Farm Observation Hop",
	Callback = function(Value)
		_G.Observation_Hop = Value
	end
})

local CheckmonA = Setting_Farm:AddLabel("{ Mon Around : ??? }")
local CheckPlayerA = Setting_Farm:AddLabel("{ Player Around : ??? }")

Setting_Farm:AddToggle({
	Name = " Fast Attach ",
	Flag = " Fast Attach",
	Callback = function(Value)
		_G.Fast_Attach_Toggle = Value
		local v470 = require(game.ReplicatedStorage.Util.CameraShaker);
		v470:Stop();
	end
})
Setting_Farm:AddToggle({
	Name = " Cooldown Attach ",
	Flag = " Cooldown Attach ",
	Callback = function(Value)
		_G.Cooldown_Attach = Value
	end
})

Setting_Farm:AddToggle({
	Name = " Bypass Tp ",
	Flag = " Bypass Tp ",
	Callback = function(Value)
		_G.Bypass_Tp = Value
	end
})

Setting_Farm:AddToggle({
	Name = " Fast Tween ",
	Flag = " Fast Tween ",
	Callback = function(Value)
		_G.Fast_Tween = Value
	end
})

Setting_Farm:AddToggle({
	Name = " Farm Random CFrame ",
	Flag = " Fast Tween ",
	Callback = function(Value)
		_G.FarmRandomCFrame = Value
	end
})

Setting_Farm:AddToggle({
	Name = " Farm CFrame Up Down",
	Flag = " Farm CFrame Up Down ",
	Callback = function(Value)
		_G.FarmCFrameUpdown = Value
	end
})


Setting_Farm:AddToggle({
	Name = " Stop Walk Mon ",
	Flag = " Stop Walk Mon ",
	Callback = function(Value)
		_G.Stop_Walk_Mon = Value
	end
})


Setting_Farm:AddToggle({
	Name = " Disabled Damage ",
	Flag = " Disabled Damage ",
	Callback = function(Value)
		_G.Disabled_Damage = Value
	end
})

Setting_Farm:AddToggle({
	Name = " Custom Level ",
	Flag = " Custom Level ",
	Callback = function(Value)
		_G.Custom_Level = Value
	end
})

Setting_Farm:AddToggle({
	Name = " Bringmob ",
	Flag = " Bringmob ",
	Callback = function(Value)
		_G.Bringmob = Value
	end
})

Setting_Farm:AddTextbox({
	Name = " Custom  Level ",
	Flag = "CLevel",
	Value = "2400",
	Callback = function(Value)
		_G.CUTLEVEL = Value
	end
})

Setting_Farm:AddSlider({
	Name = " Distance Mon -Y ",
	Flag = "Distance Mon",
	Value = 15,
	Min = 0,
	Max = 30,
	Textbox = true,
	Format = function(Value)
		_G.DistanceMon = Value
		return "{ Distance Mon : " .. tostring(Value) .. " Cm }"
	end
})

Setting_Farm:AddSlider({
	Name = " CoolDown Ramdom CFrame ",
	Flag = "CRC",
	Value = 0.5,
	Min = 0,
	Max = 5,
	Textbox = true,
	Format = function(Value)
		_G.CRC = Value
		return "{ Ramdom CFrame : " .. tostring(Value) .. " s }"
	end
})

Setting_Farm:AddSlider({
	Name = " CoolDown FastAttach ",
	Flag = "CRC",
	Value = 50,
	Min = 1,
	Max = 100,
	Textbox = true,
	Format = function(Value)
		_G.CFA = Value
		return "{ CoolDown Attach : " .. tostring(Value) .. " C }"
	end
})

Setting_Farm:AddButton({
	Name = " Bringmob To me ",
	Callback = function(Value)
		for v372, v373 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
			v373.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame;
		end
	end
})

function RedeemCodeB(Code)
	local args = {
		[1] = Code
	}

	game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer(unpack(args))
end

Setting_Farm:AddButton({
	Name = " Redeem All Code ",
	Callback = function(Value)
		RedeemCodeB("Sub2Fer999")
		RedeemCodeB("Enyu_is_Pro")
		RedeemCodeB("JCWK")
		RedeemCodeB("Starcodeheo")
		RedeemCodeB("fudd10_v2")
		RedeemCodeB("SUB2GAMERROBOT_EXP1")
		RedeemCodeB("Sub2NoobMaster123")
		RedeemCodeB("Sub2UncleKizaru")
		RedeemCodeB("Sub2Daigrock")
		RedeemCodeB("Axiore")
		RedeemCodeB("TantaiGaming")
		RedeemCodeB("StrawHatMaine")
		RedeemCodeB("Sub2OfficialNoobie")
		RedeemCodeB("TheGreatAce")
		RedeemCodeB("Sub2CaptainMaui")
		RedeemCodeB("DEVSCOOKING")
	end
})


local Auto_Stats = GeneralTab:CreateSection({
	Name = "Auto Stats",
	Side = "Right"
})

Auto_Stats:AddToggle({
	Name = " Auto Stats ",
	Flag = " Auto Stats ",
	Callback = function(Value)
		_G.Auto_Stats = Value
	end
})

Auto_Stats:AddSlider({
	Name = " Stats Up ",
	Flag = "CRC",
	Value = 1,
	Min = 1,
	Max = 100,
	Textbox = true,
	Format = function(Value)
		_G.StatsPoint = Value
		return "{ Stats Up : " .. tostring(Value) .. " Points }"
	end
})

Auto_Stats:AddToggle({
	Name = " Stats Melee ",
	Flag = " Stasts Melee ",
	Callback = function(Value)
		_G.Stasts_Melee = Value
	end
})

Auto_Stats:AddToggle({
	Name = " Stats Defense ",
	Flag = " Stats Defensee ",
	Callback = function(Value)
		_G.Stats_Defense = Value
	end
})

Auto_Stats:AddToggle({
	Name = " Stats Sword ",
	Flag = " Stats Sword ",
	Callback = function(Value)
		_G.Stats_Sword = Value
	end
})

Auto_Stats:AddToggle({
	Name = " Stats Gun ",
	Flag = " Stats Gun ",
	Callback = function(Value)
		_G.Stats_Gun = Value
	end
})

Auto_Stats:AddToggle({
	Name = " Stats Fruint ",
	Flag = " Stats Fruint ",
	Callback = function(Value)
		_G.Stats_Fruint = Value
	end
})


local Misc = GeneralTab:CreateSection({
	Name = "Misc",
	Side = "left"
})


Misc:AddToggle({
	Name = " Auto Buy Armament Color ",
	Flag = "Armament Color ",
	Callback = function(Value)
		_G.Auto_Buy_Armament_Color = Value
	end
})

Misc:AddToggle({
	Name = " Auto Farm Chests ",
	Flag = "Farm Chests ",
	Callback = function(Value)
		_G.Farm_Chests = Value
	end
})

Misc:AddToggle({
	Name = " Auto Castle Raid ",
	Flag = " Castle Raid ",
	Callback = function(Value)
		_G.Castle_Raid = Value
	end
})

Misc:AddToggle({
	Name = " Auto Training Dummy ",
	Flag = " Castle Raid ",
	Callback = function(Value)
		_G.Castle_Raid = Value
	end
})

Misc:AddButton({
	Name = "Place Torches Tusite",
	Callback = function()
		if Three_World then
			if not _G.NowIsalnd then
				TextUpGame("Go to Mansion","RM")
			else
				TextUpGame("Go to Torches","GM")
			end
		else
			TextUpGame("You Teleport to Three Sea","RM")
		end		
	end
})


local PlayerTap_S = PlayerTap:CreateSection({
	Name = "Teleport"
})

_G.NPC = {}
if Three_World then
	TISLAND = {"Castle on the Sea","Port Town","Hydra Island","Great Tree","Awakeing Room { Word 3 }","Floating Turtle","Mansion","Sea of Treats","Temple of Time","Cyborg Door","Mink Door","Fish Door","Ghoul Door","Human Door","Sky Door"};
elseif New_World then
	TISLAND = {"Forgotten IsLand","King Of Rose","Ice Castle","Cursed Ship","Awakeing Room { Word 2 }","Hot Land","Cold Land","Snow Moutain","Gravetard Island","Gravetard Island Mon","Factory","Cafe","Swan Room","Dark Arena"};
elseif Old_World then
	TISLAND = {"Marine Starter","Pirabe Starter","Whirl Pool","Jungle","Middle Town","Pirate Village","Desert","Fountain City","Prison","Frozen Village","Sky land 1","Sky land 2","Marine Fortress","Magma Village","Colosseum"};
end

for _, v in pairs(game.Workspace.NPCs:GetChildren()) do
	table.insert(_G.NPC, v.Name);
	task.spawn(function()
		while wait() do
			pcall(function()
				if _G.Teleport_Npc then
					if (v.Name == _G.Select_Npc) then
						v47(v.HumanoidRootPart.CFrame);
					end
				end
			end);
		end
	end);
end

PlayerTap_S:AddDropdown({
	Name = "Select Island",
	List = TISLAND,
	Flag = "Drop Select Islabd",
	Callback = function(V)
		TISLANDSele = V
	end
})

PlayerTap_S:AddDropdown({
	Name = "Select NPC",
	List = _G.NPC,
	Flag = "Drop Select Npc",
	Callback = function(V)
		_G.Select_Npc = V
	end
})

PlayerTap_S:AddToggle({
	Name = " Teleport To Island ",
	Flag = " TTL ",
	Callback = function(Value)
		_G.Teleport_Island = Value
	end
})

PlayerTap_S:AddToggle({
	Name = " Teleport Npc",
	Flag = " TN ",
	Callback = function(Value)
		_G.Teleport_Npc = Value
	end
})

PlayerTap_S:AddButton({
	Name = " Teleport Super Spectate On  ",
	Callback = function()
		game.Players.LocalPlayer.Character:MoveTo(game:GetService("Workspace").Characters[_G.Select_Player].HumanoidRootPart.Position)
	end
})

local PlayerTap_STP = PlayerTap:CreateSection({
	Name = " Players ",
	Side = "Right"
})
local PlayerNameNA = {}

for v302, v303 in pairs(game:GetService("Players"):GetChildren()) do
	table.insert(PlayerNameNA, v303.Name);
end

local PlayerDrop = PlayerTap_STP:AddDropdown({
	Name = "Select Player",
	List = PlayerNameNA,
	Callback = function(V)
		_G.Select_Player = V
	end
})

PlayerTap_STP:AddToggle({
	Name = " Spectate Player ",
	Callback = function(Value)
		_G.Teleport_Player = Value
	end
})

PlayerTap_STP:AddToggle({
	Name = " Teleport To Player ",
	Callback = function(Value)
		_G.Teleport_Player = Value
		if Value then
			Tpplayer = v47(game:GetService("Workspace").Characters[tostring(_G.SlectPlayer)].HumanoidRootPart.Position)
		else
			Tpplayer:Stop()
		end
	end
})


PlayerTap_STP:AddToggle({
	Name = " Super Spectate Player ",
	Callback = function(Value)
		_G.Super_Spectate = Value
		pcall(function ()
			if Value then
				local FakeSit = game:GetService("Workspace").Game:Clone()
				FakeSit.Parent = game.Workspace
				FakeSit.Name = "FakeSit"
				wait() game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").FakeSit.P1.CFrame wait(1)
				game.Players.LocalPlayer.Character:MoveTo(game:GetService("Workspace").Characters[_G.Select_Player].HumanoidRootPart.Position)
				game:GetService("Workspace").FakeSit.CamPart:Destroy()
				game:GetService("Workspace").FakeSit.Figs:Destroy()
				game:GetService("Workspace").FakeSit.Board:Destroy()
				game:GetService("Workspace").FakeSit.Turn:Destroy()
				game:GetService("Workspace").FakeSit.Figs:Destroy()
				game:GetService("Workspace").FakeSit.Players:Destroy()
				game:GetService("Workspace").FakeSit.TurnScript:Destroy()
				game:GetService("Workspace").FakeSit.CamPart:Destory()
				game:GetService("Workspace").FakeSit.FFEfx:Destroy()
				game:GetService("Workspace").FakeSit.ChessModule:Destroy()
				game:GetService("Workspace").FakeSit.SetBoard:Destroy()
			else
				game.Workspace.FakeSit:Destroy()
				game.Players.LocalPlayer.Character.Head:Destroy()
			end
		end)
	end
})

PlayerTap_STP:AddButton({
	Name = " Teleport To Player { Super Spectate On } ",
	Callback = function()
		game.Players.LocalPlayer.Character:MoveTo(game:GetService("Workspace").Characters[_G.Select_Player].HumanoidRootPart.Position)
	end
})

local REPL = {}


PlayerTap_STP:AddButton({
	Name = "Refresh Player",
	Callback = function()
		for v302, v303 in pairs(game:GetService("Players"):GetChildren()) do
			table.insert(REPL , v303.Name);
			PlayerDrop:UpdateList(REPL)
		end
	end
})

local BoatSpeedChange = PlayerTap:CreateSection({
	Name = " Boat Changes ",
	Side = "left"
})

local BoatSpeed_Turn = BoatSpeedChange:AddLabel(" { Change TurnSpeed :  Km }")
local BoatSpeed_Pos = BoatSpeedChange:AddLabel(" { Change TurnSpeed :  Km }")


BoatSpeedChange:AddSlider({
	Name = " Speed ",
	Flag = "CRC",
	Value = 320,
	Min = 10,
	Max = 500,
	Textbox = true,
	Format = function(Value)
		_G.BCS = Value
		return "{ Change Speed : " .. tostring(Value) .. " Km/h }"
	end
})
BoatSpeedChange:AddSlider({
	Name = " TurnSpeed ",
	Flag = "CRC",
	Value = 500,
	Min = 10,
	Max = 500,
	Textbox = true,
	Format = function(Value)
		_G.CTS = Value
		BoatSpeed_Turn:Set("{ Change TurnSpeed : " .. tostring(Value) .. " Km/h }")
		return "TurnSpeed"
	end
})
BoatSpeedChange:AddSlider({
	Name = " TurnSpeed ",
	Flag = "PosBoat",
	Value = 2,
	Min = 2,
	Max = 500,
	Textbox = true,
	Format = function(Value)
		_G.FigPos = Value
		BoatSpeed_Pos:Set("{ Change BoatPos : " .. tostring(Value) .. " Hight }")
		return "Boat Pos -Y"
	end
})

BoatSpeedChange:AddToggle({
	Name = " Changes Boat Speed ",
	Callback = function(Value)
		_G.Changes_Boat_Speed = Value
	end
})
BoatSpeedChange:AddToggle({
	Name = " Changes Boat TurnSpeed ",
	Callback = function(Value)
		_G.Changes_Boat_TurnSpeed = Value
	end
})
BoatSpeedChange:AddButton({
	Name = " Changes Boat Position ",
	Callback = function(Value)
		ChangesBoatposition()
	end
})
writefile("Manake Hub Premium script/SaveOldRace.txt",game:GetService("Players")[game.Players.LocalPlayer.Name].Data.Race.Value)
writefile("Manake Hub Premium script/SaveOBS.txt",game:GetService("Players")[game.Players.LocalPlayer.Name].VisionRadius.Value)
local CombatTap = PlayerTap:CreateSection({
	Name = " Combat ",
	Side = "Right"
})
_G.ShowFov = false
CombatTap:AddDropdown({
	Name = "Select AimBot",
	Default = "Auto Aim",
	List = {"Auto Aim","Fov Aim"},
	Value = "Auto Aim",
	Flag = "Drop Select Aim Bot",
	Callback = function(V)
		_G.Select_Mode_Aim = V
		if V == "Auto Aim" then
			_G.ShowFov = false
		elseif V == "Fov Aim" then
			_G.ShowFov = true
		end

	end
})

local EurbedBounty = CombatTap:AddLabel("Earned Bounty : 0")

CombatTap:AddSlider({
	Name = " Size Fov ",
	Flag = "Size Fov",
	Value = 50,
	Min = 5,
	Max = 500,
	Textbox = true,
	Format = function(Value)
		_G.FovSize = Value
		return "{ Size Fov : " .. tostring(Value) .. " Cm }"
	end
})
CombatTap:AddSlider({
	Name = " Distance Player ",
	Flag = "Distance",
	Value = 1000,
	Min = 5,
	Max = 5000,
	Textbox = true,
	Format = function(Value)
		_G.Distance_Player = Value
		return "{ Distance : " .. tostring(Value) .. " Cm }"
	end
})

CombatTap:AddColorpicker({
	Name = " Color Fov",
	Flag = "Color Fov",
	Random = true,
	Callback = function(Value)
		_G.CircleColor = Value
	end
})

CombatTap:AddToggle({
	Name = " Semi Mink ",
	Callback = function(Value)
		if Value then
			local Agility = game:GetService("ReplicatedStorage").FX['Agility']:Clone();
			game:GetService("Players")[game.Players.LocalPlayer.Name].Data.Race.Value = "Mink"
			Agility.Parent = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart;
		else
			game:GetService("Players")[game.Players.LocalPlayer.Name].Data.Race.Value = tostring(readfile("SaveOldRace.txt"))
			game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Agility:Destroy()
		end
	end
})

CombatTap:AddToggle({
	Name = " Semi No Stun ",
	Callback = function(Value)
		if Value then
			repeat
				game:GetService("Workspace").Characters[game.Players.LocalPlayer.Name].Stun = -(math.huge^math.huge^math.huge)
				wait()
			until not Value			
		end
	end
})

CombatTap:AddToggle({
	Name = " Walk On Water ",
	Callback = function(Value)
		_G.WalkOnWater = Value
	end
})

CombatTap:AddToggle({
	Name = " Ctrl Tp ",
	Callback = function(Value)
		_G.CTRLTP = Value
	end
})

CombatTap:AddToggle({
	Name = " Aimbot Skill ",
	Callback = function(Value)
		_G.AimSkill = Value
		if _G.Select_Mode_Aim  == "Auto Aim" then
			_G.ShowFov = false
		elseif _G.Select_Mode_Aim  == "Fov Aim" then
			_G.ShowFov = true
		end
		if not Value then
			Playersaimbot = nil
			PlayersPosition = nil
			_G.NamePlayersLock = nil
			_G.HealthPlayerLock = nil
			_G.ShowFov =  false
		end
	end
})
CombatTap:AddToggle({
	Name = " Show Line Aimbot ",
	Callback = function(Value)
		_G.tracerState = Value
	end
})

CombatTap:AddToggle({
	Name = " Inf Observed ",
	Callback = function(Value)
		if Value then
			game:GetService("Players")[game.Players.LocalPlayer.Name].VisionRadius.Value = (math.huge^math.huge^math.huge)
		else
			game:GetService("Players")[game.Players.LocalPlayer.Name].VisionRadius.Value = tonumber(readfile("SaveOBS.txt"))
		end
	end	
})

CombatTap:AddToggle({
	Name = " invisible  ",
	Callback = function(Value)
		if Value then
			local removeNametags = true
			local plr = game:GetService("Players").LocalPlayer
			local character = plr.Character
			local hrp = character.HumanoidRootPart
			local old = hrp.CFrame
			if not character:FindFirstChild("LowerTorso") or character.PrimaryPart ~= hrp then
				return 
			end

			if removeNametags then
				local tag = hrp:FindFirstChildOfClass("BillboardGui")
				if tag then tag:Destroy() end

				hrp.ChildAdded:Connect(function(item)
					if item:IsA("BillboardGui") then
						task.wait()
						item:Destroy()
					end
				end)
			end
			local newroot = character.LowerTorso.Root:Clone()
			hrp.Parent = workspace
			character.PrimaryPart = hrp
			character:MoveTo(Vector3.new(old.X,9e9,old.Z))
			hrp.Parent = character
			character.LowerTorso.CFrame = character.LowerTorso.CFrame * CFrame.new(0,10000,0)
			character.LowerTorso.Anchored = true
		else
			game.Players.LocalPlayer.Character.Head:Destroy()
		end
	end	
})

CombatTap:AddToggle({
	Name = " Inf Energy  ",
	Callback = function(Value)
		if Value then
			game:GetService("Players").LocalPlayer.Character.Energy.Changed:connect(function()
				if Value then
					game:GetService("Players").LocalPlayer.Character.Energy.Value = game:GetService("Players").LocalPlayer.Character.Energy.MaxValue
				end 
			end)
		end
	end})


CombatTap:AddToggle({
	Name = " Inf Soru ",
	Callback = function(Value)
		while wait() do
			pcall(function()
				if Value and game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart") ~= nil  then
					for i,v in next, getgc() do
						if game:GetService("Players").LocalPlayer.Character.Soru then
							if typeof(v) == "function" and getfenv(v).script == game:GetService("Players").LocalPlayer.Character.Soru then
								for i2,v2 in next, getupvalues(v) do
									if typeof(v2) == "table" then
										repeat wait(.1)
											v2.LastUse = 0
										until not Value or game:GetService("Players").LocalPlayer.Character.Humanoid.Health <= 0
									end
								end
							end
						end
					end
				end
			end)
		end
	end	
})

CombatTap:AddToggle({
	Name = " Inf Jump ",
	Callback = function(Value)
		UserInputService.InputBegan:Connect(function(key)
			if key.KeyCode == Enum.KeyCode.Space and Value then 
				if _G.SetJump >= 10 then
					_G.SetJump = 0
					game.Workspace.SavePosIsland.Inf_Jump.CFrame = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.X,(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Y)-3.2,game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Z)
				else
					game.Workspace.SavePosIsland.Inf_Jump.CFrame = CFrame.new(0,0,0)
					_G.SetJump = _G.SetJump + 1
				end  
			else
				game.Workspace.SavePosIsland.Inf_Jump.CFrame = CFrame.new(0,10000,0)
			end
		end)
	end	
})

CombatTap:AddToggle({
	Name = " ByPass Color ",
	Callback = function(Value)
		if Value then
			pcall(function ()
				repeat
					wait()
					for _,v in pairs(game:GetService("Lighting"):GetChildren()) do
						pcall(function ()
							v.Enabled = false
							for _,v in pairs(game:GetService("Lighting").LightingLayers:GetChildren()) do
								if v.Name == "Intensity" then
									v.Value = 0
								end
								v.Enabled = false
							end
						end)
					end
				until not Value
			end)
		end
	end
})
CombatTap:Button({
	Name = " Reset Player ",
	Callback = function(Value)
		Playersaimbot = nil
		PlayersPosition = nil
		_G.NamePlayersLock = nil
		_G.HealthPlayerLock = nil
		_G.tracerState = false
	end
})

local EspTap = PlayerTap:CreateSection({
	Name = " Esp ",
	Side = "Right"
})


EspTap:AddToggle({
	Name = " Esp Player ",
	Callback = function(Value)
		_G.EspPlayer = Value
		while wait() do
			if Value then
				UpdateEspPlayer()
			end
		end
	end
})

EspTap:AddToggle({
	Name = " Esp Island ",
	Callback = function(Value)
		_G.EspIsland = Value
		while Value do
			wait()
			UpdateIslandESP()
		end
	end
})

EspTap:AddToggle({
	Name = " Esp Fruit ",
	Callback = function(Value)
		_G.EspFruit = Value
		while Value do
			wait()
			UpdateBfEsp()
		end
	end
})


EspTap:AddToggle({
	Name = " Esp Flower ",
	Callback = function(Value)
		_G.EspFower = Value
		while wait() do
			if Value then
				UpdateFlowerEsp()
			end
		end
	end
})

EspTap:AddToggle({
	Name = " Esp Chest ",
	Callback = function(Value)
		_G.EspChest = Value
		while Value do
			wait()
			UpdateChestEsp()
		end
	end
})
local v3 = game:GetService("RunService");

local GraphicTap = PlayerTap:CreateSection({
	Name = " Graphic ",
	Side = "left"
})

GraphicTap:AddToggle({
	Name = " Lock Fps ",
	Callback = function(Value)
		if Value then
			setfpscap(360);
		else
			setfpscap(120);
		end
	end
})

GraphicTap:AddToggle({
	Name = " White Screen ",
	Callback = function(Value)
		if Value then
			v3:Set3dRenderingEnabled(false);
			setfpscap(360);
		else
			v3:Set3dRenderingEnabled(true);
			setfpscap(120);
		end
	end
})

GraphicTap:AddToggle({
	Name = " Auto White Screen ",
	Callback = function(Value)
		_G.White_Screen_Auto = Value
	end
})


GraphicTap:AddButton({
	Name = " Fast Mode ",
	Callback = function()
		pcall(function ()
			local L_501_ = true
			local L_502_ = game
			local L_503_ = L_502_.Workspace
			local L_504_ = L_502_.Lighting
			local L_505_ = L_503_.Terrain
			L_505_.WaterWaveSize = 0
			L_505_.WaterWaveSpeed = 0
			L_505_.WaterReflectance = 0
			L_505_.WaterTransparency = 0
			L_504_.GlobalShadows = false
			L_504_.FogEnd = 9e9
			L_504_.Brightness = 0
			settings().Rendering.QualityLevel = "Level01"
			for L_506_forvar0, L_507_forvar1 in pairs(L_502_:GetDescendants()) do
				if L_507_forvar1:IsA("Part") or L_507_forvar1:IsA("Union") or L_507_forvar1:IsA("CornerWedgePart") or L_507_forvar1:IsA("TrussPart") then
					L_507_forvar1.Material = "Plastic"
					L_507_forvar1.Reflectance = 0
				elseif L_507_forvar1:IsA("Decal") or L_507_forvar1:IsA("Texture") and L_501_ then
					L_507_forvar1.Transparency = 1
				elseif L_507_forvar1:IsA("ParticleEmitter") or L_507_forvar1:IsA("Trail") then
					L_507_forvar1.Lifetime = NumberRange.new(0)
				elseif L_507_forvar1:IsA("Explosion") then
					L_507_forvar1.BlastPressure = 1
					L_507_forvar1.BlastRadius = 1
				elseif L_507_forvar1:IsA("Fire") or L_507_forvar1:IsA("SpotLight") or L_507_forvar1:IsA("Smoke") then
					L_507_forvar1.Enabled = false
				elseif L_507_forvar1:IsA("MeshPart") then
					L_507_forvar1.Material = "Plastic"
					L_507_forvar1.Reflectance = 0
					L_507_forvar1.TextureID = 10385902758728957
				end
			end
			for L_508_forvar0, L_509_forvar1 in pairs(L_504_:GetChildren()) do
				if L_509_forvar1:IsA("BlurEffect") or L_509_forvar1:IsA("SunRaysEffect") or L_509_forvar1:IsA("ColorCorrectionEffect") or L_509_forvar1:IsA("BloomEffect") or L_509_forvar1:IsA("DepthOfFieldEffect") then
					L_509_forvar1.Enabled = false
				end
			end
		end)
	end
})

local ServerTap = PlayerTap:CreateSection({
	Name = " Server ",
	Side = "left"
})

ServerTap:AddLabel("Jobid : "..game.JobId)

ServerTap:AddButton({
	Name = " Teleport to  Old World ",
	Callback = function()
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelMain")
	end})

ServerTap:AddButton({
	Name = " Teleport to Second Sea ",
	Callback = function()
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
	end})

ServerTap:AddButton({
	Name = " Teleport to Third Sea ",
	Callback = function()
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
	end})


ServerTap:AddButton({
	Name = " Rejoin Server ",
	Callback = function()
		game:GetService("TeleportService"):TeleportToPlaceInstance(game.placeId, game.jobId, game.Players.LocalPlayer);
	end
})
ServerTap:AddButton({
	Name = " Hop to Low Player ",
	Callback = function()
		HopServer()
	end
})
ServerTap:AddButton({
	Name = " Marines ",
	Callback = function()
		local args = {
			[1] = "SetTeam",
			[2] = "Marines"
		}

		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))

		local args = {
			[1] = "ZQuestProgress"
		}

		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))

		local args = {
			[1] = "CitizenQuestProgress"
		}

		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))

		local args = {
			[1] = "TushitaProgress"
		}

		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))

		local args = {
			[1] = "GuitarPuzzleProgress",
			[2] = "Check"
		}

		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
	end
})
ServerTap:AddButton({
	Name = " Pirates ",
	Callback = function()
		local args = {
			[1] = "SetTeam",
			[2] = "Pirates"
		}

		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))


		local args = {
			[1] = "ZQuestProgress"
		}

		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))

		local args = {
			[1] = "CitizenQuestProgress"
		}

		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))

		local args = {
			[1] = "TushitaProgress"
		}

		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))

		local args = {
			[1] = "GuitarPuzzleProgress",
			[2] = "Check"
		}

		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
	end})
ServerTap:AddTextbox({
	Name = "Jobin With jobid",
	Value = "Jobid",
	Callback = function(Text)
		_G.Jobid =  Text
	end
})
ServerTap:AddButton({
	Name = " Copy Jobid ",
	Callback = function()
		setclipboard(tostring(game.JobId))
	end
})
ServerTap:AddButton({
	Name = " Join With jobid ",
	Callback = function()
		game:GetService("TeleportService"):TeleportToPlaceInstance(game.placeId, _G.Jobid, game.Players.LocalPlayer);
	end})

local RuningTap = PlayerTap:CreateSection({
	Name = " Runing ",
	Side = "Right"
})
_G.SelHeal = nil
local Health_ParSen = RuningTap:AddLabel(" Health : "..game.Players.LocalPlayer.Character.Humanoid.Health.."/"..game.Players.LocalPlayer.Character.Humanoid.MaxHealth.." : "..math.floor((game.Players.LocalPlayer.Character.Humanoid.Health/game.Players.LocalPlayer.Character.Humanoid.MaxHealth)*100).."%")
RuningTap:AddSlider({
	Name = " { To Down Helth  } ",
	Flag = "To Down Helth",
	Value = 80,
	Min = 0,
	Max = 100,
	Textbox = true,
	Format = function(Value)
		_G.DownToUp = Value
		return "{ To Down Helth : " .. tostring(Value) .. " % }"
	end
})
RuningTap:AddSlider({
	Name = " { To Up Helth  } ",
	Flag = "To Up Helth",
	Value = 50,
	Min = 0,
	Max = 100,
	Textbox = true,
	Format = function(Value)
		_G.UpToDown = Value
		return "{ To Up Helth : " .. tostring(Value) .. " % }"
	end
})
RuningTap:AddSlider({
	Name = " { Time  } ",
	Flag = "Time Runing",
	Value = 10,
	Min = 0,
	Max = 1000,
	Textbox = true,
	Format = function(Value)
		_G.TimeDownRun = Value
		return "{ Time : " .. tostring(Value) .. " S }"
	end
})
RuningTap:AddToggle({
	Name = " Auto Super Runing ",
	Callback = function(Value)
		_G.Auto_Super_Runing = Value
	end
})

RuningTap:AddToggle({
	Name = " Protect Auto Bounty ",
	Callback = function(Value)
		_G.Protect_XenonAutoBounty = Value
		if _G.Protect_XenonAutoBounty then
			game:GetService("Workspace").SavePosIsland.Old_CFrame.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
			game.Workspace.CurrentCamera.CameraSubject = game:GetService("Workspace").SavePosIsland.Old_CFrame
			repeat
				wait()
				if _G.Protect_XenonAutoBounty then
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,10000000,0) 
					wait(5)
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").SavePosIsland.Old_CFrame.CFrame
					game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
					game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
					wait(1)

				end
			until _G.Protect_XenonAutoBounty == false
			game.Workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character
		end
		if _G.Protect_XenonAutoBounty == false then
			game.Workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character
			if Three_World then
				local args = {
					[1] = "requestEntrance",
					[2] = Vector3.new(-5089.66455078125, 318.5023193359375, -3146.126708984375)
				}
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				game:GetService("Workspace").SavePosIsland.Old_CFrame.CFrame = CFrame.new(0,0,0)
			elseif New_World then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-380.9781188964844, 88.43508911132812, 292.3891296386719)	
				game.Players.LocalPlayer.Character.Head:Destroy();	
				repeat
					wait()
				until game.Players.LocalPlayer.Character.Humanoid.Health > 0 
				game:GetService("Workspace").SavePosIsland.Old_CFrame.CFrame = CFrame.new(0,0,0)
			elseif Old_World then
				local Team = game:GetService("Teams")
				local plr = game.Players.LocalPlayer
				if plr.Team == game.Teams.Pirates then
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(981.669, 16.5166, 1427.7)	
					game.Players.LocalPlayer.Character.Head:Destroy();	
					repeat
						wait()
					until game.Players.LocalPlayer.Character.Humanoid.Health > 0 
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(981.669, 16.5166, 1427.7)	
					game:GetService("Workspace").SavePosIsland.Old_CFrame.CFrame = CFrame.new(0,0,0)
				elseif plr.Team == game.Teams.Marines then
					game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2591.75, 6.88882, 2085.11)	
					game.Players.LocalPlayer.Character.Head:Destroy();	
					repeat
						wait()
					until game.Players.LocalPlayer.Character.Humanoid.Health > 0 
					game:GetService("Workspace").SavePosIsland.Old_CFrame.CFrame = CFrame.new(0,0,0)
				end
			end
		end
	end
})
RuningTap:AddButton({
	Name = " Super Runing ",
	Callback = function()
		game:GetService("Workspace").SavePosIsland.Old_CFrame.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,10,0)
		game.Workspace.CurrentCamera.CameraSubject = game:GetService("Workspace").SavePosIsland.Old_CFrame
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,10000000,0) 
		repeat
			wait()
		until  _G.SelHeal >= _G.DownToUp
		wait()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").SavePosIsland.Old_CFrame.CFrame* CFrame.new(0,10,0)
		game.Workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character
		game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
		game:GetService("Workspace").SavePosIsland.Old_CFrame.CFrame = CFrame.new(0,0,0)
		game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
	end})
RuningTap:AddButton({
	Name = " Super Runing Time ",
	Callback = function()
		game:GetService("Workspace").SavePosIsland.Old_CFrame.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,10,0)
		game.Workspace.CurrentCamera.CameraSubject = game:GetService("Workspace").SavePosIsland.Old_CFrame
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,10000000,0) 
		wait(_G.TimeDownRun)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").SavePosIsland.Old_CFrame.CFrame* CFrame.new(0,10,0)
		game.Workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character
		game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
		game:GetService("Workspace").SavePosIsland.Old_CFrame.CFrame = CFrame.new(0,0,0)
		game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
	end})
RuningTap:AddButton({
	Name = " Quick to SafeZone { Bypass } ",
	Callback = function()
		game.Workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character
		if Old_World then
			local Team = game:GetService("Teams")
			local plr = game.Players.LocalPlayer
			if plr.Team == game.Teams.Pirates then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(981.669, 16.5166, 1427.7)	
				game.Players.LocalPlayer.Character.Head:Destroy();	
				repeat
					wait()
				until game.Players.LocalPlayer.Character.Humanoid.Health > 0 
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(981.669, 16.5166, 1427.7)	
				game:GetService("Workspace").SavePosIsland.Old_CFrame.CFrame = CFrame.new(0,0,0)
			elseif plr.Team == game.Teams.Marines then
				game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2591.75, 6.88882, 2085.11)	
				game.Players.LocalPlayer.Character.Head:Destroy();	
				repeat
					wait()
				until game.Players.LocalPlayer.Character.Humanoid.Health > 0 
				game:GetService("Workspace").SavePosIsland.Old_CFrame.CFrame = CFrame.new(0,0,0)
			end  
		elseif Three_World then
			local args = {
				[1] = "requestEntrance",
				[2] = Vector3.new(-5089.66455078125, 318.5023193359375, -3146.126708984375)
			}
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
			game:GetService("Workspace").SavePosIsland.Old_CFrame.CFrame = CFrame.new(0,0,0)
		elseif New_World then
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-380.9781188964844, 88.43508911132812, 292.3891296386719)	
			game.Players.LocalPlayer.Character.Head:Destroy();	
			repeat
				wait()
			until game.Players.LocalPlayer.Character.Humanoid.Health > 0 
			game:GetService("Workspace").SavePosIsland.Old_CFrame.CFrame = CFrame.new(0,0,0)
		end
	end})
local SoundTap = PlayerTap:CreateSection({
	Name = " Sound ",
	Side = "Right"
})
local ErrorSound = SoundTap:AddLabel(" { Error } ")
local PlayingSound = SoundTap:AddLabel(" Playing : ")
local LoopSound = SoundTap:AddLabel(" Loop : ")
local VolumeSound = SoundTap:AddLabel(" Volume : dB")
local TimeSound = SoundTap:AddLabel(" Time : s")

SoundTap:AddSlider({
	Name = " Volume ",
	Value = 0.5,
	Min = 0.5,
	Max = 100,
	Textbox = true,
	Format = function(Value)
		_G.Volume = Value
		return "{ Sound Volume : " .. tostring(Value) .. " dB }"
	end
})

SoundTap:AddTextbox({
	Name = " Sound Id ",
	Value = "rbxassetid://",
	Flag = "Sound Id",
	Callback = function(Value)
		_G.SoundId = Value
		game:GetService("Workspace").SavePosIsland.ManakeHubOpenSound.SoundId = tostring(_G.SoundId)
	end
})

SoundTap:AddButton({
	Name = " Play/Stop Sound ",
	Callback = function(Value)
		game:GetService("Workspace").SavePosIsland.ManakeHubOpenSound.Playing = not game:GetService("Workspace").SavePosIsland.ManakeHubOpenSound.Playing
		PlayingSound:Set(" Playing : "..tostring(game:GetService("Workspace").SavePosIsland.ManakeHubOpenSound.Playing))
	end
})

SoundTap:AddButton({
	Name = " Set Loop ",
	Callback = function(Value)
		game:GetService("Workspace").SavePosIsland.ManakeHubOpenSound.Looped = not game:GetService("Workspace").SavePosIsland.ManakeHubOpenSound.Looped
		LoopSound:Set(" Loop : "..tostring(game:GetService("Workspace").SavePosIsland.ManakeHubOpenSound.Looped))
	end 
})


SoundTap:AddButton({
	Name = " Set Volume ",
	Callback = function(Value)
		game:GetService("Workspace").SavePosIsland.ManakeHubOpenSound.Volume = (_G.Volume/10)
		VolumeSound:Set(" Volune : "..tostring(game:GetService("Workspace").SavePosIsland.ManakeHubOpenSound.Volume))
	end
})


local DunTap = RaidsTap:CreateSection({
	Name = "Raids Auto"
})

DunTap:AddDropdown({
	Name = "Select Dungeons",
	List = {"Flame","Ice","Quake","Light","Dark","String","Rumble","Magma","Buddha","Sand","Phoenix","Dough"},
	Value = "Dark",
	Flag = "Drop Select",
	Callback = function(V)
		_G.Select_Dungeons = V
	end
})

DunTap:AddToggle({
	Name = " Auto Raids ",
	Callback = function(Value)
		_G.AutoRaids = Value;
		NextIsland = Value;
		KillAura = Value;
	end
})

DunTap:AddToggle({
	Name = " Auto Buy Microchip ",
	Callback = function(Value)
		_G.AutoMicrochip = Value;
	end
})

DunTap:AddToggle({
	Name = " Auto Start Raid ",
	Callback = function(Value)
		AutoStartRaid = Value
	end
})

DunTap:AddToggle({
	Name = " Auto Awakened ",
	Callback = function(Value)
		_G.AwakenedAuto = Value
	end
})

local RaidsMmanual = RaidsTap:CreateSection({
	Name = " Raids Mmanual ",
	Side = "left"
})

RaidsMmanual:AddToggle({
	Name = " Kill Aura ",
	Callback = function(Value)
		_G.Kill_Aura = Value
	end
})

RaidsMmanual:AddButton({
	Name = " Buy Microchip ",
	Callback = function(Value)
		local v406 = {[1]="RaidsNpc",[2]="Select",[3]=tostring(_G.Select_Dungeons)};
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v406));
	end
})

RaidsMmanual:AddButton({
	Name = " Start Raids ",
	Callback = function(Value)
		if New_World then
			fireclickdetector(Workspace.Map.CircleIsland.RaidSummon2.Button.Main.ClickDetector);
		elseif Three_World then
			fireclickdetector(Workspace.Map["Boat Castle"].RaidSummon2.Button.Main.ClickDetector);
		end
	end
})

RaidsMmanual:AddButton({
	Name = " Next land ",
	Callback = function(Value)
		pcall(function()
			if (((game:GetService("Players")['LocalPlayer'].PlayerGui.Main.Timer.Visible == true) and game:GetService("Workspace")['_WorldOrigin'].Locations:FindFirstChild("Island 5")) or game:GetService("Workspace")['_WorldOrigin'].Locations:FindFirstChild("Island 4") or game:GetService("Workspace")['_WorldOrigin'].Locations:FindFirstChild("Island 3") or game:GetService("Workspace")['_WorldOrigin'].Locations:FindFirstChild("Island 2") or game:GetService("Workspace")['_WorldOrigin'].Locations:FindFirstChild("Island 1")) then
				if game:GetService("Workspace")['_WorldOrigin'].Locations:FindFirstChild("Island 5") then
					v47(game:GetService("Workspace")['_WorldOrigin'].Locations["Island 5"].CFrame * CFrame.new(4, 65, 10));
				elseif game:GetService("Workspace")['_WorldOrigin'].Locations:FindFirstChild("Island 4") then
					v47(game:GetService("Workspace")['_WorldOrigin'].Locations["Island 4"].CFrame * CFrame.new(4, 65, 10));
				elseif game:GetService("Workspace")['_WorldOrigin'].Locations:FindFirstChild("Island 3") then
					v47(game:GetService("Workspace")['_WorldOrigin'].Locations["Island 3"].CFrame * CFrame.new(4, 65, 10));
				elseif game:GetService("Workspace")['_WorldOrigin'].Locations:FindFirstChild("Island 2") then
					v47(game:GetService("Workspace")['_WorldOrigin'].Locations["Island 2"].CFrame * CFrame.new(4, 65, 10));
				elseif game:GetService("Workspace")['_WorldOrigin'].Locations:FindFirstChild("Island 1") then
					v47(game:GetService("Workspace")['_WorldOrigin'].Locations["Island 1"].CFrame * CFrame.new(4, 65, 10));
				end
			elseif New_World then
				v47(CFrame.new(-6438.73535, 250.645355, -4501.50684));
			elseif Three_World then
				v47(CFrame.new(-5057.146484375, 314.54132080078, -2934.7995605469));
			end
		end);
	end
})

RaidsMmanual:AddButton({
	Name = " Teleport To Lab ",
	Callback = function(Value)

	end
})

RaidsMmanual:AddButton({
	Name = " Awakening Room ",
	Callback = function(Value)

	end
})


spawn(function()
	while wait() do
		if KillAura then
			for v332, v333 in pairs(game.Workspace.Enemies:GetDescendants()) do
				if (v333:FindFirstChild("Humanoid") and v333:FindFirstChild("HumanoidRootPart") and (v333.Humanoid.Health > 0)) then
					pcall(function()
						repeat
							wait();
							v333.Humanoid.Health = 0;
							v333.HumanoidRootPart.CanCollide = false;
							v333.HumanoidRootPart.Transparency = 0;
						until not KillAura or not AutoStartRaid or not v333.Parent or (v333.Humanoid.Health <= 0) 
					end);
				end
			end
		end
	end
end);

spawn(function()
	pcall(function()
		while wait() do
			if NextIsland then
				wait(10);
				if (((game:GetService("Players")['LocalPlayer'].PlayerGui.Main.Timer.Visible == true) and game:GetService("Workspace")['_WorldOrigin'].Locations:FindFirstChild("Island 5")) or game:GetService("Workspace")['_WorldOrigin'].Locations:FindFirstChild("Island 4") or game:GetService("Workspace")['_WorldOrigin'].Locations:FindFirstChild("Island 3") or game:GetService("Workspace")['_WorldOrigin'].Locations:FindFirstChild("Island 2") or game:GetService("Workspace")['_WorldOrigin'].Locations:FindFirstChild("Island 1")) then
					if game:GetService("Workspace")['_WorldOrigin'].Locations:FindFirstChild("Island 5") then
						v50(game:GetService("Workspace")['_WorldOrigin'].Locations["Island 5"].CFrame * CFrame.new(4, 65, 10));
					elseif game:GetService("Workspace")['_WorldOrigin'].Locations:FindFirstChild("Island 4") then
						v50(game:GetService("Workspace")['_WorldOrigin'].Locations["Island 4"].CFrame * CFrame.new(4, 65, 10));
					elseif game:GetService("Workspace")['_WorldOrigin'].Locations:FindFirstChild("Island 3") then
						v50(game:GetService("Workspace")['_WorldOrigin'].Locations["Island 3"].CFrame * CFrame.new(4, 65, 10));
					elseif game:GetService("Workspace")['_WorldOrigin'].Locations:FindFirstChild("Island 2") then
						v50(game:GetService("Workspace")['_WorldOrigin'].Locations["Island 2"].CFrame * CFrame.new(4, 65, 10));
					elseif game:GetService("Workspace")['_WorldOrigin'].Locations:FindFirstChild("Island 1") then
						v50(game:GetService("Workspace")['_WorldOrigin'].Locations["Island 1"].CFrame * CFrame.new(4, 65, 10));
					end
				elseif New_World then
					v50(CFrame.new(-6438.73535, 250.645355, -4501.50684));
				elseif Three_World then
					v50(CFrame.new(-5057.146484375, 314.54132080078, -2934.7995605469));
				end
			end
		end
	end);
end);

local Fruits = RaidsTap:CreateSection({
	Name = " Fruits ",
	Side = "Right"
})

Fruits:AddDropdown({
	Name = "Select Fruits Sniper",
	List = {"Bomb-Bomb","Spike-Spike","Chop-Chop","Spring-Spring","Kilo-Kilo","Spin-Spin","Kilo-Kilo","Spin-Spin","Bird: Falcon","Smoke-Smoke","Flame-Flame","Ice-Ice","Sand-Sand","Dark-Dark","Revive-Revive","Diamond-Diamond","Light-Light","Love-Love","Rubber-Rubber","Barrier-Barrier","Magma-Magma","Door-Door","Quake-Quake","Human-Human: Buddha","String-String","Bird-Bird: Phoenix","Rumble-Rumble","Paw-Paw","Gravity-Gravity","Dough-Dough","Shadow-Shadow","Venom-Venom","Control-Control","Soul-Soul","Dragon-Dragon","Leopard-Leopard"},
	Value = "Dark-Dark",
	Flag = "Drop Select Sniper",
	Callback = function(V)
		_G.Select_Fruits_Sniper = V
	end
})

Fruits:AddToggle({
	Name = " Auto Buy Devil Fruits ",
	Callback = function(Value)
		_G.Fruits_Sniper = Value
	end
})

Fruits:AddToggle({
	Name = " Auto Random Fruit ",
	Callback = function(Value)
		_G.Auto_Random_Fruit = Value
	end
})

Fruits:AddToggle({
	Name = " Auto Store Fruits ",
	Callback = function(Value)
		_G.Auto_Store_Fruits = Value
	end
})

Fruits:AddToggle({
	Name = " Auto Bring Fruit ",
	Callback = function(Value)
		_G.Auto_Bring_Fruit = Value
	end
})

local ChangeFruits = RaidsTap:CreateSection({
	Name = " Change Fruits ",
	Side = "Right"
})

ChangeFruits:AddDropdown({
	Name = "Select Fruits Change",
	List = {"Bomb-Bomb","Spike-Spike","Chop-Chop","Spring-Spring","Kilo-Kilo","Spin-Spin","Kilo-Kilo","Spin-Spin","Bird: Falcon","Smoke-Smoke","Flame-Flame","Ice-Ice","Sand-Sand","Dark-Dark","Revive-Revive","Diamond-Diamond","Light-Light","Love-Love","Rubber-Rubber","Barrier-Barrier","Magma-Magma","Door-Door","Quake-Quake","Human-Human: Buddha","String-String","Bird-Bird: Phoenix","Rumble-Rumble","Paw-Paw","Gravity-Gravity","Dough-Dough","Shadow-Shadow","Venom-Venom","Control-Control","Soul-Soul","Dragon-Dragon","Leopard-Leopard"},
	Value = "Dark-Dark",
	Flag = "Drop Select Sniper",
	Callback = function(V)
		_G.Select_Fruits_Change = V
	end
})

ChangeFruits:AddButton({
	Name = " Change Fruits ",
	Callback = function()
		game.Players.LocalPlayer.PlayerGui.Main.FruitShop.Visible = not game.Players.LocalPlayer.PlayerGui.Main.FruitShop.Visible
		wait()
		game.Players.LocalPlayer.PlayerGui.Main.FruitShop.Visible = not game.Players.LocalPlayer.PlayerGui.Main.FruitShop.Visible
		if game.Players.LocalPlayer.PlayerGui.Main.FruitShop.Left.Center.ScrollingFrame.Container[_G.Select_Fruits_Change].Purchase.TextLabel == "Equip" then
			_G.Chages_Fruints_EQ = true
		else
			_G.Chages_Fruints_EQ = false	
			TextUpGame("Check Game Pass !","RM")		
		end
		if game.Players.LocalPlayer.PlayerGui.Main.FruitShop.Left.Center.ScrollingFrame.Container[_G.Select_Fruits_Change].Price.text == " Out of Stock" then
			_G.Chages_Fruints_EQ = false
			if  game.Players.LocalPlayer.PlayerGui.Main.FruitShop.Left.Center.ScrollingFrame.Container[_G.Select_Fruits_Change].Purchase.TextLabel.Text == "Equip" then
				_G.Chages_Fruints = true
			else
				_G.Chages_Fruints = false
				TextUpGame("Not Sell !","RM")
			end 
		else
			_G.Chages_Fruints_EQ = true
			_G.Chages_Fruints = true 
		end	 
		if _G.Chages_Fruints then
			for v363, v364 in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
				if (v364.ToolTip == "Melee") then
					if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v364.Name)) then
						Equip(v364.Name)
					end
				end
			end
			wait()
			if _G.Chages_Fruints_EQ == true then
				local args = {
					[1] = "SwitchFruit",
					[2] = _G.Select_Fruits_Change
				}

				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				local args = {
					[1] = "GetFruits",
					[2] = false
				}

				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				local args = {
					[1] = "GetFruits",
					[2] = false
				}

				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				wait()
				Equip(_G.Select_Fruits_Change);
			elseif _G.Chages_Fruints_EQ == false then
				wait()
				local args = {
					[1] = "SwitchFruit",
					[2] = _G.Select_Fruits_Change
				}

				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))

				local args = {
					[1] = "GetFruits",
					[2] = false
				}

				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				local args = {
					[1] = "GetFruits",
					[2] = false
				}
				wait()
				Equip(_G.Select_Fruits_Change);
			end
		end
	end
})

ChangeFruits:AddButton({
	Name = " Open Ui Friuts Shop ",
	Callback = function()
		game.Players.LocalPlayer.PlayerGui.Main.FruitShop.Visible = not game.Players.LocalPlayer.PlayerGui.Main.FruitShop.Visible
	end	
})

ChangeFruits:AddButton({
	Name = " Open Ui Color Haki ",
	Callback = function()
		game.Players.LocalPlayer.PlayerGui.Main.Colors.Visible = not game.Players.LocalPlayer.PlayerGui..PlayerGui.Main.Colors.Visible
	end	
})

ChangeFruits:AddButton({
	Name = " Open Ui Awakening ",
	Callback = function()
		game.Players.LocalPlayer.PlayerGui.Main.AwakeningToggler.Visible = not game.Players.LocalPlayer.PlayerGui.Main.AwakeningToggler.Visible
	end	
})

local MeleeChange = Item_Shop:CreateSection({
	Name = " Melee Change ",
	Side = "left"
})

MeleeChange:AddButton({
	Name = " Buy Dark Step ",
	Callback = function()
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyBlackLeg")
	end	
})

MeleeChange:AddButton({
	Name = " Buy Electro ",
	Callback = function()
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectro")
	end	
})

MeleeChange:AddButton({
	Name = " Buy Water Kungfu ",
	Callback = function()
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyFishmanKarate")
	end	
})

MeleeChange:AddButton({
	Name = " Buy Super Human ",
	Callback = function()
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman")
	end	
})

MeleeChange:AddButton({
	Name = " Buy Death Step ",
	Callback = function()
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep")
	end	
})

MeleeChange:AddButton({
	Name = " Buy Shark Man Karate ",
	Callback = function()
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate")
	end	
})

MeleeChange:AddButton({
	Name = " Buy Electric Claw ",
	Callback = function()
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw")
	end	
})

MeleeChange:AddButton({
	Name = " Buy Dragon Talon ",
	Callback = function()
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon")
	end	
})

MeleeChange:AddButton({
	Name = " Buy God Human ",
	Callback = function()
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman")
	end	
})

-- Script

if game.Workspace:FindFirstChild("SavePosIsland") then
	game.Workspace:FindFirstChild("SavePosIsland"):Destroy()
end
if game.Workspace:FindFirstChild("SaveSpeedBoat") then
	game.Workspace:FindFirstChild("SaveSpeedBoat"):Destroy()
end
if game.Workspace:FindFirstChild("WebHook") then
	game.Workspace:FindFirstChild("WebHook"):Destroy()
end

local SavePosIsland = Instance.new("Folder")
SavePosIsland.Name = "SavePosIsland"
SavePosIsland.Parent = game.Workspace;
local SaveSpeedBoat = Instance.new("Folder");
SaveSpeedBoat.Name = "SaveSpeedBoat";
SaveSpeedBoat.Parent = game.Workspace;
local WebHook = Instance.new("Folder");
WebHook.Name = "WebHook";
WebHook.Parent = game.Workspace;


spawn(function ()
	local Part = Instance.new("Part")
	Part.Parent = game.Workspace.SavePosIsland
	Part.Anchored = true
	Part.Name = "Inf_Jump"
	Part.Size = Vector3.new(32,2,32)
	Part.Transparency = 1
end)

spawn(function ()
	local SoundFile = Instance.new("Sound")
	SoundFile.Name = "ManakeHubOpenSound"
	SoundFile.Parent = game.Workspace.SavePosIsland
end)
task.spawn(function ()
	while true do
		wait()
		_G.SelHeal = math.floor((game.Players.LocalPlayer.Character.Humanoid.Health/game.Players.LocalPlayer.Character.Humanoid.MaxHealth)*100)
		Health_ParSen:Set("Health : "..math.floor(game.Players.LocalPlayer.Character.Humanoid.Health).."/"..game.Players.LocalPlayer.Character.Humanoid.MaxHealth.." : "..math.floor((game.Players.LocalPlayer.Character.Humanoid.Health/game.Players.LocalPlayer.Character.Humanoid.MaxHealth)*100).."%")
	end
end)

task.spawn(function ()
	while wait() do
		if _G.Auto_Super_Runing then
			if _G.SelHeal < _G.UpToDown then
				game:GetService("Workspace").SavePosIsland.Old_CFrame.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,10,0)
				game.Workspace.CurrentCamera.CameraSubject = game:GetService("Workspace").SavePosIsland.Old_CFrame
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,10000000,0) 
				repeat
					wait()
				until  _G.SelHeal >= _G.DownToUp
				wait()
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").SavePosIsland.Old_CFrame.CFrame * CFrame.new(0,10,0)
				game.Workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character
				game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
				game:GetService("Workspace").SavePosIsland.Old_CFrame.CFrame = CFrame.new(0,0,0)
				game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
			end	
		end
	end
end)

spawn(function()
	game:GetService("RunService").Heartbeat:Connect(function()
		if (_G.AutoRaids or AutoStartRaid) then
			if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid") then
				setfflag("HumanoidParallelRemoveNoPhysics", "False");
				setfflag("HumanoidParallelRemoveNoPhysicsNoSimulate2", "False");
				game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(11);
			end
		end
	end);
end);


function ChangFruts(NameF,MeeMai,KarMai)
	if KarMai then
		for v363, v364 in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
			if (v364.ToolTip == "Melee") then
				if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v364.Name)) then
					Equip(v364.Name)
				end
			end
		end
		wait()
		if MeeMai == true then
			local args = {
				[1] = "SwitchFruit",
				[2] = NameF
			}

			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
			local args = {
				[1] = "GetFruits",
				[2] = false
			}

			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
			local args = {
				[1] = "GetFruits",
				[2] = false
			}

			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
			wait()
			Equip(NameF);
		elseif MeeMai == false then
			wait()
			local args = {
				[1] = "SwitchFruit",
				[2] = NameF
			}

			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))

			local args = {
				[1] = "GetFruits",
				[2] = false
			}

			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
			local args = {
				[1] = "GetFruits",
				[2] = false
			}
			wait()
			Equip(NameF);
		end
	else
		TextUpGame("Not Sell !","RM")
	end
end

function CheckMemai(Name)
	if game.Players.LocalPlayer.PlayerGui.Main.FruitShop.Left.Center.ScrollingFrame.Container[Name].Purchase.TextLabel == "Equip" then
		_G.Chages_Fruints_EQ = true
	else
		_G.Chages_Fruints_EQ = false
	end
	if game.Players.LocalPlayer.PlayerGui.Main.FruitShop.Left.Center.ScrollingFrame.Container[Name].Price.text == " Out of Stock" then
		if  game.Players.LocalPlayer.PlayerGui.Main.FruitShop.Left.Center.ScrollingFrame.Container[Name].Purchase.TextLabel.Text == "Equip" then
			_G.Chages_Fruints = true
		else
			_G.Chages_Fruints = false
		end 
	else
		_G.Chages_Fruints = true 
	end	 
end


spawn(function()
	while wait() do
		if _G.Fruits_Sniper then
			local args = {
				[1] = "SwitchFruit",
				[2] = _G.Select_Fruits_Sniper
			}
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
		end
	end
end)

spawn(function()
	while wait() do
		if _G.Kill_Aura then
			for v332, v333 in pairs(game.Workspace.Enemies:GetDescendants()) do
				if (v333:FindFirstChild("Humanoid") and v333:FindFirstChild("HumanoidRootPart") and (v333.Humanoid.Health > 0)) then
					pcall(function()
						repeat
							wait();
							v333.Humanoid.Health = 0;
							v333.HumanoidRootPart.CanCollide = false;
							v333.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
							v333.HumanoidRootPart.Transparency = 0.8;
						until not _G.Kill_Aura or not AutoStartRaid or not v333.Parent or (v333.Humanoid.Health <= 0) 
					end);
				end
			end
		end
	end
end);

function HopServer()
	local Http = game:GetService("HttpService")
	local TPS = game:GetService("TeleportService")
	local Api = "https://games.roblox.com/v1/games/"

	local _place = game.PlaceId
	local _servers = Api.._place.."/servers/Public?sortOrder=Asc&limit=100"
	function ListServers(cursor)
		local Raw = game:HttpGet(_servers .. ((cursor and "&cursor="..cursor) or ""))
		return Http:JSONDecode(Raw)
	end

	local Server, Next; repeat
		local Servers = ListServers(Next)
		Server = Servers.data[1]
		Next = Servers.nextPageCursor
	until Server

	TPS:TeleportToPlaceInstance(_place,Server.id,game.Players.LocalPlayer)
end

task.spawn(function ()
	while wait() do
		if  _G.White_Screen_Auto then
			pcall(function ()
				if iswindowactive() == false then
					v3:Set3dRenderingEnabled(false)
					setfpscap(360);
				elseif iswindowactive() == false then
					v3:Set3dRenderingEnabled(true)
					setfpscap(360);
				elseif isrbxactive() == false then
					v3:Set3dRenderingEnabled(false)
					setfpscap(360);
				elseif isrbxactive() == true then
					v3:Set3dRenderingEnabled(true)
					setfpscap(360);
				end
			end)      
		end
	end
end)

spawn(function ()
	while wait() do
		getgenv().setting = {
			Fov = _G.FovSize,
			Color = _G.CircleColor,
			LockPlayers = _G.AimSkill,
			LockPlayersBind = Enum.KeyCode.L,
			resetPlayersBind = Enum.KeyCode.P,
			OpenFov = _G.ShowFov,
			Distandes = _G.Distance_Player
		}
	end
end)


function MakePa()
	pcall(function ()
		local OldFrame = Instance.new("Part")
		OldFrame.Name = "Old_CFrame"
		OldFrame.Parent = game:GetService("Workspace").SavePosIsland
		OldFrame.Anchored = true
		OldFrame.CanCollide = false
		OldFrame.Transparency = 1
		OldFrame.CanQuery = false
		OldFrame.CanTouch = false
		OldFrame.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
	end)
end
MakePa()


spawn(function ()
	--AimSkill
	Playersaimbot = nil
	local mouse = game.Players.LocalPlayer:GetMouse()
	local guiservice = game.GetService(game, "GuiService")
	local players = game.GetService(game, "Players")
	local localPlayer = players.LocalPlayer
	local currentCamera = game.GetService(game, "Workspace").CurrentCamera
	local circle = Drawing.new("Circle")
	function updateCircle(Fov,colorCircle,OpenFov)
		if circle.__OBJECT_EXISTS then
			circle.Transparency = 0.5
			circle.Visible = OpenFov
			circle.Thickness = 2
			circle.Color = colorCircle
			circle.NumSides = 100
			circle.Radius = (Fov * 6) / 2
			circle.Filled = false
			circle.Position = Vector2.new(mouse.X, mouse.Y + (guiservice.GetGuiInset(guiservice).Y))
		end
	end
	spawn(function()
		game.GetService(game, "RunService").RenderStepped:Connect(function()
			pcall(function()
				updateCircle(getgenv().setting['Fov'],getgenv().setting['Color'],getgenv().setting['OpenFov'])
			end)
		end)
	end)
	spawn(function()
		pcall(function()
			while wait() do
				for i, v in pairs(players.GetPlayers(players)) do
					if game.Workspace.Characters:FindFirstChild(v.Name) or game.Workspace.Characters:FindFirstChild(v.DisplayName) then
						if v.Character:FindFirstChild('HumanoidRootPart') then
							local pos = currentCamera.WorldToViewportPoint(currentCamera, v.Character.HumanoidRootPart.Position)
							local magnitude = (Vector2.new(pos.X, pos.Y) - Vector2.new(mouse.X, mouse.Y)).magnitude
							if getgenv().setting['OpenFov'] then
								if magnitude < (getgenv().setting['Fov'] * 6 -8) /2 then
									if magnitude < math.huge then
										if (v.Character.HumanoidRootPart.Position-game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= tonumber(getgenv().setting['Distandes']) then
											if v.Name ~= game.Players.LocalPlayer.Name then
												if getgenv().setting['LockPlayers'] == true then
													Playersaimbot = v.Name
													PlayersPosition = v.Character.HumanoidRootPart.Position
													v.Character.HumanoidRootPart.Size = Vector3.new(100,100,100)
												end
											end
										end
									end
								end
							else
								if magnitude < (100 * 6 -8) /2 then
									if magnitude < math.huge then
										if (v.Character.HumanoidRootPart.Position-game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= tonumber(getgenv().setting['Distandes']) then
											if v.Name ~= game.Players.LocalPlayer.Name then
												if getgenv().setting['LockPlayers'] == true then
													Playersaimbot = v.Name
													PlayersPosition = v.Character.HumanoidRootPart.Position
													v.Character.HumanoidRootPart.Size = Vector3.new(10,10,10)
												end
											end
										else
											Playersaimbot = nil
											PlayersPosition = nil
											_G.NamePlayersLock = nil
											_G.HealthPlayerLock = nil
										end
									end
								end
							end
						end
					end
				end
			end
		end)
	end)

	spawn(function()
		game.GetService(game, "RunService").RenderStepped:Connect(function()
			if Playersaimbot ~= nil then 
				for i,v in pairs(game.Players:GetChildren()) do
					if v.Name == Playersaimbot then 
						if game.Workspace.Characters:FindFirstChild(v.Name) then
							_G.NamePlayersLock = v.Name
							_G.HealthPlayerLock = math.floor(v.Character.Humanoid.Health).."/"..v.Character.Humanoid.MaxHealth
						end					
					end
				end
			end
		end)
	end)

	game:GetService("UserInputService").InputBegan:Connect(function(io, p)
		if io.KeyCode == getgenv().setting['LockPlayersBind'] then
			if getgenv().setting['LockPlayers'] then
				getgenv().setting['LockPlayers'] = false
				_G.NamePlayersLock = nil
				_G.HealthPlayerLock = nil
			else
				getgenv().setting['LockPlayers'] = true
				_G.NamePlayersLock = nil
				_G.HealthPlayerLock = nil
			end
		end
		if io.KeyCode == getgenv().setting['resetPlayersBind'] then
			Playersaimbot = nil
			PlayersPosition = nil
		end
	end)
	spawn(function()
		game:GetService("RunService").RenderStepped:Connect(function()
			for i,v in pairs(game.Players:GetChildren()) do
				if v.Name == Playersaimbot then
					PlayersPosition = v.Character.HumanoidRootPart.Position
					_G.PosPlayer = v.Character.HumanoidRootPart.Position
				end
			end
		end)
	end)

	task.spawn(function()
		while wait() do
			if (_G.AutoRaids and not _G.AutoFarm) then
				_G.BypassTp = false;
				if (game.Players.LocalPlayer.Backpack:FindFirstChild("Special Microchip") or game.Players.LocalPlayer.Character:FindFirstChild("Special Microchip") or game:GetService("Workspace")['_WorldOrigin'].Locations:FindFirstChild("Island 5") or game:GetService("Workspace")['_WorldOrigin'].Locations:FindFirstChild("Island 4") or game:GetService("Workspace")['_WorldOrigin'].Locations:FindFirstChild("Island 3") or game:GetService("Workspace")['_WorldOrigin'].Locations:FindFirstChild("Island 2") or game:GetService("Workspace")['_WorldOrigin'].Locations:FindFirstChild("Island 1")) then
					if (game.Players.LocalPlayer.Backpack:FindFirstChild("Special Microchip") or (game.Players.LocalPlayer.Character:FindFirstChild("Special Microchip") and (game.Players.LocalPlayer.PlayerGui.Main.Timer.Visible == false))) then
						if New_World then
							fireclickdetector(Workspace.Map.CircleIsland.RaidSummon2.Button.Main.ClickDetector);
						elseif Three_World then
							fireclickdetector(Workspace.Map["Boat Castle"].RaidSummon2.Button.Main.ClickDetector);
						end
						wait(17);
					elseif (game.Players.LocalPlayer.PlayerGui.Main.Timer.Visible == true) then
						pcall(function()
							repeat
								wait();
								if (game.Players.LocalPlayer.PlayerGui.Main.Timer.Visible == false) then
								elseif game:GetService("Workspace")['_WorldOrigin'].Locations:FindFirstChild("Island 5") then
									game:GetService("Workspace")['_WorldOrigin'].Locations:FindFirstChild("Island 5").CFrame = CFrame.new(game:GetService("Workspace")['_WorldOrigin'].Locations:FindFirstChild("Island 5").CFrame.x, 60, game:GetService("Workspace")['_WorldOrigin'].Locations:FindFirstChild("Island 5").CFrame.z);
									if ((game:GetService("Workspace")['_WorldOrigin'].Locations:FindFirstChild("Island 5").Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 350) then
										Farmtween = v47(game:GetService("Workspace")['_WorldOrigin'].Locations:FindFirstChild("Island 5").CFrame);
									elseif ((game:GetService("Workspace")['_WorldOrigin'].Locations:FindFirstChild("Island 5").Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 350) then
										if Farmtween then
											Farmtween:Stop();
										end
										v47(game:GetService("Workspace")['_WorldOrigin'].Locations["Island 5"].CFrame * CFrame.new(4, 65, 10));
									end
								elseif game:GetService("Workspace")['_WorldOrigin'].Locations:FindFirstChild("Island 4") then
									game:GetService("Workspace")['_WorldOrigin'].Locations:FindFirstChild("Island 4").CFrame = CFrame.new(game:GetService("Workspace")['_WorldOrigin'].Locations:FindFirstChild("Island 4").CFrame.x, 60, game:GetService("Workspace")['_WorldOrigin'].Locations:FindFirstChild("Island 4").CFrame.z);
									if ((game:GetService("Workspace")['_WorldOrigin'].Locations:FindFirstChild("Island 4").Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 350) then
										Farmtween = v47(game:GetService("Workspace")['_WorldOrigin'].Locations:FindFirstChild("Island 4").CFrame);
									elseif ((game:GetService("Workspace")['_WorldOrigin'].Locations:FindFirstChild("Island 4").Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 350) then
										if Farmtween then
											Farmtween:Stop();
										end
										v47(game:GetService("Workspace")['_WorldOrigin'].Locations["Island 4"].CFrame * CFrame.new(4, 65, 10));
									end
								elseif game:GetService("Workspace")['_WorldOrigin'].Locations:FindFirstChild("Island 3") then
									game:GetService("Workspace")['_WorldOrigin'].Locations:FindFirstChild("Island 3").CFrame = CFrame.new(game:GetService("Workspace")['_WorldOrigin'].Locations:FindFirstChild("Island 3").CFrame.x, 60, game:GetService("Workspace")['_WorldOrigin'].Locations:FindFirstChild("Island 3").CFrame.z);
									if ((game:GetService("Workspace")['_WorldOrigin'].Locations:FindFirstChild("Island 3").Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 350) then
										Farmtween = v47(game:GetService("Workspace")['_WorldOrigin'].Locations:FindFirstChild("Island 3").CFrame);
									elseif ((game:GetService("Workspace")['_WorldOrigin'].Locations:FindFirstChild("Island 3").Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 350) then
										if Farmtween then
											Farmtween:Stop();
										end
										v47(game:GetService("Workspace")['_WorldOrigin'].Locations["Island 3"].CFrame * CFrame.new(4, 65, 10));
									end
								elseif game:GetService("Workspace")['_WorldOrigin'].Locations:FindFirstChild("Island 2") then
									game:GetService("Workspace")['_WorldOrigin'].Locations:FindFirstChild("Island 2").CFrame = CFrame.new(game:GetService("Workspace")['_WorldOrigin'].Locations:FindFirstChild("Island 2").CFrame.x, 60, game:GetService("Workspace")['_WorldOrigin'].Locations:FindFirstChild("Island 2").CFrame.z);
									if ((game:GetService("Workspace")['_WorldOrigin'].Locations:FindFirstChild("Island 2").Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 350) then
										Farmtween = v47(game:GetService("Workspace")['_WorldOrigin'].Locations:FindFirstChild("Island 2").CFrame);
									elseif ((game:GetService("Workspace")['_WorldOrigin'].Locations:FindFirstChild("Island 2").Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 350) then
										if Farmtween then
											Farmtween:Stop();
										end
										v47(game:GetService("Workspace")['_WorldOrigin'].Locations["Island 2"].CFrame * CFrame.new(4, 65, 10));
									end
								elseif game:GetService("Workspace")['_WorldOrigin'].Locations:FindFirstChild("Island 1") then
									game:GetService("Workspace")['_WorldOrigin'].Locations:FindFirstChild("Island 1").CFrame = CFrame.new(game:GetService("Workspace")['_WorldOrigin'].Locations:FindFirstChild("Island 1").CFrame.x, 60, game:GetService("Workspace")['_WorldOrigin'].Locations:FindFirstChild("Island 1").CFrame.z);
									if ((game:GetService("Workspace")['_WorldOrigin'].Locations:FindFirstChild("Island 1").Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 350) then
										Farmtween = v47(game:GetService("Workspace")['_WorldOrigin'].Locations:FindFirstChild("Island 1").CFrame);
									elseif ((game:GetService("Workspace")['_WorldOrigin'].Locations:FindFirstChild("Island 1").Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 350) then
										if Farmtween then
											Farmtween:Stop();
										end
										v47(game:GetService("Workspace")['_WorldOrigin'].Locations["Island 1"].CFrame * CFrame.new(4, 65, 10));
									end
								end
								for v482, v483 in pairs(game.Workspace.Enemies:GetChildren()) do
									if ( AutoStartRaid and (game.Players.LocalPlayer.PlayerGui.Main.Timer.Visible == true) and v483:FindFirstChild("Humanoid") and v483:FindFirstChild("HumanoidRootPart") and ((v483.HumanoidRootPart.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 400)) then
										repeat
											wait();
											v483.Humanoid.Health = 0;
											v483:BreakJoints();
										until not AutoStartRaid or (v483.Humanoid.Health <= 0) or not v483.Parent 
									end
								end
								if _G.AwakenedAuto then
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Awakener", "Awaken");
								end
							until not game:GetService("Workspace")['_WorldOrigin'].Locations:FindFirstChild("Island 5") or not game:GetService("Workspace")['_WorldOrigin'].Locations:FindFirstChild("Island 4") or not game:GetService("Workspace")['_WorldOrigin'].Locations:FindFirstChild("Island 3") or not game:GetService("Workspace")['_WorldOrigin'].Locations:FindFirstChild("Island 2") or not game:GetService("Workspace")['_WorldOrigin'].Locations:FindFirstChild("Island 1") or (game.Players.LocalPlayer.PlayerGui.Main.Timer.Visible == false) 
							if _G.AwakenedAuto then
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Awakener", "Awaken");
							end
						end);
					end
				else
					if _G.AwakenedAuto then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Awakener", "Awaken");
					end
					if _G.AutoMicrochip then
						local v406 = {[1]="RaidsNpc",[2]="Select",[3]=tostring(_G.Select_Dungeons)};
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v406));
					end
				end
			else
				_G.BypassTp = false;
			end
		end
	end);


	spawn(function()
		local gg = getrawmetatable(game)
		local old = gg.__namecall
		setreadonly(gg,false)
		gg.__namecall = newcclosure(function(...)
			local method = getnamecallmethod()
			local args = {...}
			if tostring(method) == "FireServer" then
				if tostring(args[1]) == "RemoteEvent" then
					if tostring(args[2]) ~= "true" and tostring(args[2]) ~= "false" then
						if Playersaimbot ~= nil then
							args[2] = PlayersPosition
							return old(unpack(args))
						end
					end
				end
			end
			return old(...)
		end)
	end)
	mouse.Button1Down:Connect(function()
		pcall(function()
			if Playersaimbot ~= nil then
				local args = {
					[1] = PlayersPosition,
					[2] = game:GetService("Players"):FindFirstChild(Playersaimbot).Character.HumanoidRootPart
				}
				game:GetService("Players").LocalPlayer.Character[game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteFunctionShoot:InvokeServer(unpack(args))
			end
		end)
	end)
end)

spawn(function ()

	for i,v in pairs(game.Players:GetChildren()) do
		local Tracer = Drawing.new("Line")
		Tracer.Visible = false
		Tracer.Thickness = 3
		Tracer.Transparency = 1
		local function lineesp()
			game:GetService("RunService").RenderStepped:Connect(function()
				Tracer.Color = _G.CircleColor
				if v.Character ~= nil and v.Character:FindFirstChild("Humanoid") ~= nil and v.Character:FindFirstChild("HumanoidRootPart") ~= nil and v ~= localPlayer and v.Character.Humanoid.Health > 0 then
					if _G.PosPlayer == nil and not _G.tracerState then
					else
						pcall(function ()
							local Vector, OnScreen = camera:worldToViewportPoint(CFrame.new(_G.PosPlayer).Position)
							if OnScreen then
								Tracer.From = Vector2.new(camera.ViewportSize.X / 2, camera.ViewportSize.Y / 2)
								Tracer.To = Vector2.new(Vector.X, Vector.Y)
								Tracer.Visible = _G.tracerState
							else
								Tracer.Visible = false
							end
						end)
					end
				else
					Tracer.Visible = false
				end
			end)
		end
		coroutine.wrap(lineesp)()
	end

end)


spawn(function ()
	local UIS = game:GetService("UserInputService")
	local Player = game.Players.LocalPlayer
	local Mouse = Player:GetMouse()
	function GetCharacter()
		return game.Players.LocalPlayer.Character
	end
	function Teleport(pos)
		local Char = GetCharacter()
		if Char then
			Char:MoveTo(pos)
		end
	end
	UIS.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 and UIS:IsKeyDown(Enum.KeyCode.LeftControl) and _G.CTRLTP then
			Teleport(Mouse.Hit.p)
		end
	end)
end)


spawn(function ()
	local Test = Instance.new("Part")
	Test.Parent = game.Workspace.SavePosIsland
	Test.Size = Vector3.new(32,2,32)
	Test.CFrame = CFrame.new(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame.x,-5,game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame.z)
	Test.Anchored = true
	Test.Name = "WWN"
	Test.Transparency = 1
end)

spawn(function ()
	game.GetService(game, "RunService").RenderStepped:Connect(function()
		getgenv().WalkOnwalter = _G.WalkOnWater
		if getgenv().WalkOnwalter then
			game.Workspace.SavePosIsland.WWN.CFrame = CFrame.new(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame.x,-5,game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame.z)
		end
		if getgenv().WalkOnwalter == false then
			game.Workspace.SavePosIsland.WWN.CFrame = CFrame.new(0,100000,0)
		end
	end)
end)


function ChangesBoatposition()
	pcall(function ()
		if game:GetService("Workspace").Boats:FindFirstChild("Dinghy") then
			game:GetService("Workspace").Boats:FindFirstChild("Dinghy").VehicleSeat.BodyPosition.Position = Vector3.new(0,_G.FigPos,0)
		end
		if game:GetService("Workspace").Boats:FindFirstChild("RocketBoost") then
			game:GetService("Workspace").Boats:FindFirstChild("RocketBoost").VehicleSeat.BodyPosition.Position = Vector3.new(0,_G.FigPos,0)
		end
		if game:GetService("Workspace").Boats:FindFirstChild("Enforcer") then
			game:GetService("Workspace").Boats:FindFirstChild("Enforcer").VehicleSeat.BodyPosition.Position = Vector3.new(0,_G.FigPos,0)
		end
		if game:GetService("Workspace").Boats:FindFirstChild("MarineSloop") then
			game:GetService("Workspace").Boats:FindFirstChild("MarineSloop").VehicleSeat.BodyPosition.Position = Vector3.new(0,_G.FigPos,0)
		end
		if game:GetService("Workspace").Boats:FindFirstChild("MarineBasic") then
			game:GetService("Workspace").Boats:FindFirstChild("MarineBasic").VehicleSeat.BodyPosition.Position = Vector3.new(0,_G.FigPos,0)
		end
		if game:GetService("Workspace").Boats:FindFirstChild("MarineBrigade") then
			game:GetService("Workspace").Boats:FindFirstChild("MarineBrigade").VehicleSeat.BodyPosition.Position = Vector3.new(0,_G.FigPos,0)
		end
		if game:GetService("Workspace").Boats:FindFirstChild("PirateSloop") then
			game:GetService("Workspace").Boats:FindFirstChild("PirateSloop").VehicleSeat.BodyPosition.Position = Vector3.new(0,_G.FigPos,0)
		end
		if game:GetService("Workspace").Boats:FindFirstChild("PirateBasic") then
			game:GetService("Workspace").Boats:FindFirstChild("PirateBasic").VehicleSeat.BodyPosition.Position = Vector3.new(0,_G.FigPos,0)
		end
		if game:GetService("Workspace").Boats:FindFirstChild("PirateBrigade").VehicleSeat then
			game:GetService("Workspace").Boats:FindFirstChild("PirateBrigade").VehicleSeat.BodyPosition.Position = Vector3.new(0,_G.FigPos,0)
		end
	end)
end

function AutoHaki()
	if not game:GetService("Players").LocalPlayer.Character:FindFirstChild("HasBuso") then
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso");
	end
end
function Equip(v128)
	if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(v128) then
		getgenv().Tol = game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(v128);
		game.Players.LocalPlayer.Character.Humanoid:EquipTool(Tol);
	end
end



function DelQuest()
	local args = {[1] = "AbandonQuest"}
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end

writefile("Manake Hub Premium script/OldBounty_"..game.Players.LocalPlayer.Name..".txt" , tostring(game.Players.LocalPlayer.leaderstats["Bounty/Honor"].Value))
writefile("Manake Hub Premium script/KeepNowBounty_"..game.Players.LocalPlayer.Name..".txt" , tostring(game.Players.LocalPlayer.leaderstats["Bounty/Honor"].Value))

task.spawn(function ()
	while wait() do
		EurbedBounty:Set("{ Earned Bounty : "..tostring(game.Players.LocalPlayer.leaderstats["Bounty/Honor"].Value - tonumber(readfile("Manake Hub Premium script/KeepNowBounty_"..game.Players.LocalPlayer.Name..".txt"))).." }")
		writefile("Manake Hub Premium script/Bountyadded_"..game.Players.LocalPlayer.Name..".txt" ,game.Players.LocalPlayer.leaderstats["Bounty/Honor"].Value - tonumber(readfile("Manake Hub Premium script/KeepNowBounty_"..game.Players.LocalPlayer.Name..".txt")))
	end
end)


function CheckQuest()
	local v132 = game.Players.LocalPlayer.Data.Level.Value;
	if Old_World then
		if ((v132 == 1) or (v132 <= 9)) then
			LevelFarm = 1;
			Name = "Bandit [Lv. 5]";
			QuestName = "BanditQuest1";
			LevelQuest = 1;
			NameMon = "Bandit";
			CFrameMon = CFrame.new(1145, 17, 1634);
			VectorMon = Vector3.new(1145, 17, 1634);
			CFrameQuest = CFrame.new(1060, 17, 1547);
			VectorQuest = Vector3.new(1060, 17, 1547);
		elseif ((v132 == 10) or (v132 <= 14)) then

			LevelFarm = 2;
			Name = "Monkey [Lv. 14]";
			QuestName = "JungleQuest";
			LevelQuest = 1;
			NameMon = "Monkey";
			CFrameMon = CFrame.new(-1496, 39, 35);
			VectorMon = Vector3.new(-1496, 39, 35);
			CFrameQuest = CFrame.new(-1602, 37, 152);
			VectorQuest = Vector3.new(-1602, 37, 152);
		elseif ((v132 == 15) or (v132 <= 29)) then

			LevelFarm = 3;
			Name = "Gorilla [Lv. 20]";
			QuestName = "JungleQuest";
			LevelQuest = 2;
			NameMon = "Gorilla";
			CFrameMon = CFrame.new(-1237, 6, -486);
			VectorMon = Vector3.new(-1237, 7, -486);
			CFrameQuest = CFrame.new(-1602, 37, 152);
			VectorQuest = Vector3.new(-1602, 37, 152);
		elseif ((v132 == 30) or (v132 <= 39)) then
			LevelFarm = 4;
			Name = "Pirate [Lv. 35]";
			QuestName = "BuggyQuest1";
			LevelQuest = 1;
			NameMon = "Pirate";
			CFrameMon = CFrame.new(-1115, 14, 3938);
			VectorMon = Vector3.new(-1115, 14, 3938);
			CFrameQuest = CFrame.new(-1140, 5, 3828);
			VectorQuest = Vector3.new(-1140, 5, 3828);
		elseif ((v132 == 40) or (v132 <= 59)) then
			LevelFarm = 5;
			Name = "Brute [Lv. 45]";
			QuestName = "BuggyQuest1";
			LevelQuest = 2;
			NameMon = "Brute";
			CFrameMon = CFrame.new(-1145, 15, 4350);
			VectorMon = Vector3.new(-1146, 15, 4350);
			CFrameQuest = CFrame.new(-1140, 5, 3828);
			VectorQuest = Vector3.new(-1140, 5, 3828);
		elseif ((v132 == 60) or (v132 <= 74)) then
			LevelFarm = 6;
			Name = "Desert Bandit [Lv. 60]";
			QuestName = "DesertQuest";
			LevelQuest = 1;
			NameMon = "Desert Bandit";
			CFrameMon = CFrame.new(932, 7, 4484);
			VectorMon = Vector3.new(932, 7, 4484);
			CFrameQuest = CFrame.new(897, 7, 4388);
			VectorQuest = Vector3.new(897, 7, 4388);
		elseif ((v132 == 75) or (v132 <= 89)) then
			LevelFarm = 7;
			Name = "Desert Officer [Lv. 70]";
			QuestName = "DesertQuest";
			LevelQuest = 2;
			NameMon = "Desert Officer";
			CFrameMon = CFrame.new(1572, 10, 4373);
			VectorMon = Vector3.new(1572, 10, 4373);
			CFrameQuest = CFrame.new(897, 7, 4388);
			VectorQuest = Vector3.new(897, 7, 4388);
		elseif ((v132 == 90) or (v132 <= 99)) then
			LevelFarm = 8;
			Name = "Snow Bandit [Lv. 90]";
			QuestName = "SnowQuest";
			LevelQuest = 1;
			NameMon = "Snow Bandits";
			CFrameMon = CFrame.new(1289, 150, -1442);
			VectorMon = Vector3.new(1289, 106, -1442);
			CFrameQuest = CFrame.new(1386, 87, -1297);
			VectorQuest = Vector3.new(1386, 87, -1297);
		elseif ((v132 == 100) or (v132 <= 119)) then
			LevelFarm = 9;
			Name = "Snowman [Lv. 100]";
			QuestName = "SnowQuest";
			LevelQuest = 2;
			NameMon = "Snowman";
			CFrameMon = CFrame.new(1289, 150, -1442);
			VectorMon = Vector3.new(1289, 106, -1442);
			CFrameQuest = CFrame.new(1386, 87, -1297);
			VectorQuest = Vector3.new(1386, 87, -1297);
		elseif ((v132 == 120) or (v132 <= 149)) then
			LevelFarm = 10;
			Name = "Chief Petty Officer [Lv. 120]";
			QuestName = "MarineQuest2";
			LevelQuest = 1;
			NameMon = "Chief Petty Officer";
			CFrameMon = CFrame.new(-4855, 23, 4308);
			VectorMon = Vector3.new(-4855, 23, 4308);
			CFrameQuest = CFrame.new(-5036, 29, 4325);
			VectorQuest = Vector3.new(-5036, 29, 4325);
		elseif ((v132 == 150) or (v132 <= 174)) then
			LevelFarm = 11;
			Name = "Sky Bandit [Lv. 150]";
			QuestName = "SkyQuest";
			LevelQuest = 1;
			NameMon = "Sky Bandit";
			CFrameMon = CFrame.new(-4981, 278, -2830);
			VectorMon = Vector3.new(-4981, 278, -2830);
			CFrameQuest = CFrame.new(-4842, 718, -2623);
			VectorQuest = Vector3.new(-4842, 718, -2623);
		elseif ((v132 == 175) or (v132 <= 189)) then
			LevelFarm = 12;
			Name = "Dark Master [Lv. 175]";
			QuestName = "SkyQuest";
			LevelQuest = 2;
			NameMon = "Dark Master";
			CFrameMon = CFrame.new(-5250, 389, -2272);
			VectorMon = Vector3.new(-5250, 389, -2272);
			CFrameQuest = CFrame.new(-4842, 718, -2623);
			VectorQuest = Vector3.new(-4842, 718, -2623);
		elseif ((v132 == 190) or (v132 <= 209)) then
			LevelFarm = 13;
			Name = "Prisoner [Lv. 190]";
			QuestName = "PrisonerQuest";
			LevelQuest = 1;
			NameMon = "Prisoner";
			CFrameMon = CFrame.new(5090.36, 64.652, 392.019);
			VectorMon = Vector3.new(5090.36, 64.652, 392.019);
			CFrameQuest = CFrame.new(5308, 2, 474);
			VectorQuest = Vector3.new(5308, 2, 474);
		elseif ((v132 == 210) or (v132 <= 249)) then
			LevelFarm = 14;
			Name = "Dangerous Prisoner [Lv. 210]";
			QuestName = "PrisonerQuest";
			LevelQuest = 2;
			NameMon = "Dangerous Prisoner";
			CFrameMon = CFrame.new(5682.91, 64.6515, 755.463);
			VectorMon = Vector3.new(5682.91, 64.6515, 755.463);
			CFrameQuest = CFrame.new(5308, 2, 474);
			VectorQuest = Vector3.new(5308, 2, 474);
		elseif ((v132 == 250) or (v132 <= 299)) then
			LevelFarm = 15;
			Name = "Toga Warrior [Lv. 250]";
			QuestName = "ColosseumQuest";
			LevelQuest = 1;
			NameMon = "Toga Warrior";
			CFrameMon = CFrame.new(-1824, 50, -2743);
			VectorMon = Vector3.new(-1824, 50, -2743);
			CFrameQuest = CFrame.new(-1576, 8, -2985);
			VectorQuest = Vector3.new(-1576, 8, -2985);
		elseif ((v132 == 300) or (v132 <= 329)) then
			LevelFarm = 16;
			Name = "Military Soldier [Lv. 300]";
			QuestName = "MagmaQuest";
			LevelQuest = 1;
			NameMon = "Military Soldier";
			CFrameMon = CFrame.new(-5408, 11, 8447);
			VectorMon = Vector3.new(-5408, 11, 8447);
			CFrameQuest = CFrame.new(-5316, 12, 8517);
			VectorQuest = Vector3.new(-5316, 12, 8517);
		elseif ((v132 == 330) or (v132 <= 374)) then
			LevelFarm = 17;
			Name = "Military Spy [Lv. 325]";
			QuestName = "MagmaQuest";
			LevelQuest = 2;
			NameMon = "Military Spy";
			CFrameMon = CFrame.new(-5815, 84, 8820);
			VectorMon = Vector3.new(-5815, 84, 8820);
			CFrameQuest = CFrame.new(-5316, 12, 8517);
			VectorQuest = Vector3.new(-5316, 12, 8517);
		elseif ((v132 == 375) or (v132 <= 399)) then
			LevelFarm = 18;
			Name = "Fishman Warrior [Lv. 375]";
			QuestName = "FishmanQuest";
			LevelQuest = 1;
			NameMon = "Fishman Warrior";
			CFrameMon = CFrame.new(60859, 19, 1501);
			VectorMon = Vector3.new(60859, 19, 1501);
			CFrameQuest = CFrame.new(61123, 19, 1569);
			VectorQuest = Vector3.new(61123, 19, 1569);
			if ((CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000) then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(61163.8515625, 11.6796875, 1819.7841796875));
			end
		elseif ((v132 == 400) or (v132 <= 449)) then
			LevelFarm = 19;
			Name = "Fishman Commando [Lv. 400]";
			QuestName = "FishmanQuest";
			LevelQuest = 2;
			NameMon = "Fishman Commando";
			CFrameMon = CFrame.new(61891, 19, 1470);
			VectorMon = Vector3.new(61891, 19, 1470);
			CFrameQuest = CFrame.new(61123, 19, 1569);
			VectorQuest = Vector3.new(61123, 19, 1569);
			if ((CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000) then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(61163.8515625, 11.6796875, 1819.7841796875));
			end
		elseif ((v132 == 450) or (v132 <= 474)) then
			LevelFarm = 20;
			Name = "God's Guard [Lv. 450]";
			QuestName = "SkyExp1Quest";
			LevelQuest = 1;
			NameMon = "God's Guards";
			CFrameMon = CFrame.new(-4698, 845, -1912);
			VectorMon = Vector3.new(-4698, 845, -1912);
			CFrameQuest = CFrame.new(-4722, 845, -1954);
			VectorQuest = Vector3.new(-4722, 846, -1954);
			if (AutoFarm and ((CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000)) then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(-4607.82275, 872.54248, -1667.55688));
			end
		elseif ((v132 == 475) or (v132 <= 524)) then
			LevelFarm = 21;
			Name = "Shanda [Lv. 475]";
			QuestName = "SkyExp1Quest";
			LevelQuest = 2;
			NameMon = "Shandas";
			CFrameMon = CFrame.new(-7685, 5567, -502);
			VectorMon = Vector3.new(-7685, 5567, -502);
			CFrameQuest = CFrame.new(-7862, 5546, -380);
			VectorQuest = Vector3.new(-7862, 5546, -380);
			if (AutoFarm and ((CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000)) then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(-4607.82275, 872.54248, -1667.55688));
			end
		elseif ((v132 == 525) or (v132 <= 549)) then
			LevelFarm = 22;
			Name = "Royal Squad [Lv. 525]";
			QuestName = "SkyExp2Quest";
			LevelQuest = 1;
			NameMon = "Royal Squad";
			CFrameMon = CFrame.new(-7670, 5607, -1460);
			VectorMon = Vector3.new(-7670, 5607, -1460);
			CFrameQuest = CFrame.new(-7904, 5636, -1412);
			VectorQuest = Vector3.new(-7904, 5636, -1412);
		elseif ((v132 == 550) or (v132 <= 624)) then
			LevelFarm = 23;
			Name = "Royal Soldier [Lv. 550]";
			QuestName = "SkyExp2Quest";
			LevelQuest = 2;
			NameMon = "Royal Soldier";
			CFrameMon = CFrame.new(-7828, 5607, -1744);
			VectorMon = Vector3.new(-7828, 5607, -1744);
			CFrameQuest = CFrame.new(-7904, 5636, -1412);
			VectorQuest = Vector3.new(-7904, 5636, -1412);
		elseif ((v132 == 625) or (v132 <= 649)) then
			LevelFarm = 24;
			Name = "Galley Pirate [Lv. 625]";
			QuestName = "FountainQuest";
			LevelQuest = 1;
			NameMon = "Galley Pirate";
			CFrameMon = CFrame.new(5589, 45, 3996);
			VectorMon = Vector3.new(5589, 45, 3996);
			CFrameQuest = CFrame.new(5256, 39, 4050);
			VectorQuest = Vector3.new(5256, 39, 4050);
		elseif (v132 >= 650) then
			LevelFarm = 25;
			Name = "Galley Captain [Lv. 650]";
			QuestName = "FountainQuest";
			LevelQuest = 2;
			NameMon = "Galley Captain";
			CFrameMon = CFrame.new(5649, 39, 4936);
			VectorMon = Vector3.new(5649, 39, 4936);
			CFrameQuest = CFrame.new(5256, 39, 4050);
			VectorQuest = Vector3.new(5256, 39, 4050);
		end
	end
	if New_World then
		if ((v132 == 700) or (v132 <= 724)) then
			LevelFarm = 1;
			Name = "Raider [Lv. 700]";
			QuestName = "Area1Quest";
			LevelQuest = 1;
			NameMon = "Raider";
			CFrameQuest = CFrame.new(-425, 73, 1837);
			VectorQuest = Vector3.new(-425, 73, 1837);
			CFrameMon = CFrame.new(-746, 39, 2390);
			VectorMon = Vector3.new(-746, 39, 2389);
		elseif ((v132 == 725) or (v132 <= 774)) then
			LevelFarm = 2;
			Name = "Mercenary [Lv. 725]";
			QuestName = "Area1Quest";
			LevelQuest = 2;
			NameMon = "Mercenary";
			CFrameQuest = CFrame.new(-425, 73, 1837);
			VectorQuest = Vector3.new(-425, 73, 1837);
			CFrameMon = CFrame.new(-874, 141, 1312);
			VectorMon = Vector3.new(-874, 141, 1312);
		elseif ((v132 == 775) or (v132 <= 799)) then
			LevelFarm = 3;
			Name = "Swan Pirate [Lv. 775]";
			QuestName = "Area2Quest";
			LevelQuest = 1;
			NameMon = "Swan Pirate";
			CFrameQuest = CFrame.new(634, 73, 918);
			VectorQuest = Vector3.new(634, 73, 918);
			CFrameMon = CFrame.new(878, 122, 1235);
			VectorMon = Vector3.new(878, 122, 1235);
		elseif ((v132 == 800) or (v132 <= 874)) then
			LevelFarm = 4;
			Name = "Factory Staff [Lv. 800]";
			QuestName = "Area2Quest";
			LevelQuest = 2;
			NameMon = "Factory Staff";
			CFrameQuest = CFrame.new(634, 73, 918);
			VectorQuest = Vector3.new(634, 73, 918);
			CFrameMon = CFrame.new(295, 73, -56);
			VectorMon = Vector3.new(295, 73, -56);
		elseif ((v132 == 875) or (v132 <= 899)) then
			LevelFarm = 5;
			Name = "Marine Lieutenant [Lv. 875]";
			QuestName = "MarineQuest3";
			LevelQuest = 1;
			NameMon = "Marine Lieutenant";
			CFrameMon = CFrame.new(-2806, 73, -3038);
			VectorMon = Vector3.new(-2806, 73, -3038);
			CFrameQuest = CFrame.new(-2443, 73, -3219);
			VectorQuest = Vector3.new(-2443, 73, -3219);
		elseif ((v132 == 900) or (v132 <= 949)) then
			LevelFarm = 6;
			Name = "Marine Captain [Lv. 900]";
			QuestName = "MarineQuest3";
			LevelQuest = 2;
			NameMon = "Marine Captain";
			CFrameMon = CFrame.new(-1869, 73, -3320);
			VectorMon = Vector3.new(-1869, 73, -3320);
			CFrameQuest = CFrame.new(-2443, 73, -3219);
			VectorQuest = Vector3.new(-2443, 73, -3219);
		elseif ((v132 == 950) or (v132 <= 974)) then
			LevelFarm = 7;
			Name = "Zombie [Lv. 950]";
			QuestName = "ZombieQuest";
			LevelQuest = 1;
			NameMon = "Zombie";
			CFrameMon = CFrame.new(-5736, 126, -728);
			VectorMon = Vector3.new(-5736, 126, -728);
			CFrameQuest = CFrame.new(-5494, 49, -795);
			VectorQuest = Vector3.new(-5494, 49, -794);
		elseif ((v132 == 975) or (v132 <= 999)) then
			LevelFarm = 8;
			Name = "Vampire [Lv. 975]";
			QuestName = "ZombieQuest";
			LevelQuest = 2;
			NameMon = "Vampire";
			CFrameMon = CFrame.new(-6033, 7, -1317);
			VectorMon = Vector3.new(-6033, 7, -1317);
			CFrameQuest = CFrame.new(-5494, 49, -795);
			VectorQuest = Vector3.new(-5494, 49, -795);
		elseif ((v132 == 1000) or (v132 <= 1049)) then
			LevelFarm = 9;
			Name = "Snow Trooper [Lv. 1000]";
			QuestName = "SnowMountainQuest";
			LevelQuest = 1;
			NameMon = "Snow Trooper";
			CFrameMon = CFrame.new(478, 402, -5362);
			VectorMon = Vector3.new(478, 402, -5362);
			CFrameQuest = CFrame.new(605, 402, -5371);
			VectorQuest = Vector3.new(605, 402, -5371);
		elseif ((v132 == 1050) or (v132 <= 1099)) then
			LevelFarm = 10;
			Name = "Winter Warrior [Lv. 1050]";
			QuestName = "SnowMountainQuest";
			LevelQuest = 2;
			NameMon = "Winter Warrior";
			CFrameMon = CFrame.new(1157, 430, -5188);
			VectorMon = Vector3.new(1157, 430, -5188);
			CFrameQuest = CFrame.new(605, 402, -5371);
			VectorQuest = Vector3.new(605, 402, -5371);
		elseif ((v132 == 1100) or (v132 <= 1124)) then
			LevelFarm = 11;
			Name = "Lab Subordinate [Lv. 1100]";
			QuestName = "IceSideQuest";
			LevelQuest = 1;
			NameMon = "Lab Subordinate";
			CFrameMon = CFrame.new(-5782, 42, -4484);
			VectorMon = Vector3.new(-5782, 42, -4484);
			CFrameQuest = CFrame.new(-6060, 16, -4905);
			VectorQuest = Vector3.new(-6060, 16, -4905);
		elseif ((v132 == 1125) or (v132 <= 1174)) then
			LevelFarm = 12;
			Name = "Horned Warrior [Lv. 1125]";
			QuestName = "IceSideQuest";
			LevelQuest = 2;
			NameMon = "Horned Warrior";
			CFrameMon = CFrame.new(-6406, 24, -5805);
			VectorMon = Vector3.new(-6406, 24, -5805);
			CFrameQuest = CFrame.new(-6060, 16, -4905);
			VectorQuest = Vector3.new(-6060, 16, -4905);
		elseif ((v132 == 1175) or (v132 <= 1199)) then
			LevelFarm = 13;
			Name = "Magma Ninja [Lv. 1175]";
			QuestName = "FireSideQuest";
			LevelQuest = 1;
			NameMon = "Magma Ninja";
			CFrameMon = CFrame.new(-5428, 78, -5959);
			VectorMon = Vector3.new(-5428, 78, -5959);
			CFrameQuest = CFrame.new(-5430, 16, -5295);
			VectorQuest = Vector3.new(-5430, 16, -5296);
		elseif ((v132 == 1200) or (v132 <= 1249)) then
			LevelFarm = 14;
			Name = "Lava Pirate [Lv. 1200]";
			QuestName = "FireSideQuest";
			LevelQuest = 2;
			NameMon = "Lava Pirate";
			CFrameMon = CFrame.new(-5270, 42, -4800);
			VectorMon = Vector3.new(-5270, 42, -4800);
			CFrameQuest = CFrame.new(-5430, 16, -5295);
			VectorQuest = Vector3.new(-5430, 16, -5296);
		elseif ((v132 == 1250) or (v132 <= 1274)) then
			LevelFarm = 15;
			Name = "Ship Deckhand [Lv. 1250]";
			QuestName = "ShipQuest1";
			LevelQuest = 1;
			NameMon = "Ship Deckhand";
			CFrameMon = CFrame.new(1198, 126, 33031);
			VectorMon = Vector3.new(1198, 126, 33031);
			CFrameQuest = CFrame.new(1038, 125, 32913);
			VectorQuest = Vector3.new(1038, 125, 32913);
		elseif ((v132 == 1275) or (v132 <= 1299)) then
			LevelFarm = 16;
			Name = "Ship Engineer [Lv. 1275]";
			QuestName = "ShipQuest1";
			LevelQuest = 2;
			NameMon = "Ship Engineer";
			CFrameMon = CFrame.new(918, 44, 32787);
			VectorMon = Vector3.new(918, 44, 32787);
			CFrameQuest = CFrame.new(1038, 125, 32913);
			VectorQuest = Vector3.new(1038, 125, 32913);
		elseif ((v132 == 1300) or (v132 <= 1324)) then
			LevelFarm = 17;
			Name = "Ship Steward [Lv. 1300]";
			QuestName = "ShipQuest2";
			LevelQuest = 1;
			NameMon = "Ship Steward";
			CFrameMon = CFrame.new(915, 130, 33419);
			VectorMon = Vector3.new(915, 130, 33419);
			CFrameQuest = CFrame.new(969, 125, 33245);
			VectorQuest = Vector3.new(969, 125, 33245);
		elseif ((v132 == 1325) or (v132 <= 1349)) then
			LevelFarm = 18;
			Name = "Ship Officer [Lv. 1325]";
			QuestName = "ShipQuest2";
			LevelQuest = 2;
			NameMon = "Ship Officer";
			CFrameMon = CFrame.new(916, 181, 33335);
			VectorMon = Vector3.new(916, 181, 33335);
			CFrameQuest = CFrame.new(969, 125, 33245);
			VectorQuest = Vector3.new(969, 125, 33245);
		elseif ((v132 == 1350) or (v132 <= 1374)) then
			LevelFarm = 19;
			Name = "Arctic Warrior [Lv. 1350]";
			QuestName = "FrostQuest";
			LevelQuest = 1;
			NameMon = "Arctic Warrior";
			CFrameMon = CFrame.new(6038, 29, -6231);
			VectorMon = Vector3.new(6038, 29, -6231);
			VectorQuest = Vector3.new(5669, 28, -6482);
			CFrameQuest = CFrame.new(5669, 28, -6482);
		elseif ((v132 == 1375) or (v132 <= 1424)) then
			LevelFarm = 20;
			Name = "Snow Lurker [Lv. 1375]";
			QuestName = "FrostQuest";
			LevelQuest = 2;
			NameMon = "Snow Lurker";
			CFrameMon = CFrame.new(5560, 42, -6826);
			VectorMon = Vector3.new(5560, 42, -6826);
			VectorQuest = Vector3.new(5669, 28, -6482);
			CFrameQuest = CFrame.new(5669, 28, -6482);
		elseif ((v132 == 1425) or (v132 <= 1449)) then
			LevelFarm = 21;
			Name = "Sea Soldier [Lv. 1425]";
			QuestName = "ForgottenQuest";
			LevelQuest = 1;
			NameMon = "Sea Soldier";
			CFrameMon = CFrame.new(-3022, 16, -9722);
			VectorMon = Vector3.new(-3022, 16, -9722);
			CFrameQuest = CFrame.new(-3054, 237, -10148);
			VectorQuest = Vector3.new(-3054, 237, -10148);
		elseif (v132 >= 1450) then
			LevelFarm = 22;
			Name = "Water Fighter [Lv. 1450]";
			QuestName = "ForgottenQuest";
			LevelQuest = 2;
			NameMon = "Water Fighter";
			CFrameMon = CFrame.new(-3385, 239, -10542);
			VectorMon = Vector3.new(-3385, 239, -10542);
			CFrameQuest = CFrame.new(-3054, 237, -10148);
			VectorQuest = Vector3.new(-3054, 237, -10148);
		end
	end
	if Three_World then
		if ((v132 == 1500) or (v132 <= 1524)) then
			LevelFarm = 1;
			Name = "Pirate Millionaire [Lv. 1500]";
			QuestName = "PiratePortQuest";
			LevelQuest = 1;
			NameMon = "Pirate";
			CFrameMon = CFrame.new(-373, 75, 5550);
			VectorMon = Vector3.new(-373, 75, 5550);
			CFrameQuest = CFrame.new(-288, 44, 5576);
			VectorQuest = Vector3.new(-288, 44, 5576);
		elseif ((v132 == 1525) or (v132 <= 1574)) then
			LevelFarm = 2;
			Name = "Pistol Billionaire [Lv. 1525]";
			QuestName = "PiratePortQuest";
			LevelQuest = 2;
			NameMon = "Pistol";
			CFrameMon = CFrame.new(-469, 74, 5904);
			VectorMon = Vector3.new(-469, 74, 5904);
			CFrameQuest = CFrame.new(-288, 44, 5576);
			VectorQuest = Vector3.new(-288, 44, 5576);
		elseif ((v132 == 1575) or (v132 <= 1599)) then
			LevelFarm = 3;
			Name = "Dragon Crew Warrior [Lv. 1575]";
			QuestName = "AmazonQuest";
			LevelQuest = 1;
			NameMon = "Warrior";
			CFrameMon = CFrame.new(6339, 52, -1213);
			VectorMon = Vector3.new(6338, 52, -1213);
			CFrameQuest = CFrame.new(5835, 52, -1105);
			VectorQuest = Vector3.new(5835, 52, -1105);
		elseif ((v132 == 1600) or (v132 <= 1624)) then
			LevelFarm = 4;
			Name = "Dragon Crew Archer [Lv. 1600]";
			QuestName = "AmazonQuest";
			LevelQuest = 2;
			NameMon = "Archer";
			CFrameMon = CFrame.new(6594, 383, 139);
			VectorMon = Vector3.new(6594, 383, 139);
			CFrameQuest = CFrame.new(5835, 52, -1105);
			VectorQuest = Vector3.new(5835, 52, -1105);
		elseif ((v132 == 1625) or (v132 <= 1649)) then
			LevelFarm = 5;
			Name = "Female Islander [Lv. 1625]";
			QuestName = "AmazonQuest2";
			LevelQuest = 1;
			NameMon = "Female";
			CFrameMon = CFrame.new(5308, 819, 1047);
			VectorMon = Vector3.new(5308, 819, 1047);
			CFrameQuest = CFrame.new(5443, 602, 751);
			VectorQuest = Vector3.new(5443, 602, 751);
		elseif ((v132 == 1650) or (v132 <= 1699)) then
			LevelFarm = 6;
			Name = "Giant Islander [Lv. 1650]";
			QuestName = "AmazonQuest2";
			LevelQuest = 2;
			NameMon = "Giant Islanders";
			CFrameMon = CFrame.new(4951, 602, -68);
			VectorMon = Vector3.new(4951, 602, -68);
			CFrameQuest = CFrame.new(5443, 602, 751);
			VectorQuest = Vector3.new(5443, 602, 751);
		elseif ((v132 == 1700) or (v132 <= 1724)) then
			LevelFarm = 7;
			Name = "Marine Commodore [Lv. 1700]";
			QuestName = "MarineTreeIsland";
			LevelQuest = 1;
			NameMon = "Marine Commodore";
			CFrameMon = CFrame.new(2447, 73, -7470);
			VectorMon = Vector3.new(2447, 73, -7470);
			CFrameQuest = CFrame.new(2180, 29, -6737);
			VectorQuest = Vector3.new(2180, 29, -6737);
		elseif ((v132 == 1725) or (v132 <= 1774)) then
			LevelFarm = 8;
			Name = "Marine Rear Admiral [Lv. 1725]";
			QuestName = "MarineTreeIsland";
			LevelQuest = 2;
			NameMon = "Marine Rear Admiral";
			CFrameMon = CFrame.new(3671, 161, -6932);
			VectorMon = Vector3.new(3671, 161, -6932);
			CFrameQuest = CFrame.new(2180, 29, -6737);
			VectorQuest = Vector3.new(2180, 29, -6737);
		elseif ((v132 == 1775) or (v132 <= 1800)) then
			LevelFarm = 9;
			Name = "Fishman Raider [Lv. 1775]";
			QuestName = "DeepForestIsland3";
			LevelQuest = 1;
			NameMon = "Fishman Raider";
			CFrameMon = CFrame.new(-10560, 332, -8466);
			VectorMon = Vector3.new(-10560, 332, -8466);
			CFrameQuest = CFrame.new(-10584, 332, -8758);
			VectorQuest = Vector3.new(-10584, 332, -8758);
		elseif ((v132 == 1800) or (v132 <= 1824)) then
			LevelFarm = 10;
			Name = "Fishman Captain [Lv. 1800]";
			QuestName = "DeepForestIsland3";
			LevelQuest = 2;
			NameMon = "Fishman Captain";
			CFrameMon = CFrame.new(-10993, 332, -8940);
			VectorMon = Vector3.new(-10993, 332, -8940);
			CFrameQuest = CFrame.new(-10584, 332, -8758);
			VectorQuest = Vector3.new(-10584, 332, -8758);
		elseif ((v132 == 1825) or (v132 <= 1849)) then
			LevelFarm = 11;
			Name = "Forest Pirate [Lv. 1825]";
			QuestName = "DeepForestIsland";
			LevelQuest = 1;
			NameMon = "Forest Pirate";
			CFrameMon = CFrame.new(-13479, 333, -7905);
			VectorMon = Vector3.new(-13479, 333, -7905);
			CFrameQuest = CFrame.new(-13232, 333, -7627);
			VectorQuest = Vector3.new(-13232, 333, -7627);
		elseif ((v132 == 1850) or (v132 <= 1899)) then
			LevelFarm = 12;
			Name = "Mythological Pirate [Lv. 1850]";
			QuestName = "DeepForestIsland";
			LevelQuest = 2;
			NameMon = "Mythological Pirate";
			CFrameMon = CFrame.new(-13545, 470, -6917);
			VectorMon = Vector3.new(-13545, 470, -6917);
			CFrameQuest = CFrame.new(-13232, 333, -7627);
			VectorQuest = Vector3.new(-13232, 333, -7627);
		elseif ((v132 == 1900) or (v132 <= 1924)) then
			LevelFarm = 13;
			Name = "Jungle Pirate [Lv. 1900]";
			QuestName = "DeepForestIsland2";
			LevelQuest = 1;
			NameMon = "Jungle Pirate";
			CFrameMon = CFrame.new(-12107, 332, -10549);
			VectorMon = Vector3.new(-12106, 332, -10549);
			CFrameQuest = CFrame.new(-12684, 391, -9902);
			VectorQuest = Vector3.new(-12684, 391, -9902);
		elseif ((v132 == 1925) or (v132 <= 1974)) then
			LevelFarm = 14;
			Name = "Musketeer Pirate [Lv. 1925]";
			QuestName = "DeepForestIsland2";
			LevelQuest = 2;
			NameMon = "Musketeer Pirate";
			CFrameMon = CFrame.new(-13286, 392, -9769);
			VectorMon = Vector3.new(-13286, 392, -9768);
			CFrameQuest = CFrame.new(-12684, 391, -9902);
			VectorQuest = Vector3.new(-12684, 391, -9902);
		elseif ((v132 == 1975) or (v132 <= 1999)) then
			LevelFarm = 15;
			Name = "Reborn Skeleton [Lv. 1975]";
			QuestName = "HauntedQuest1";
			LevelQuest = 1;
			NameMon = "Reborn Skeleton";
			CFrameMon = CFrame.new(-8760, 142, 6039);
			VectorMon = Vector3.new(-8760, 142, 6039);
			CFrameQuest = CFrame.new(-9482, 142, 5567);
			VectorQuest = Vector3.new(-9482, 142, 5567);
		elseif ((v132 == 2000) or (v132 <= 2024)) then
			LevelFarm = 16;
			Name = "Living Zombie [Lv. 2000]";
			QuestName = "HauntedQuest1";
			LevelQuest = 2;
			NameMon = "Living Zombie";
			CFrameMon = CFrame.new(-10144, 140, 5932);
			VectorMon = Vector3.new(-10144, 140, 5932);
			CFrameQuest = CFrame.new(-9482, 142, 5567);
			VectorQuest = Vector3.new(-9482, 142, 5567);
		elseif ((v132 == 2025) or (v132 <= 2049)) then
			LevelFarm = 17;
			Name = "Demonic Soul [Lv. 2025]";
			QuestName = "HauntedQuest2";
			LevelQuest = 1;
			NameMon = "Demonic Soul";
			CFrameMon = CFrame.new(-9507, 172, 6158);
			VectorMon = Vector3.new(-9506, 172, 6158);
			CFrameQuest = CFrame.new(-9513, 172, 6079);
			VectorQuest = Vector3.new(-9513, 172, 6079);
		elseif ((v132 == 2050) or (v132 <= 2074)) then
			LevelFarm = 18;
			Name = "Posessed Mummy [Lv. 2050]";
			QuestName = "HauntedQuest2";
			LevelQuest = 2;
			NameMon = "Posessed Mummy";
			CFrameMon = CFrame.new(-9577, 6, 6223);
			VectorMon = Vector3.new(-9577, 6, 6223);
			CFrameQuest = CFrame.new(-9513, 172, 6079);
			VectorQuest = Vector3.new(-9513, 172, 6079);
		elseif ((v132 == 2075) or (v132 <= 2099)) then
			LevelFarm = 19;
			Name = "Peanut Scout [Lv. 2075]";
			QuestName = "NutsIslandQuest";
			LevelQuest = 1;
			NameMon = "Peanut Scout";
			CFrameMon = CFrame.new(-2124, 123, -10435);
			VectorMon = Vector3.new(-2124, 123, -10435);
			CFrameQuest = CFrame.new(-2104, 38, -10192);
			VectorQuest = Vector3.new(-2104, 38, -10192);
		elseif ((v132 == 2100) or (v132 <= 2124)) then
			LevelFarm = 20;
			Name = "Peanut President [Lv. 2100]";
			QuestName = "NutsIslandQuest";
			LevelQuest = 2;
			NameMon = "Peanut President";
			CFrameMon = CFrame.new(-2124, 123, -10435);
			VectorMon = Vector3.new(-2124, 123, -10435);
			CFrameQuest = CFrame.new(-2104, 38, -10192);
			VectorQuest = Vector3.new(-2104, 38, -10192);
		elseif ((v132 == 2125) or (v132 <= 2149)) then
			LevelFarm = 21;
			Name = "Ice Cream Chef [Lv. 2125]";
			QuestName = "IceCreamIslandQuest";
			LevelQuest = 1;
			NameMon = "Ice Cream Chef";
			CFrameMon = CFrame.new(-641, 127, -11062);
			VectorMon = Vector3.new(-641, 127, -11062);
			CFrameQuest = CFrame.new(-822, 66, -10965);
			VectorQuest = Vector3.new(-822, 66, -10965);
		elseif ((v132 == 2150) or (v132 <= 2199)) then
			LevelFarm = 22;
			Name = "Ice Cream Commander [Lv. 2150]";
			QuestName = "IceCreamIslandQuest";
			LevelQuest = 2;
			NameMon = "Ice Cream Commander";
			CFrameMon = CFrame.new(-641, 127, -11062);
			VectorMon = Vector3.new(-641, 127, -11062);
			CFrameQuest = CFrame.new(-822, 66, -10965);
			VectorQuest = Vector3.new(-822, 66, -10965);
		elseif ((v132 == 2200) or (v132 <= 2224)) then
			LevelFarm = 23;
			Name = "Cookie Crafter [Lv. 2200]";
			QuestName = "CakeQuest1";
			LevelQuest = 1;
			NameMon = "Cookie Crafter";
			CFrameMon = CFrame.new(-2365, 38, -12099);
			VectorMon = Vector3.new(-2365, 38, -12099);
			CFrameQuest = CFrame.new(-2020, 38, -12025);
			VectorQuest = Vector3.new(-2020, 38, -12025);
		elseif ((v132 == 2225) or (v132 <= 2249)) then
			LevelFarm = 24;
			Name = "Cake Guard [Lv. 2225]";
			QuestName = "CakeQuest1";
			LevelQuest = 2;
			NameMon = "Cake Guard";
			CFrameMon = CFrame.new(-1651, 38, -12308);
			VectorMon = Vector3.new(-1651, 38, -12308);
			CFrameQuest = CFrame.new(-2020, 38, -12025);
			VectorQuest = Vector3.new(-2020, 38, -12025);
		elseif ((v132 == 2250) or (v132 <= 2274)) then
			LevelFarm = 25;
			Name = "Baking Staff [Lv. 2250]";
			QuestName = "CakeQuest2";
			LevelQuest = 1;
			NameMon = "Baking Staff";
			CFrameMon = CFrame.new(-1870, 38, -12938);
			VectorMon = Vector3.new(-1870, 38, -12938);
			CFrameQuest = CFrame.new(-1926, 38, -12850);
			VectorQuest = Vector3.new(-1926, 38, -12850);
		elseif ((v132 == 2275) or (v132 <= 2299)) then
			LevelFarm = 26;
			Name = "Head Baker [Lv. 2275]";
			QuestName = "CakeQuest2";
			LevelQuest = 2;
			NameMon = "Head Baker";
			CFrameMon = CFrame.new(-1926, 88, -12850);
			VectorMon = CFrame.new(-1870, 38, -12938);
			CFrameQuest = CFrame.new(-1926, 38, -12850);
			VectorQuest = Vector3.new(-1926, 38, -12850);
		elseif ((v132 == 2300) or (v132 <= 2324)) then
			LevelFarm = 27;
			Name = "Cocoa Warrior [Lv. 2300]";
			QuestName = "ChocQuest1";
			LevelQuest = 1;
			NameMon = "Cocoa Warrior";
			CFrameMon = CFrame.new(231, 23, -12194);
			VectorMon = CFrame.new(231, 23, -12194);
			CFrameQuest = CFrame.new(231, 23, -12194);
			VectorQuest = Vector3.new(231, 23, -12194);
		elseif ((v132 == 2325) or (v132 <= 2349)) then
			LevelFarm = 28;
			Name = "Chocolate Bar Battler [Lv. 2325]";
			QuestName = "ChocQuest1";
			LevelQuest = 2;
			NameMon = "Chocolate Bar Battler";
			CFrameMon = CFrame.new(231, 23, -12194);
			VectorMon = CFrame.new(231, 23, -12194);
			CFrameQuest = CFrame.new(231, 23, -12194);
			VectorQuest = Vector3.new(231, 23, -12194);
		elseif ((v132 == 2350) or (v132 <= 2374)) then
			LevelFarm = 29;
			Name = "Sweet Thief [Lv. 2350]";
			QuestName = "ChocQuest2";
			LevelQuest = 1;
			NameMon = "Sweet Thief";
			CFrameMon = CFrame.new(71, 77, -12632);
			VectorMon = CFrame.new(71, 77, -12632);
			CFrameQuest = CFrame.new(151, 23, -12774);
			VectorQuest = Vector3.new(151, 23, -12774);
		elseif ((v132 == 2375) or (v132 <= 2400)) then
			LevelFarm = 30;
			Name = "Candy Rebel [Lv. 2375]";
			QuestName = "ChocQuest2";
			LevelQuest = 2;
			NameMon = "Candy Rebel";
			CFrameMon = CFrame.new(134, 77, -12882);
			VectorMon = CFrame.new(134, 77, -12882);
			CFrameQuest = CFrame.new(151, 23, -12774);
			VectorQuest = Vector3.new(151, 23, -12774);
		elseif ((v132 == 2400) or (v132 <= 2425)) then
			LevelFarm = 31;
			Name = "Candy Pirate [Lv. 2400]";
			QuestName = "CandyQuest1";
			LevelQuest = 1;
			NameMon = "Candy Pirate";
			CFrameMon = CFrame.new(-1408.46521, 16.1423531, -14552.2041, 0.90175873, -8.1721694e-8, -0.432239741, 7.812645e-8, 1, -2.6074616e-8, 0.432239741, -1.0256343e-8, 0.90175873);
			VectorQuest = Vector3.new(-1408.46521, 16.1423531, -14552.2041, 0.90175873, -8.1721694e-8, -0.432239741, 7.812645e-8, 1, -2.6074616e-8, 0.432239741, -1.0256343e-8, 0.90175873);
			CFrameQuest = CFrame.new(-1151.48987, 16.1422901, -14445.6904, -0.316594511, -6.8569825e-8, -0.948560953, -2.0534307e-8, 1, -6.543467e-8, 0.948560953, -1.2382168e-9, -0.316594511);
			VectorQuest = Vector3.new(-1151.48987, 16.1422901, -14445.6904, -0.316594511, -6.8569825e-8, -0.948560953, -2.0534307e-8, 1, -6.543467e-8, 0.948560953, -1.2382168e-9, -0.316594511);
		elseif (v132 >= 2425) then
			LevelFarm = 32;
			Name = "Snow Demon [Lv. 2425]";
			QuestName = "CandyQuest1";
			LevelQuest = 2;
			NameMon = "Snow Demon";
			CFrameMon = CFrame.new(-777.070862, 23.5809536, -14453.0078, 0.33384338, 0, -0.942628562, 0, 1, 0, 0.942628562, 0, 0.33384338);
			VectorQuest = Vector3.new(-777.070862, 23.5809536, -14453.0078, 0.33384338, 0, -0.942628562, 0, 1, 0, 0.942628562, 0, 0.33384338);
			CFrameQuest = CFrame.new(-1151.48987, 16.1422901, -14445.6904, -0.316594511, -6.8569825e-8, -0.948560953, -2.0534307e-8, 1, -6.543467e-8, 0.948560953, -1.2382168e-9, -0.316594511);
			VectorQuest = Vector3.new(-1151.48987, 16.1422901, -14445.6904, -0.316594511, -6.8569825e-8, -0.948560953, -2.0534307e-8, 1, -6.543467e-8, 0.948560953, -1.2382168e-9, -0.316594511);
		end
	end
end


task.spawn(function()
	pcall(function()
		while task.wait() do
			if _G.Auto_Stats then
				if _G.Stasts_Melee then
					local v873 = {[1]="AddPoint",[2]="Melee",[3]=tonumber(_G.StatsPoint)};
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v873));
				end
				if _G.Stats_Defense then
					local v916 = {[1]="AddPoint",[2]="Defense",[3]=tonumber(_G.StatsPoint)};
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v916));
				end	
				if _G.Stats_Sword then
					local v992 = {[1]="AddPoint",[2]="Sword",[3]=tonumber(_G.StatsPoint)};
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v992));
				end	
				if _G.Stats_Gun then
					local v1025 = {[1]="AddPoint",[2]="Gun",[3]=tonumber(_G.StatsPoint)};
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v1025));
				end	
				if _G.Stats_Fruint then
					local v1061 = {[1]="AddPoint",[2]="Demon Fruit",[3]=tonumber(_G.StatsPoint)};
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v1061));
				end
			end
		end
	end);
end);


spawn(function()
	while wait() do
		for v712, v713 in pairs(v12.GetPlayers(v12)) do
			if (game.Workspace.Characters:FindFirstChild(v713.Name) or game.Workspace.Characters:FindFirstChild(v713.DisplayName)) then
				if v713.Character:FindFirstChild("HumanoidRootPart") then
					local v914 = v14.WorldToViewportPoint(v14, v713.Character.HumanoidRootPart.Position);
					local v915 = (Vector2.new(v914.X, v914.Y) - Vector2.new(v10.X, v10.Y)).magnitude;
					if (v915 < (((1000 * 6) - 8) / 2)) then
						if (v915 < math.huge) then
							if ((v713.Character.HumanoidRootPart.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 60) then
								if v713.Name == game.Players.LocalPlayer.Name then
									CheckPlayerA:Set("{ Player Around : UnAttack }")
								else
									CheckPlayerA:Set("{ Player Around : Attack }")
								end
							end
						end
					end
				end
			end
		end
	end
end)

task.spawn(function()
	while wait() do
		for v527, v528 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
			if v528:FindFirstChild("HumanoidRootPart") then
				local v714 = v14.WorldToViewportPoint(v14, v528.HumanoidRootPart.Position);
				local v715 = (Vector2.new(v714.X, v714.Y) - Vector2.new(v10.X, v10.Y)).magnitude;
				if (v715 < (((10000 * 6) - 8) / 2)) then
					if (v715 < math.huge) then
						if ((v528.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 60) then
							CheckmonA:Set("{ Mon Around : Attack }")
						else
							CheckmonA:Set("{ Mon Around : UnAttack }")
						end
					end
				end
			end
		end
	end
end);

function GetCurrentBlade() 
	local p13 = CbFw2.activeController
	local ret = p13.blades[1]
	if not ret then return end
	while ret.Parent~=game.Players.LocalPlayer.Character do ret=ret.Parent end
	return ret
end


function AttackNoCD()
	local AC = CbFw2.activeController
	for i = 1, 1 do 
		local bladehit = require(game.ReplicatedStorage.CombatFramework.RigLib).getBladeHits(
		plr.Character,{plr.Character.HumanoidRootPart},60
		)
		local cac = {}
		local hash = {}
		for k, v in pairs(bladehit) do
			if _G.ChckMon_Player == false then
				for v527, v528 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
					if v528:FindFirstChild("HumanoidRootPart") then
						local v714 = v14.WorldToViewportPoint(v14, v528.HumanoidRootPart.Position);
						local v715 = (Vector2.new(v714.X, v714.Y) - Vector2.new(v10.X, v10.Y)).magnitude;
						if (v715 < (((10000 * 6) - 8) / 2)) then
							if (v715 < math.huge) then
								if ((v528.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 60) then
									if v.Parent:FindFirstChild("HumanoidRootPart") and not hash[v.Parent] then
										table.insert(cac, v.Parent.HumanoidRootPart)
										hash[v.Parent] = true
									end
								end
							end
						end
					end
				end
			else
				if v.Parent:FindFirstChild("HumanoidRootPart") and not hash[v.Parent] then
					table.insert(cac, v.Parent.HumanoidRootPart)
					hash[v.Parent] = true
				end
			end
		end
		bladehit = cac
		if #bladehit > 0 then
			local u8 = debug.getupvalue(AC.attack, 5)
			local u9 = debug.getupvalue(AC.attack, 6)
			local u7 = debug.getupvalue(AC.attack, 4)
			local u10 = debug.getupvalue(AC.attack, 7)
			local u12 = (u8 * 798405 + u7 * 727595) % u9
			local u13 = u7 * 798405
			(function()
				u12 = (u12 * u9 + u13) % 1099511627776
				u8 = math.floor(u12 / u9)
				u7 = u12 - u8 * u9
			end)()
			u10 = u10 + 1
			debug.setupvalue(AC.attack, 5, u8)
			debug.setupvalue(AC.attack, 6, u9)
			debug.setupvalue(AC.attack, 4, u7)
			debug.setupvalue(AC.attack, 7, u10)
			pcall(function()
				if plr.Character:FindFirstChildOfClass("Tool") and AC.blades and AC.blades[1] then
					AC.animator.anims.basic[1]:Play(0.01,0.01,0.01)
					game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("weaponChange",tostring(GetCurrentBlade()))
					game.ReplicatedStorage.Remotes.Validator:FireServer(math.floor(u12 / 1099511627776 * 16777215), u10)
					game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("hit", bladehit, i, "")
				end
			end)
		end
		local Fast = getupvalues(require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework))
		local Lop = Fast[2]
		Lop.activeController.timeToNextAttack = (-math.huge^math.huge*math.huge)
		Lop.activeController.attacking = false
		Lop.activeController.timeToNextBlock = 0
		Lop.activeController.humanoid.AutoRotate = 80
		Lop.activeController.increment = 3
		Lop.activeController.blocking = false
		Lop.activeController.hitboxMagnitude = 80
	end
end

spawn(function()
	while true do wait()
		getgenv().rejoin = game:GetService("CoreGui").RobloxPromptGui.promptOverlay.ChildAdded:Connect(function(Kick)
			if Kick.Name == 'ErrorPrompt' and Kick:FindFirstChild('MessageArea') and Kick.MessageArea:FindFirstChild("ErrorFrame") then
				game:GetService("TeleportService"):Teleport(game.PlaceId)
			end	
		end)
	end
end)

spawn(function ()
	while wait() do
		if game:GetService("Workspace").SavePosIsland.ManakeHubOpenSound.IsLoaded then
			ErrorSound:Set(" { Not Error } ")
		else
			ErrorSound:Set(" { Error } ")
		end
		TimeSound:Set("Time : "..tostring(game:GetService("Workspace").SavePosIsland.ManakeHubOpenSound.TimePosition).."/"..tostring(game:GetService("Workspace").SavePosIsland.ManakeHubOpenSound.TimeLength))
	end
end)


spawn(function()
	while wait() do
		pcall(function()
			if _G.Fast_Attach_Toggle then
				repeat wait(_G.Fast_Delay)
					if _G.Cooldown_Attach  then
						if _G.DElayAttack == _G.CFA then
							wait(math.random(10,15)/10)
							_G.DElayAttack = 0
						else
							AttackNoCD()
							_G.DElayAttack = _G.DElayAttack + 2
						end
					else
						AttackNoCD()
					end
				until not _G.Fast_Attach_Toggle
			end
		end)
	end
end)

function TP(P1)
	if not _G.Stop_Tween then
		local Distance = (P1.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
		Speed = 100
		if Distance < 250 then
			Speed = 5000
		elseif Distance < 500 then
			Speed = 650
		elseif Distance < 1000 then
			Speed = 350
		elseif Distance >= 1000 then
			Speed = 250
		end
		Tween = game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart,TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear),{CFrame = P1})
		if _G.Stop_Tween then
			Tween:Cancel()
		elseif game.Players.LocalPlayer.Character.Humanoid.Health > 0 then
			Tween:Play()
		end
	end
end

function Com(v146, ...)
	local v147 = game:GetService("ReplicatedStorage").Remotes:FindFirstChild("Comm" .. v146);
	if v147:IsA("RemoteEvent") then
		v147:FireServer(...);
	elseif v147:IsA("RemoteFunction") then
		v147:InvokeServer(...);
	end
end

function v47(P1)
	if _G.Fast_Tween then
		if not _G.Super_Spectate or _G.Stop_Tween then
			local Distance = (P1.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
			Speed = 100
			if Distance < 250 then
				Speed = 4500
			elseif Distance < 500 then
				Speed = 650
			elseif Distance < 1000 then
				Speed = 350
			elseif Distance >= 1000 then
				Speed = 250
			end
			Tween = game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart,TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear),{CFrame = P1})
			if _G.Stop_Tween then
				Tween:Cancel()
			elseif game.Players.LocalPlayer.Character.Humanoid.Health > 0 then
				Tween:Play()
			end
		end
	else
		if not _G.Super_Spectate then
			local Distance = (P1.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
			Speed = 100
			if Distance < 250 then
				Speed = 1000
			elseif Distance < 500 then
				Speed = 550
			elseif Distance < 1000 then
				Speed = 250
			elseif Distance >= 1000 then
				Speed = 150
			end
			Tween = game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart,TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear),{CFrame = P1})
			if _G.Stop_Tween then
				Tween:Cancel()
			elseif game.Players.LocalPlayer.Character.Humanoid.Health > 0 then
				Tween:Play()
			end
		end
	end	
	if _G.Bypass_Tp and not _G.Super_Spectate then
		local v155 = {P1};
		local v156 = v155[1];
		local POSN;
		if (type(v156) == "vector") then
			POSN = CFrame.new(v156);
		elseif (type(v156) == "userdata") then
			POSN = v156;
		elseif (type(v156) == "number") then
			POSN = CFrame.new(unpack(v155));
		end
		local Distance = (P1.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
		if Distance > 2000 then
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,100000,0)
			wait(0.5)
			game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true;
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = POSN
			wait()
			Com("F_", "SetSpawnPoint");
			game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").Health = 0
			repeat
				wait();
			until game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").Health > 0 

			game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false;
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = POSN
		end	
	end
	if _G.Super_Spectate then
		local v155 = {P1};
		local v156 = v155[1];
		local POSN;
		if (type(v156) == "vector") then
			POSN = CFrame.new(v156);
		elseif (type(v156) == "userdata") then
			POSN = v156;
		elseif (type(v156) == "number") then
			POSN = CFrame.new(unpack(v155));
		end
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = POSN
	end
end

function BringM(NameMon,v1,v2,v3)
	if _G.Bringmob then
		pcall(function()
			CheckQuest();
			for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
				for x,y in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
					if v.Name == NameMon then
						if y.Name == NameMon then
							if (y.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 500 then
								v.HumanoidRootPart.CFrame = y.HumanoidRootPart.CFrame
								v.HumanoidRootPart.Size = Vector3.new(60,60,60)
								y.HumanoidRootPart.Size = Vector3.new(60,60,60)
								v.HumanoidRootPart.Transparency = 1
								v.HumanoidRootPart.CanCollide = false
								y.HumanoidRootPart.CanCollide = false
								v.Humanoid.WalkSpeed = 0
								y.Humanoid.WalkSpeed = 0
								v.Humanoid.JumpPower = 0
								y.Humanoid.JumpPower = 0
								if sethiddenproperty then
									sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
								end
							end
						end
					end
				end
			end

		end)
	end
end

function BringM2(NameMon,v1,v2,v3)
	pcall(function()
		if _G.Bringmob then
			for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
				for x,y in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
					if v.Name == "Royal Soldier [Lv. 550]" then
						if y.Name == "Royal Soldier [Lv. 550]" then
							v.HumanoidRootPart.CFrame = CFrame.new(v1,v2,v3)
							v.HumanoidRootPart.Size = Vector3.new(60,60,60)
							y.HumanoidRootPart.Size = Vector3.new(60,60,60)
							v.HumanoidRootPart.Transparency = 1
							v.HumanoidRootPart.CanCollide = false
							y.HumanoidRootPart.CanCollide = false
							v.Humanoid.WalkSpeed = 0
							y.Humanoid.WalkSpeed = 0
							v.Humanoid.JumpPower = 0
							y.Humanoid.JumpPower = 0
							if sethiddenproperty then
								sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
							end
						end
					end
				end
			end
		end
	end)
end

spawn(function () 
	while wait() do
		if _G.Stop_Walk_Mon then
			for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
				v.Humanoid.WalkSpeed = -(math.huge^math.huge^math.huge)
				v.Stun.Value = (math.huge^math.huge^math.huge)
				v.Humanoid.JumpPower = -(math.huge^math.huge^math.huge)
			end
		end
	end
end)

spawn(function ()
	while wait() do
		if _G.Disabled_Damage then
			game:GetService("ReplicatedStorage").Assets.GUI.DamageCounter.Enabled = false
		else
			game:GetService("ReplicatedStorage").Assets.GUI.DamageCounter.Enabled = true
		end
	end
end)

function BringM3(NameMon,v1,v2,v3)
	pcall(function()
		if _G.Bringmob then
			for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
				for x,y in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
					if v.Name == "Royal Squad [Lv. 525]" then
						if y.Name == "Royal Squad [Lv. 525]" then
							v.HumanoidRootPart.CFrame = CFrame.new(v1,v2,v3)
							v.HumanoidRootPart.Size = Vector3.new(60,60,60)
							y.HumanoidRootPart.Size = Vector3.new(60,60,60)
							v.HumanoidRootPart.Transparency = 1
							v.HumanoidRootPart.CanCollide = false
							y.HumanoidRootPart.CanCollide = false
							v.Humanoid.WalkSpeed = 0
							y.Humanoid.WalkSpeed = 0
							v.Humanoid.JumpPower = 0
							y.Humanoid.JumpPower = 0
							if sethiddenproperty then
								sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
							end
						end
					end 
				end
			end
		end
	end)
end



_G.NameMonFarm = nil
spawn(function()
	while wait(0.5) do
		if _G.AutoFarm then
			pcall(function()
				CheckQuest();
				if (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false) then
					v47(CFrameQuest);
					repeat
						wait()
					until (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - VectorQuest).Magnitude <= 1
					wait(1)
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", QuestName, LevelQuest);
					if (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true) then
						wait(2)
						v47(CFrameMon * CFrame.new(0, 15, 0));
					end
				elseif (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true) then
					if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) then
						for v1016, v1017 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if ((v1017.Name == Name) and v1017:FindFirstChild("HumanoidRootPart") and v1017:FindFirstChild("Humanoid")) then
								if (v1017.Humanoid.Health > 0) then
									repeat
										wait();
										_G.PosMon = v1017.HumanoidRootPart.CFrame;
										Equip(WeaponName);
										AutoHaki();
										_G.NameMonFarm = v1017.Name
										v47(v1017.HumanoidRootPart.CFrame * CFrame.new(0, 15, 0));
										v1017.HumanoidRootPart.Size = Vector3.new(60, 60, 60);
										v1017.HumanoidRootPart.CanCaillde = false;
										if not string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) then
											game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest");
										end
									until (_G.AutoFarm == false) or (v1017.Humanoid.Health <= 0) 
								end							
							end
						end
					end
				else
					DelQuest()
					v47(CFrameQuest);
					repeat
						wait()
					until (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - VectorQuest).Magnitude <= 1
					wait(1)
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", QuestName, LevelQuest);
					if (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true) then
						wait(2)
						v47(CFrameMon * CFrame.new(0, 15, 0));
					end
				end
			end);
		end
	end
end);

spawn(function ()
	game.GetService(game, "RunService").RenderStepped:Connect(function()
		if _G.AutoFarm then
			CheckQuest()
			if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) then
				_G.MonQuestCheck = true
				if _G.AutoFarm then
					_G.AutoFarm = true
				end
			else
				_G.AutoFarm = false
				wait(0.25)
				_G.AutoFarm = true
				DelQuest()
				v47(CFrameQuest);
				repeat
					wait()
				until (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - VectorQuest).Magnitude <= 1
				wait(1)
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", QuestName, LevelQuest);
				if (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true) then
					wait(2)
					v47(CFrameMon * CFrame.new(0, 15, 0));
				end
			end 
		end
	end)
end)

task.spawn(function ()
	while wait() do
		if _G.Teleport_Island then
			if TISLANDSele == "Forgotten IsLand" then -- World 2
				v47(CFrame.new(-3170.492919921875, 298.66448974609375, -10563.302734375))
			elseif TISLANDSele == "King Of Rose" then
				v47(CFrame.new(-382.565673828125, 118.15985107421875, 1247.8397216796875))
			elseif TISLANDSele == "Ice Castle" then
				v47(CFrame.new(5536.3427734375, 257.1117858886719, -6792.4658203125))	
			elseif TISLANDSele == "Cursed Ship" then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-6502.29736328125, 83.18614959716797, -124.08943939208984)	
			elseif TISLANDSele == "Awakeing Room { Word 2 }" then
				v47(CFrame.new(239.78811645507812, 1.3600505590438843, 1824.4163818359375))
			elseif TISLANDSele == "Hot Land" then
				v47(CFrame.new(-5427.330078125, 15.951759338378906, -5220.34814453125))
			elseif TISLANDSele == "Cold Land" then
				v47(CFrame.new(-6023.80224609375, 15.951759338378906, -5071.09521484375))
			elseif TISLANDSele == "Snow Moutain" then
				v47(CFrame.new(577.0983276367188, 401.42193603515625, -5371.005859375))
			elseif TISLANDSele == "Gravetard Island" then
				v47(CFrame.new(-5529.05859375, 96.53802490234375, -760.3163452148438))
			elseif TISLANDSele == "Gravetard Island Mon" then
				v47(CFrame.new(-5840.12841796875, 4.4117865562438965, -1097.8883056640625))
			elseif TISLANDSele == "Factory" then
				v47(CFrame.new(290.94976806640625, 74.42233276367188, -295.5749816894531))
			elseif TISLANDSele == "Cafe" then
				v47(CFrame.new(-380.9781188964844, 88.43508911132812, 292.3891296386719))
			elseif TISLANDSele == "Dark Arena" then
				v47(CFrame.new(3311.24, 12.5281, -3272.89))
				wait()
			elseif TISLANDSele == "Marine Starter" then -- World 1
				v47(CFrame.new(-2591.75, 6.88882, 2085.11))
			elseif TISLANDSele == "Pirabe Starter" then
				v47(CFrame.new(981.669, 16.5166, 1427.7))
			elseif TISLANDSele == "Whirl Pool" then
				v47(CFrame.new(3902.34, 11.7083, -1937.3))
			elseif TISLANDSele == "Jungle" then
				v47(CFrame.new(-1442.27, 61.852, -28.7423))
			elseif TISLANDSele == "Middle Town" then
				v47(CFrame.new(-690.079, 15.2263, 1583.58))
			elseif TISLANDSele == "Pirate Village" then
				v47(CFrame.new(-1148.77, 44.752, 3848.53))
			elseif TISLANDSele == "Desert" then
				v47(CFrame.new(1133.78, 29.9399, 4339.18))
			elseif TISLANDSele == "Fountain City" then
				v47(CFrame.new(5280.90869140625, 54.08751678466797, 4105.1337890625))	
			elseif TISLANDSele == "Prison" then
				v47(CFrame.new(4878.75830078125, 64.65208435058594, 734.720947265625))
			elseif TISLANDSele == "Frozen Village" then
				v47(CFrame.new(1398.63, 109.14, -1345.43))
			elseif TISLANDSele == "Sky land 1" then
				v47(CFrame.new(-4792.97, 736.763, -2621.44))
			elseif TISLANDSele == "Sky land 2" then
				v47(CFrame.new(-7878.08, 5545.58, -376.224))
			elseif TISLANDSele == "Marine Fortress" then
				v47(CFrame.new(-4929.85400390625, 194.82676696777344, 4319.73876953125))
			elseif TISLANDSele == "Magma Village" then
				v47(CFrame.new(-5406.6220703125, 11.172664642333984, 8448.28125))
			elseif TISLANDSele == "Colosseum" then
				v47(CFrame.new(-1724.2384033203125, 150.3317413330078, -3179.2734375))
			elseif TISLANDSele == "Castle on the Sea" then -- world 3
				local args = {[1] = "requestEntrance",[2] = Vector3.new(-12463.6025390625, 378.3270568847656, -7566.0830078125)}
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
			elseif TISLANDSele == "Mansion" then
				local args = {[1] = "requestEntrance",[2] = Vector3.new(-5089.66455078125, 318.5023193359375, -3146.126708984375)}game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
			elseif TISLANDSele == "Hydra Island" then	
				local args = {[1] = "requestEntrance",[2] = Vector3.new(-5099.0244140625, 318.5023193359375, -3169.308349609375)}
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
			elseif TISLANDSele == "Port Town" then
				v47(CFrame.new(-288.03460693359375, 29.412803649902344, 5389.33447265625))
			elseif TISLANDSele == "Great Tree" then
				v47(CFrame.new(2375.13671875, 36.2883186340332, -6577.03125))
			elseif TISLANDSele == "Floating Turtle" then
				v47(CFrame.new(-11521.8251953125, 481.5546875, -10397.9140625))
			elseif TISLANDSele == "Sea of Treats" then
				v47(CFrame.new(-1890.8038330078125, 94.94306945800781, -12043.25))
			elseif TISLANDSele == "Awakeing Room { Word 3 }" then
				local args = {[1] = "requestEntrance",[2] = Vector3.new(-5089.66455078125, 318.5023193359375, -3146.126708984375)}game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				v47(CFrame.new(-11560.421875, 49.172672271728516, -7582.57177734375))
			elseif TISLANDSele == "Temple of Time" then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286.4, 14896.5, 102.625)
			elseif TISLANDSele == "Cyborg Door" then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286.4, 14896.5, 102.625)
				v47(CFrame.new(28505.638671875, 14895.6328125, -422.7278747558594))
			elseif TISLANDSele == "Mink Door" then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286.4, 14896.5, 102.625)
				v47(CFrame.new(28998.30859375, 14890.6328125, -379.8742370605469))
			elseif TISLANDSele == "Sky Door" then	
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286.4, 14896.5, 102.625)
				v47(CFrame.new(28952.525390625, 14919.28125, 234.52769470214844))
			elseif TISLANDSele == "Fish Door" then		
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286.4, 14896.5, 102.625)
				v47(CFrame.new(28236.2578125, 14890.6328125, -211.78807067871094))
			elseif TISLANDSele == "Ghoul Door" then	
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286.4, 14896.5, 102.625)
				v47(CFrame.new(28672.66015625, 14890.333984375, 440.2044372558594))
			elseif TISLANDSele == "Human Door" then	
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286.4, 14896.5, 102.625)
				v47(CFrame.new(29222.8046875, 14890.6328125, -206.65357971191406))
			end
		else
			_G.Stop_Tween = true
			wait(0.25)
			_G.Stop_Tween = false
		end
	end
end)

spawn(function ()
	while wait() do
		if _G.Bringmob then
			BringM(_G.NameMonFarm)
		end
	end	
end)


spawn(function ()
	while Wait() do
		if _G.AutoFarm then
			if game.Players.LocalPlayer.Character.humanoid.Health <= 0 then
				_G.AutoFarm = false
				wait(0.25)
				_G.AutoFarm = true
				CheckQuest()
				v47(CFrameMon * CFrame.new(0, 15, 0));
			end	
		end
	end
end)		

task.spawn(function()
	while wait(0.5) do
		pcall(function()
			if _G.AutoSecond_Sea then
				if (game.Players.LocalPlayer.Data.Level.Value >= 700) then
					if _G.AutoFarm then
						_G.AutoFarm = false;
					end
					if ((game.Workspace.Map.Ice.Door.CanCollide == true) and (game.Workspace.Map.Ice.Door.Transparency == 0)) then
						repeat
							wait();
							v47(CFrame.new(1347.7124, 37.3751602, -1325.6488));
						until ((CFrame.new(1347.7124, 37.3751602, -1325.6488).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3) or not 
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("DressrosaQuestProgress", "Detective");
						Equip("Key");
					elseif ((game.Workspace.Map.Ice.Door.CanCollide == false) and (game.Workspace.Map.Ice.Door.Transparency == 1)) then
						if game:GetService("Workspace").Enemies:FindFirstChild("Ice Admiral [Lv. 700] [Boss]") then
							for v1046, v1047 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
								if ((v1047.Name == "Ice Admiral [Lv. 700] [Boss]") and (v1047.Humanoid.Health > 0)) then
									repeat
										task.wait();
										AutoHaki();
										Equip(WeaponName);
										v47(v1047.HumanoidRootPart.CFrame * CFrame.new(0, 10, 0));
										v1047.HumanoidRootPart.Size = Vector3.new(60, 60, 60);
										v1047.Humanoid.JumpPower = 0;
										v1047.Stun = 100
										v1047.Humanoid.WalkSpeed = 0;
										v1047.HumanoidRootPart.CanCollide = false;
										v1047.Humanoid:ChangeState(11);

									until (v1047.Humanoid.Health <= 0) or not v1047.Parent 
									repeat
										wait()
										game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa");
									until not game.PlaceId == game.PlaceId
								end
							end
						else
							v47(CFrame.new(1347.7124, 37.3751602, -1325.6488));
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa");
						end
					end
				end
			end
		end);
	end
end);




spawn(function()
	game:GetService("RunService").Heartbeat:Connect(function()
		if _G.AutoFarm or _G.AutoFarmSky or _G.Teleport_Island or _G.Teleport_Npc then
			for i, v in pairs(game.Workspace["_WorldOrigin"]:GetChildren()) do
				if v.Name == "Dust" or v.Name == "eff" or v.Name == "CurvedRing" or v.Name == "SwordSlash" or v.Name == "SlashHit" then
					v:Destroy() 
				end
			end
			if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid") then
				setfflag("HumanoidParallelRemoveNoPhysics", "False");
				setfflag("HumanoidParallelRemoveNoPhysicsNoSimulate2", "False");
				game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(11);
			end
		end
	end);
end);

spawn(function ()
	local vu = game:GetService("VirtualUser")
	while wait(60) do
		vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
		wait(1)
		vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
	end
end)


spawn(function()
	while wait(.2) do
		local Lv = game:GetService("Players").LocalPlayer.Data.Level.Value
		local Beli = game:GetService("Players").LocalPlayer.Data.Beli.Value
		local FG = game:GetService("Players").LocalPlayer.Data.Fragments.Value
		if Old_World and _G.Auto_Saber then
			if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","SickMan") ~= 0 then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
				repeat wait()
					v47(CFrame.new(-1609.29956, 40.0520697, 162.820404))
				until (Vector3.new(-1609.29956, 40.0520697, 162.820404)-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10
				wait(3)
				for i,v in pairs(game:GetService("Workspace").Map.Jungle.QuestPlates:GetChildren()) do
					if v.Name == "Plate1" then
						repeat wait()
							v47(v.Button.CFrame)
						until (v.Button.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 1
						wait(1)
					end
					if v.Name == "Plate2" then
						repeat wait()
							v47(v.Button.CFrame)
						until (v.Button.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 1
						wait(1)
					end
					if v.Name == "Plate3" then
						repeat wait()
							v47(v.Button.CFrame)
						until (v.Button.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 1
						wait(1)
					end
					if v.Name == "Plate4" then
						repeat wait()
							v47(v.Button.CFrame)
						until (v.Button.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 1
						wait(1)
					end
					if v.Name == "Plate5" then
						repeat wait()
							v47(v.Button.CFrame)
						until (v.Button.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 1
						wait(1)
					end
				end
				wait(2)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1609.29956, 12.0520697, 162.820404, -0.993804812, 2.60902091e-08, 0.11113929, 3.47902116e-08, 1, 7.63408607e-08, -0.11113929, 7.97344768e-08, -0.993804812)
				wait(2)
				repeat wait()
					EquipWeapon("Torch")
					v47(CFrame.new(1113.9502, 4.92147732, 4350.91992, -0.60768199, 3.86533046e-08, 0.794180453, 6.00742425e-08, 1, -2.70375722e-09, -0.794180453, 4.60667628e-08, -0.60768199))
				until (Vector3.new(1113.9502, 4.92147732, 4350.91992)-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 1
				wait(1)
				--fireclickdetector(game:GetService("Workspace").Map.Desert.Burn.Fire.ClickDetector)
				wait(1)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1113.9502, 4.92147732, 4350.91992, -0.60768199, 3.86533046e-08, 0.794180453, 6.00742425e-08, 1, -2.70375722e-09, -0.794180453, 4.60667628e-08, -0.60768199)
				wait(1)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1113.9502, 4.92147732, 4350.91992, -0.60768199, 3.86533046e-08, 0.794180453, 6.00742425e-08, 1, -2.70375722e-09, -0.794180453, 4.60667628e-08, -0.60768199)
				wait(1)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1114.87708, 4.9214654, 4349.8501, -0.612586915, -9.68697833e-08, 0.790403247, -1.2634203e-07, 1, 2.4638446e-08, -0.790403247, -8.47679615e-08, -0.612586915)
				wait(10)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1113.33618, 7.5484705, 4365.56396, -0.618000686, 2.54492516e-08, -0.786177576, -8.16741874e-09, 1, 3.87911392e-08, 0.786177576, 3.03939913e-08, -0.618000686)
				wait(2)
				repeat wait()
					EquipWeapon("Cup")
					v47(CFrame.new(1397.73975, 37.3480263, -1321.54456, -0.170597032, -4.99889588e-08, 0.985340893, 2.99880867e-08, 1, 5.59246409e-08, -0.985340893, 3.90890662e-08, -0.170597032))
				until (Vector3.new(1397.73975, 37.3480263, -1321.54456)-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 2
				wait(1)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1397.73975, 37.3480263, -1321.54456, -0.170597032, -4.99889588e-08, 0.985340893, 2.99880867e-08, 1, 5.59246409e-08, -0.985340893, 3.90890662e-08, -0.170597032)
				wait(3)
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","SickMan")
				wait(1)
				Mob_Boss = true
				_G.Auto_Saber = false

			else
				Auto_Farm = false
				Mob_Boss = true
				_G.Auto_Saber = false
			end
		elseif not Old_World and _G.Auto_Saber then
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelMain")
		end
	end
end)

spawn(function()
	while wait(.2) do
		if Mob_Boss then
			if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","RichSon") == 1 then
				if game.Players.LocalPlayer.Backpack:FindFirstChild("Relic") or game.Players.LocalPlayer.Character:FindFirstChild("Relic") then
					EquipWeapon("Relic")
					repeat wait()
						EquipWeapon("Relic")
						v47(CFrame.new(-1406.60925, 29.8520069, 4.5805192, 0.882920146, 3.62382622e-08, 0.469523162, -3.61928865e-09, 1, -7.03750587e-08, -0.469523162, 6.04362143e-08, 0.882920146))
					until (Vector3.new(-1406.60925, 29.8520069, 4.5805192)-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 2
					wait(1)
					Saber_Kill = true
					Mob_Boss = false
				else
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","RichSon")
				end
			elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","RichSon") == 0 then
				if game.Workspace.Enemies:FindFirstChild("Mob Leader [Lv. 120] [Boss]") then
					for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if v.Name == "Mob Leader [Lv. 120] [Boss]" then

							repeat wait()
								EquipWeapon(WeaponName1)
								v.HumanoidRootPart.Size = Vector3.new(50,50,50)
								v47(v.HumanoidRootPart.CFrame*CFrame.new(0,20,0))
								game:GetService'VirtualUser':CaptureController()
								game:GetService'VirtualUser':Button1Down(Vector2.new(1280,900))
							until not v.Parent or v.Humanoid.Health <= 0 or Mob_Boss == false
						end
					end
				elseif game:GetService("ReplicatedStorage"):FindFirstChild("Mob Leader [Lv. 120] [Boss]") then
					v47(game:GetService("ReplicatedStorage"):FindFirstChild("Mob Leader [Lv. 120] [Boss]").HumanoidRootPart.CFrame)
				end
			else
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","RichSon")
			end
		end
	end
end)

spawn(funch)

spawn(function()
	game:GetService("RunService").Heartbeat:Connect(function()
		if _G.Auto_Saber then
			if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid") then
				setfflag("HumanoidParallelRemoveNoPhysics", "False");
				setfflag("HumanoidParallelRemoveNoPhysicsNoSimulate2", "False");
				game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(11);
			end
		end
	end);
end);

spawn(function()
	while wait(.2) do
		pcall(function()
			if Saber_Kill then
				if game.Workspace.Enemies:FindFirstChild("Saber Expert [Lv. 200] [Boss]") then
					for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
						if v.Name == "Saber Expert [Lv. 200] [Boss]" then
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")

							repeat wait()
								EquipWeapon(WeaponName)
								v.HumanoidRootPart.Size = Vector3.new(50,50,50)
								v47(v.HumanoidRootPart.CFrame*CFrame.new(0,25,1))
							until not v.Parent or v.Humanoid.Health <= 0 or Saber_Kill == false
						end
					end
				elseif game:GetService("ReplicatedStorage"):FindFirstChild("Saber Expert [Lv. 200] [Boss]") or game.Workspace.Enemies:FindFirstChild("Saber Expert [Lv. 200] [Boss]") then
					v47(game:GetService("ReplicatedStorage"):FindFirstChild("Saber Expert [Lv. 200] [Boss]").HumanoidRootPart.CFrame)
				elseif _G.Hop_Saber then
					wait(5)
					if not game.Workspace.Enemies:FindFirstChild("Saber Expert [Lv. 200] [Boss]") and not game:GetService("ReplicatedStorage"):FindFirstChild("Saber Expert [Lv. 200] [Boss]") then
						game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer)
					end
				else
					v47(CFrame.new(-1458.89502, 29.8870335, -50.633564, 0.858821094, 1.13848939e-08, 0.512275636, -4.85649254e-09, 1, -1.40823326e-08, -0.512275636, 9.6063415e-09, 0.858821094))
				end
			end
		end)
	end
end)

spawn(function ()
	while wait() do
		pcall(function ()
			if _G.AutoFarmSky then
				local Lvl = game.Players.LocalPlayer.Data.Level.Value
				if Lvl == 20 or Lvl <= 120 then
					_G.FarmSky = true
					_G.AutoFarm = false
				else
					_G.AutoFarmSky = false
					_G.AutoFarm = true
				end
				if _G.FarmSky and (CFrame.new(-7680.46, 5566.88, -495.487).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))
				end
				if game.Workspace.Enemies:FindFirstChild("Royal Squad [Lv. 525]") then
					for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
						if v.Name == "Royal Squad [Lv. 525]" and  v.Humanoid.Health > 0 then
							if v.Humanoid.Health > 0 then
								repeat wait()
									AutoHaki();
									BringM2()
									BringM3()
									v47(v.HumanoidRootPart.CFrame *	CFrame.new(0, 15, 1));
									v.HumanoidRootPart.Size = Vector3.new(60,60,60)
									v.Stun = 100
									v.WalkSpeed = -0
									v.HumanoidRootPart.CanCaillde = false
								until _G.FarmSky == false or v.Humanoid.Health <= 0
							end
						end
					end
				else
					if not game.Workspace.Enemies:FindFirstChild("Royal Squad [Lv. 525]") then
						v47(CFrame.new(-7768.82, 5634.77, -1547.74));
					end
				end
				if game.Workspace.Enemies:FindFirstChild( ) then
					for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
						if v.Name == "Royal Soldier [Lv. 550]" and  v.Humanoid.Health > 0 then
							if v.Humanoid.Health > 0 then
								repeat wait()
									Equip(WeaponName);
									BringM3()
									v47(v.HumanoidRootPart.CFrame * CFrame.new(0, 15, 1));
									v.HumanoidRootPart.Size = Vector3.new(60,60,60)
									v.Stun = 100
									v.WalkSpeed = -0
									v.HumanoidRootPart.CanCaillde = false
								until _G.FarmSky == false or v.Humanoid.Health <= 0	
							end
						end
					end
				else
					if not game.Workspace.Enemies:FindFirstChild("Royal Soldier [Lv. 550]") then
						v47(CFrame.new(-7768.82, 5634.77, -1547.74));
					end
				end
			end
		end)
	end
end)
Number = math.random(1, 1000000)
function isnil(L_426_arg0)
	return (L_426_arg0 == nil)
end
local function L_52_func(L_427_arg0)
	return math.floor(tonumber(L_427_arg0) + 0.5)
end
function UpdateEspPlayer()
	for L_428_forvar0, L_429_forvar1 in pairs(game:GetService'Players':GetChildren()) do
		pcall(function()
			if not isnil(L_429_forvar1.Character) then
				if _G.EspPlayer then
					if not isnil(L_429_forvar1.Character.Head) and not L_429_forvar1.Character.Head:FindFirstChild('NameEsp' .. Number) then
						local L_430_ = Instance.new('BillboardGui', L_429_forvar1.Character.Head)
						L_430_.Name = 'NameEsp' .. Number
						L_430_.ExtentsOffset = Vector3.new(0, 1, 0)
						L_430_.Size = UDim2.new(1, 200, 1, 30)
						L_430_.Adornee = L_429_forvar1.Character.Head
						L_430_.AlwaysOnTop = true
						local L_431_ = Instance.new('TextLabel', L_430_)
						L_431_.Font = "GothamBold"
						L_431_.FontSize = "Size14"
						L_431_.TextWrapped = true
						L_431_.Text = (L_429_forvar1.Name .. ' : '..L_429_forvar1.Character.Humanoid.Health..' : ' .. L_52_func((game:GetService('Players').LocalPlayer.Character.Head.Position - L_429_forvar1.Character.Head.Position).Magnitude / 3) .. ' M')
						L_431_.Size = UDim2.new(1, 0, 1, 0)
						L_431_.TextYAlignment = 'Top'
						L_431_.BackgroundTransparency = 1
						L_431_.TextStrokeTransparency = 0.5
						if L_429_forvar1.Team == game:GetService("Teams").Pirates then
							L_431_.TextColor3 = Color3.new(255, 0, 0)
						else
							L_431_.TextColor3 = Color3.new(0, 255, 255)
						end
					else
						L_429_forvar1.Character.Head['NameEsp' .. Number].TextLabel.Text = (L_429_forvar1.Name .. ' | ' .. L_52_func((game:GetService('Players').LocalPlayer.Character.Head.Position - L_429_forvar1.Character.Head.Position).Magnitude / 3) .. ' M : Health : ' .. L_52_func(L_429_forvar1.Character.Humanoid.Health * 100 / L_429_forvar1.Character.Humanoid.MaxHealth) .. '%')
					end
				else
					if L_429_forvar1.Character.Head:FindFirstChild('NameEsp' .. Number) then
						L_429_forvar1.Character.Head:FindFirstChild('NameEsp' .. Number):Destroy()
					end
				end
			end
		end)
	end
end

function UpdateChestEsp()
	for L_436_forvar0, L_437_forvar1 in pairs(game.Workspace:GetChildren()) do
		pcall(function()
			if L_437_forvar1.Name == "Chest1" or L_437_forvar1.Name == "Chest2" or L_437_forvar1.Name == "Chest3" then
				if _G.EspChest then
					if (L_437_forvar1.Name == "Chest1" or L_437_forvar1.Name == "Chest2" or L_437_forvar1.Name == "Chest3") and (L_437_forvar1.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 60000 then
						if not L_437_forvar1:FindFirstChild("ChestESP" .. Number) then
							local L_438_ = Instance.new("BillboardGui", L_437_forvar1)
							L_438_.Name = "ChestESP" .. Number
							L_438_.ExtentsOffset = Vector3.new(0, 1, 0)
							L_438_.Size = UDim2.new(1, 200, 1, 30)
							L_438_.Adornee = L_437_forvar1
							L_438_.AlwaysOnTop = true
							local L_439_ = Instance.new("TextLabel", L_438_)
							L_439_.Font = "GothamBold"
							L_439_.FontSize = "Size14"
							L_439_.Size = UDim2.new(1, 0, 1, 0)
							L_439_.BackgroundTransparency = 1
							L_439_.TextStrokeTransparency = 0.5
							if L_437_forvar1.Name == "Chest1" then
								L_439_.TextColor3 = Color3.fromRGB(174, 123, 47)
								L_439_.Text = "Bronze Chest" .. "\n" .. math.round((L_437_forvar1.Position - game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position).Magnitude / 3) .. " m."
							end
							if L_437_forvar1.Name == "Chest2" then
								L_439_.TextColor3 = Color3.fromRGB(255, 255, 127)
								L_439_.Text = "Gold Chest" .. "\n" .. math.round((L_437_forvar1.Position - game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position).Magnitude / 3) .. " m."
							end
							if L_437_forvar1.Name == "Chest3" then
								L_439_.Text = "Diamond Chest" .. "\n" .. math.round((L_437_forvar1.Position - game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position).Magnitude / 3) .. " m."
								L_439_.TextColor3 = Color3.fromRGB(5, 243, 255)
							end
						else
							L_437_forvar1["ChestESP" .. Number].TextLabel.Text = L_437_forvar1.Name .. "\n" .. math.round((L_437_forvar1.Position - game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Position).Magnitude / 3) .. " m."
						end
					end
				else
					if L_437_forvar1:FindFirstChild("ChestESP" .. Number) then
						L_437_forvar1:FindFirstChild("ChestESP" .. Number):Destroy()
					end
				end
			end
		end)
	end
end

function UpdateIslandESP()
	for L_432_forvar0, L_433_forvar1 in pairs(game:GetService("Workspace")["_WorldOrigin"].Locations:GetChildren()) do
		pcall(function()
			if _G.EspIsland then
				if L_433_forvar1.Name ~= "Sea" then
					if not L_433_forvar1:FindFirstChild('NameEsp') then
						local L_434_ = Instance.new('BillboardGui', L_433_forvar1)
						L_434_.Name = 'NameEsp'
						L_434_.ExtentsOffset = Vector3.new(0, 1, 0)
						L_434_.Size = UDim2.new(1, 200, 1, 30)
						L_434_.Adornee = L_433_forvar1
						L_434_.AlwaysOnTop = true
						local L_435_ = Instance.new('TextLabel', L_434_)
						L_435_.Font = "GothamBold"
						L_435_.FontSize = "Size14"
						L_435_.TextWrapped = true
						L_435_.Size = UDim2.new(1, 0, 1, 0)
						L_435_.TextYAlignment = 'Top'
						L_435_.BackgroundTransparency = 1
						L_435_.TextStrokeTransparency = 0.5
						L_435_.TextColor3 = Color3.fromRGB(80, 245, 245)
					else
						L_433_forvar1['NameEsp'].TextLabel.Text = (L_433_forvar1.Name .. '   \n' .. L_52_func((game:GetService('Players').LocalPlayer.Character.Head.Position - L_433_forvar1.Position).Magnitude / 3) .. ' M')
					end
				end
			else
				if L_433_forvar1:FindFirstChild('NameEsp') then
					L_433_forvar1:FindFirstChild('NameEsp'):Destroy()
				end
			end
		end)
	end
end

function UpdateBfEsp()
	for L_440_forvar0, L_441_forvar1 in pairs(game:GetService("Workspace"):GetChildren()) do
		pcall(function()
			if _G.EspFruit then
				if string.find(L_441_forvar1.Name, "Fruit") then
					if not L_441_forvar1.Handle:FindFirstChild('NameEsp' .. Number) then
						local L_442_ = Instance.new('BillboardGui', L_441_forvar1.Handle)
						L_442_.Name = 'NameEsp' .. Number
						L_442_.ExtentsOffset = Vector3.new(0, 1, 0)
						L_442_.Size = UDim2.new(1, 200, 1, 30)
						L_442_.Adornee = L_441_forvar1.Handle
						L_442_.AlwaysOnTop = true
						local L_443_ = Instance.new('TextLabel', L_442_)
						L_443_.Font = "GothamBold"
						L_443_.FontSize = "Size14"
						L_443_.TextWrapped = true
						L_443_.Size = UDim2.new(1, 0, 1, 0)
						L_443_.TextYAlignment = 'Top'
						L_443_.BackgroundTransparency = 1
						L_443_.TextStrokeTransparency = 0.5
						L_443_.TextColor3 = Color3.fromRGB(255, 0, 0)
						L_443_.Text = (L_441_forvar1.Name .. ' \n' .. L_52_func((game:GetService('Players').LocalPlayer.Character.Head.Position - L_441_forvar1.Handle.Position).Magnitude / 3) .. ' M')
					else
						L_441_forvar1.Handle['NameEsp' .. Number].TextLabel.Text = (L_441_forvar1.Name .. '   \n' .. L_52_func((game:GetService('Players').LocalPlayer.Character.Head.Position - L_441_forvar1.Handle.Position).Magnitude / 3) .. ' M')
					end
				end
			else
				if L_441_forvar1.Handle:FindFirstChild('NameEsp' .. Number) then
					L_441_forvar1.Handle:FindFirstChild('NameEsp' .. Number):Destroy()
				end
			end
		end)
	end
end

function UpdateFlowerEsp()
	for L_444_forvar0, L_445_forvar1 in pairs(game:GetService("Workspace"):GetChildren()) do
		pcall(function()
			if L_445_forvar1.Name == "Flower2" or L_445_forvar1.Name == "Flower1" then
				if _G.EspFower then
					if not L_445_forvar1:FindFirstChild('NameEsp' .. Number) then
						local L_446_ = Instance.new('BillboardGui', L_445_forvar1)
						L_446_.Name = 'NameEsp' .. Number
						L_446_.ExtentsOffset = Vector3.new(0, 1, 0)
						L_446_.Size = UDim2.new(1, 200, 1, 30)
						L_446_.Adornee = L_445_forvar1
						L_446_.AlwaysOnTop = true
						local L_447_ = Instance.new('TextLabel', L_446_)
						L_447_.Font = "GothamBold"
						L_447_.FontSize = "Size14"
						L_447_.TextWrapped = true
						L_447_.Size = UDim2.new(1, 0, 1, 0)
						L_447_.TextYAlignment = 'Top'
						L_447_.BackgroundTransparency = 1
						L_447_.TextStrokeTransparency = 0.5
						L_447_.TextColor3 = Color3.fromRGB(255, 0, 0)
						if L_445_forvar1.Name == "Flower1" then
							L_447_.Text = ("Blue Flower" .. ' \n' .. L_52_func((game:GetService('Players').LocalPlayer.Character.Head.Position - L_445_forvar1.Position).Magnitude / 3) .. ' M')
							L_447_.TextColor3 = Color3.fromRGB(255, 0, 0)
						end
						if L_445_forvar1.Name == "Flower2" then
							L_447_.Text = ("Red Flower" .. ' \n' .. L_52_func((game:GetService('Players').LocalPlayer.Character.Head.Position - L_445_forvar1.Position).Magnitude / 3) .. ' M')
							L_447_.TextColor3 = Color3.fromRGB(255, 0, 0)
						end
					else
						L_445_forvar1['NameEsp' .. Number].TextLabel.Text = (L_445_forvar1.Name .. '   \n' .. L_52_func((game:GetService('Players').LocalPlayer.Character.Head.Position - L_445_forvar1.Position).Magnitude / 3) .. ' M')
					end
				else
					if L_445_forvar1:FindFirstChild('NameEsp' .. Number) then
						L_445_forvar1:FindFirstChild('NameEsp' .. Number):Destroy()
					end
				end
			end
		end)
	end
end


function TP3(P1)
	local Distance = (P1.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
	if Distance < 250 then
		Speed = 10000
	elseif Distance < 500 then
		Speed = 500
	elseif Distance < 1000 then
		Speed = 250
	elseif Distance >= 1000 then
		Speed = 250
	end
	game:GetService("TweenService"):Create(
	game.Players.LocalPlayer.Character.HumanoidRootPart,
	TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear),
	{CFrame = P1}
	):Play()
	if _G.Stop_Tween then
		game:GetService("TweenService"):Create(
		game.Players.LocalPlayer.Character.HumanoidRootPart,
		TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear),
		{CFrame = P1}
		):Cancel()
	end
end


spawn(function ()
	while wait() do
		if _G.Auto_Farm_Factory  then
			if not game:GetService("Workspace").Map.Dressrosa.SmileFactory:FindFirstChild("Door") then
				if _G.AutoFarm  then
					_G.AutoFarm = false
					repeat
						wait()
					until game:GetService("Workspace").Map.Dressrosa.SmileFactory:FindFirstChild("Door")
					_G.AutoFarm = true
				end

				v47(CFrame.new(422.381, 182.499, -432.325))
				game:GetService("VirtualUser"):CaptureController();
				game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672));

			end
		end
	end
end)


spawn(function ()
	while wait() do
		if _G.Auto_Farm_Factory_Hop  then
			if game:GetService("Workspace").Map.Dressrosa.SmileFactory:FindFirstChild("Door") then
				repeat
					wait()
					game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer)
				until false
			end
		end
	end
end)


task.spawn(function()
	while wait() do
		pcall(function()
			if _G.WeapoMAA == "Melee" then
				for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
					if v.ToolTip == "Melee" then
						if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
							WeaponName = v.Name
						end
					end
				end
			elseif _G.WeapoMAA == "Sword" then
				for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
					if v.ToolTip == "Sword" then
						if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
							WeaponName = v.Name
						end
					end
				end
			elseif _G.WeapoMAA == "Devil Fruit" then
				for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
					if v.ToolTip == "Blox Fruit" then
						if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
							WeaponName = v.Name
						end
					end
				end
			else
				for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
					if v.ToolTip == "Melee" then
						if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
							WeaponName = v.Name
						end
					end
				end
			end
		end)
	end
end)

spawn(function ()
	while wait() do
		if _G.Changes_Boat_Speed then
			for i, v in pairs(game:GetService("Workspace").Boats:GetChildren()) do
				v.VehicleSeat.MaxSpeed = _G.BCS;
				if _G.Changes_Boat_TurnSpeed  then
					v.VehicleSeat.TurnSpeed = _G.CTS;
				end
			end
		end
	end
end)

function TP2(P1)
	local Distance = (P1.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
	if Distance < 150 then
		Speed = 5000
	elseif Distance < 200 then
		Speed = 1500
	elseif Distance < 300 then
		Speed = 800
	elseif Distance < 500 then
		Speed = 500
	elseif Distance < 1000 then
		Speed = 250
	elseif Distance >= 1000 then
		Speed = 250
	end
	game:GetService("TweenService"):Create(
	game.Players.LocalPlayer.Character.HumanoidRootPart,
	TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear),
	{CFrame = P1}
	):Play()
	if _G.Stop_Tween then
		game:GetService("TweenService"):Create(
		game.Players.LocalPlayer.Character.HumanoidRootPart,
		TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear),
		{CFrame = P1}
		):Cancel()
	end
	_G.Clip = true
	wait(Distance/Speed)
	_G.Clip = false
end

spawn(function ()
	while wait() do
		CheckQuest();
		if _G.Select_Mode_Farm == "Farm Level" then
			Framing_Label:Set(" Farming : Normal")
		elseif _G.Select_Mode_Farm == "Farm Materials" then
			Framing_Label:Set(" Farming : Farm Materials")
		elseif _G.Select_Mode_Farm == "Auto Melee" then
			Framing_Label:Set(" Farming : Auto Get Melee")
		elseif _G.Select_Mode_Farm == "Farm Mastery" then
			Framing_Label:Set(" Farming : Farm Mastery")
		elseif _G.Select_Mode_Farm == "Auto Item" then
			Framing_Label:Set(" Farming : Auto Get Item")
		end
		Mon_Label:Set(" Mon : "..NameMon)
		Quest_Label:Set(" Quest : "..QuestName)
	end
end)

function EquipWeapon(ToolSe)
	if game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe) then
		local tool = game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe)
		wait(.4)
		game.Players.LocalPlayer.Character.Humanoid:EquipTool(tool)
	end
end
