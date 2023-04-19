
function TextUpGame(v1, v2)
	for v126, v127 in pairs(game.Players.LocalPlayer.PlayerGui.Notifications:GetChildren()) do
		v127:Destroy();
	end
	wait();
	require(game:GetService("ReplicatedStorage").Notification).new(tostring(v1)):Display();
	if (v2 == nil) then
	elseif (v2 == "YM") then
		game.Players.LocalPlayer.PlayerGui.Notifications.NotificationTemplate.TextColor3 = Color3.new(0.890196, 1, 0.494118);
	elseif (v2 == "GM") then
		game.Players.LocalPlayer.PlayerGui.Notifications.NotificationTemplate.TextColor3 = Color3.new(0.403922, 1, 0.454902);
	elseif (v2 == "LM") then
		game.Players.LocalPlayer.PlayerGui.Notifications.NotificationTemplate.TextColor3 = Color3.new(1, 1, 1);
	elseif (v2 == "PM") then
		game.Players.LocalPlayer.PlayerGui.Notifications.NotificationTemplate.TextColor3 = Color3.new(0.686275, 0.580392, 1);
	elseif (v2 == "RM") then
		game.Players.LocalPlayer.PlayerGui.Notifications.NotificationTemplate.TextColor3 = Color3.new(1, 0.439216, 0.607843);
	end
end

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
local v10 = game.Players.LocalPlayer:GetMouse();
local Nameplayer = game.Players.LocalPlayer.Name
local v11 = game.GetService(game, "GuiService");
local v12 = game.GetService(game, "Players");
local v13 = v12.LocalPlayer;
local v14 = game.GetService(game, "Workspace").CurrentCamera;

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


local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Minecarfh/Manake-Hub-All-Script/main/Lib.lua"))()
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
	List = {"Very Slow","Slow","Fast","Super Fast { Careful }"},
	Value = "Fast",
	Flag = "Drop Select Weapon",
	Callback = function(V)
		if V == "Slow" then
			_G.Fast_Delay = 0.05
		elseif V == "Very Slow" then
			_G.Fast_Delay = 0.1
		elseif V == "Fast" then
			_G.Fast_Delay = 0.01
		elseif V == "Super Fast { Careful }" then
			_G.Fast_Delay = 0
		end
	end
})

Setting_Farm:AddDropdown({
	Name = "Select Auto Attack",
	List = {"Auto Click { Normal }","Auto Click { Check Mon }","Auto Click { Check Player }"},
	Value = "Auto Click { Normal }",
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
		_G.FarmCFrameUpdown = true
	end
})

Setting_Farm:AddToggle({
	Name = " Farm CFrame Up Down",
	Flag = " Farm CFrame Up Down ",
	Callback = function(Value)
		_G.FarmCFrameUpdown = Value
		_G.FarmRandomCFrame = false
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

_G.ISland = {}
_G.NPC = {}

PlayerTap_S:AddDropdown({
	Name = "Select Island",
	List = _G.ISland,
	Flag = "Drop Select Islabd",
	Callback = function(V)
		_G.Select_Island = V
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
	end
})

PlayerTap_STP:AddToggle({
	Name = " Super Spectate Player ",
	Callback = function(Value)
		_G.Super_Spectate = Value
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

BoatSpeedChange:AddSlider({
	Name = " Speed ",
	Flag = "CRC",
	Value = 100,
	Min = 10,
	Max = 500,
	Textbox = true,
	Format = function(Value)
		_G.BCS = Value
		return "{ Change Speed : " .. tostring(Value) .. " Km }"
	end
})
BoatSpeedChange:AddSlider({
	Name = " TurnSpeed ",
	Flag = "CRC",
	Value = 100,
	Min = 10,
	Max = 500,
	Textbox = true,
	Format = function(Value)
		_G.CTS = Value
		BoatSpeed_Turn:Set("{ Change TurnSpeed : " .. tostring(Value) .. " Km }")
		return "TurnSpeed"
	end
})



-- Script

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
							CheckmonA:Set("{ Check Mon Around : Attack }")
						else
							CheckmonA:Set("{ Check Mon Around : UnAttack }")
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
_G.DElayAttack = 0

spawn(function()
    while true do wait()
        getgenv().rejoin = game:GetService("CoreGui").RobloxPromptGui.promptOverlay.ChildAdded:Connect(function(Kick)
            if not _G.TP_Ser and _G.Rejoin then
                if Kick.Name == 'ErrorPrompt' and Kick:FindFirstChild('MessageArea') and Kick.MessageArea:FindFirstChild("ErrorFrame") then
                    game:GetService("TeleportService"):Teleport(game.PlaceId)
                    wait(50)
                end
            end
        end)
    end
end)


spawn(function()
	while wait(.5) do
		pcall(function()
			if _G.Fast_Attach_Toggle then
				repeat wait(_G.Fast_Delay)
					if _G.Cooldown_Attach  then
						if _G.DElayAttack == _G.CFA then
							wait(1)
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
	else
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
if _G.Bypass_Tp then
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
end

function BringM(NameMon,v1,v2,v3)
	if _G.Bringmob then
		pcall(function()
			CheckQuest();
			for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
				for x,y in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
					if v.Name == NameMon then
						if y.Name == NameMon then
							v.HumanoidRootPart.CFrame = CFrameMon
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

		end)
	end
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
			if game.player.LocalPlayer.Character.humanoid.Health <= 0 then
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
		if _G.AutoFarm or _G.FarmSky2 then
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
                                EquipWeapon(_G.Setting_table.Weapon)
                                v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                v47(v.HumanoidRootPart.CFrame*CFrame.new(0,25,15))
                                game:GetService'VirtualUser':CaptureController()
                                game:GetService'VirtualUser':Button1Down(Vector2.new(1280,900))
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
						v47(game.Workspace.SavePosSky.Pos1.CFrame);
					end
				end
				if game.Workspace.Enemies:FindFirstChild("Royal Soldier [Lv. 550]") then
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
						v47(game.Workspace.SavePosSky.Pos1.CFrame);
					end
				end
			end
		end)
	end
end)



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
			Framing_Label:Set(" Farming : Level")
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
