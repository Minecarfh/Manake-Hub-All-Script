writefile("Check_Loading.txt","false")
game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
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
wait(1)
local v0 = loadstring(game:HttpGet("https://raw.githubusercontent.com/vozoid/ui-libraries/main/drawing/void/source.lua"))();
local vu = game:GetService("VirtualUser")
local v1 = loadstring(game:HttpGet("https://raw.githubusercontent.com/LeoKholYt/roblox/main/lk_serverhop.lua"))();
local v2 = game:GetService("UserInputService");
local v3 = game:GetService("RunService");
local v4 = game.Players.LocalPlayer.Name;
local UserInputService = game:GetService("UserInputService")
writefile("Manake Hub Premium script/OldBounty_"..game.Players.LocalPlayer.Name..".txt" , tostring(game.Players.LocalPlayer.leaderstats["Bounty/Honor"].Value))
writefile("Manake Hub Premium script/KeepNowBounty_"..game.Players.LocalPlayer.Name..".txt" , tostring(game.Players.LocalPlayer.leaderstats["Bounty/Honor"].Value))
setfpscap(360);
Old_World = false;
New_World = false;
Three_World = false;
local v5 = game.PlaceId;
if (v5 == 2753915549) then
	Old_World = true;
elseif (v5 == 4442272183) then
	New_World = true;
elseif (v5 == 7449423635) then
	Three_World = true;
end
local v6 = game.Players.LocalPlayer:GetMouse();
local v7 = game.GetService(game, "GuiService");
local v8 = game.GetService(game, "Players");
local v9 = v8.LocalPlayer;
local v10 = game.GetService(game, "Workspace").CurrentCamera;

local v7250 = Instance.new("Folder")
v7250.Name = "SavePosIsland"
v7250.Parent = game.Workspace;

local v12 = Instance.new("Folder");
v12.Name = "SaveSpeedBoat";
v12.Parent = game.Workspace;

local v13 = Instance.new("Folder");
v13.Name = "WebHook";
v13.Parent = game.Workspace;

_G.DelEffect = false
_G.AutoFarmOF = false;
_G.AutoWorldTwo = false;
_G.AutoThirdSea = false;
_G.AutoFarmCandy = false;
_G.AutoFarmBones = false;
_G.AutoFarmFishTail = false;
_G.AutoFarmDragonScale = false;
_G.WeaponSelect = "";
_G.FarmFrame = CFrame.new(0,0,0)
_G.UpStats = "";
_G.RandomCFFARM = CFrame.new(0,0,0)
_G.LastLoadCheck = false
_G.LoadingLastConfigStart = false
_G.AutoStats_Melee = false;
_G.AutoStats_Defense = false;
_G.AutoStats_Sword = false;
_G.AutoStats_Gun = false;
_G.AutoStats_Fruit = false;
_G.AutoStats = false;
_G.StatsPoint = 1;
_G.AutoStats_Epa = false;
_G.FastAttack = true;
_G.BypassTp = false;
_G.FastTween = false;
_G.AutoCakePrince = false;
_G.AutoEliteHunter = false;
_G.AutoYama = false;
_G.AutoHoolow = false;
_G.AutoSurprise = false;
_G.FastAttackSpeed = false;
_G.Bringmob = true;
_G.Jobid = "";
_G.BoatSped = 1;
_G.SelectDun = "";
_G.Kill_Aura = false;
_G.AutoSniperFrit = "";
_G.Fruits_Sniper = false;
_G.AutoEat_Fuit = false;
_G.AimbotWatermark = true;
_G.AimbotRaceWatermark = true;
_G.AimbotEnergyV4Watermark = true;
_G.Auto_Store_Fruits = false;
_G.Auto_Random_Fruit = false;
_G.Auto_Bring_Fruits = false;
if game:GetService("Players").LocalPlayer.PlayerGui.Main:FindFirstChild("ChooseTeam") then
	repeat wait()
		if game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("Main").ChooseTeam.Visible == true then
			for i, v in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Pirates.Frame.ViewportFrame.TextButton.Activated)) do                                                                                                
				v.Function()
			end
		end
	until game.Players.LocalPlayer.Team ~= nil and game:IsLoaded()
end



click = function()
	game:GetService("VirtualUser"):CaptureController();
	game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672));
end;
AutoHaki = function()
	if not game:GetService("Players").LocalPlayer.Character:FindFirstChild("HasBuso") then
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso");
	end
end;
Equip = function(v19)
	if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(v19) then
		getgenv().Tol = game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(v19);
		game.Players.LocalPlayer.Character.Humanoid:EquipTool(Tol);
	end
end;
CheckMasteryWeapon = function(v20, v21)
	if game.Players.LocalPlayer.Backpack:FindFirstChild(v20) then
		if (tonumber(game.Players.LocalPlayer.Backpack:FindFirstChild(v20).Level.Value) < tonumber(v21)) then
			return "true DownTo";
		elseif (tonumber(game.Players.LocalPlayer.Backpack:FindFirstChild(v20).Level.Value) >= tonumber(v21)) then
			return "true UpTo";
		end
	end
	if game.Players.LocalPlayer.Character:FindFirstChild(v20) then
		if (tonumber(game.Players.LocalPlayer.Character:FindFirstChild(v20).Level.Value) < tonumber(v21)) then
			return "true DownTo";
		elseif (tonumber(game.Players.LocalPlayer.Character:FindFirstChild(v20).Level.Value) >= tonumber(v21)) then
			return "true UpTo";
		end
	end
	return "else";
end;
local function v22(v23)
	if Old_World then
		if (v23 == "Magma Ore") then
			MaterialMob = {"Military Soldier [Lv. 300]","Military Spy [Lv. 325]"};
			CFrameMon = CFrame.new(-5815, 84, 8820);
		elseif ((v23 == "Leather") or (v23 == "Scrap Metal")) then
			MaterialMob = {"Brute [Lv. 45]"};
			CFrameMon = CFrame.new(-1145, 15, 4350);
		elseif (v23 == "Angel Wings") then
			MaterialMob = {"God's Guard [Lv. 450]"};
			CFrameMon = CFrame.new(-4698, 845, -1912);
		elseif (v23 == "Fish Tail") then
			MaterialMob = {"Fishman Warrior [Lv. 375]","Fishman Commando [Lv. 400]"};
			CFrameMon = CFrame.new(61123, 19, 1569);
		end
	end
	if New_World then
		if (v23 == "Magma Ore") then
			MaterialMob = {"Magma Ninja [Lv. 1175]"};
			CFrameMon = CFrame.new(-5428, 78, -5959);
		elseif (v23 == "Scrap Metal") then
			MaterialMob = {"Swan Pirate [Lv. 775]"};
			CFrameMon = CFrame.new(878, 122, 1235);
		elseif (v23 == "Radioactive Material") then
			MaterialMob = {"Factory Staff [Lv. 800]"};
			CFrameMon = CFrame.new(295, 73, -56);
		elseif (v23 == "Vampire Fang") then
			MaterialMob = {"Vampire [Lv. 975]"};
			CFrameMon = CFrame.new(-6033, 7, -1317);
		elseif (v23 == "Mystic Droplet") then
			MaterialMob = {"Water Fighter [Lv. 1450]","Sea Soldier [Lv. 1425]"};
			CFrameMon = CFrame.new(-3385, 239, -10542);
		end
	end
	if Three_World then
		if (v23 == "Mini Tusk") then
			MaterialMob = {"Mythological Pirate [Lv. 1850]"};
			CFrameMon = CFrame.new(-13545, 470, -6917);
		elseif (v23 == "Fish Tail") then
			MaterialMob = {"Fishman Raider [Lv. 1775]","Fishman Captain [Lv. 1800]"};
			CFrameMon = CFrame.new(-10993, 332, -8940);
		elseif (v23 == "Scrap Metal") then
			MaterialMob = {"Jungle Pirate [Lv. 1900]"};
			CFrameMon = CFrame.new(-12107, 332, -10549);
		elseif (v23 == "Dragon Scale") then
			MaterialMob = {"Dragon Crew Archer [Lv. 1600]","Dragon Crew Warrior [Lv. 1575]"};
			CFrameMon = CFrame.new(6594, 383, 139);
		elseif (v23 == "Conjured Cocoa") then
			MaterialMob = {"Cocoa Warrior [Lv. 2300]","Chocolate Bar Battler [Lv. 2325]","Sweet Thief [Lv. 2350]","Candy Rebel [Lv. 2375]"};
			CFrameMon = CFrame.new(620.6344604492188, 78.93644714355469, -12581.369140625);
		elseif (v23 == "Demonic Wisp") then
			MaterialMob = {"Demonic Soul [Lv. 2025]"};
			CFrameMon = CFrame.new(-9507, 172, 6158);
		elseif (v23 == "Gunpowder") then
			MaterialMob = {"Pistol Billionaire [Lv. 1525]"};
			CFrameMon = CFrame.new(-469, 74, 5904);
		end
	end
end
CheckQuest = function()
	local v131 = game.Players.LocalPlayer.Data.Level.Value;
	if Old_World then
		if ((v131 == 1) or (v131 <= 9)) then
			LevelFarm = 1;
			Name = "Bandit [Lv. 5]";
			QuestName = "BanditQuest1";
			LevelQuest = 1;
			NameMon = "Bandit";
			CFrameMon = CFrame.new(1145, 17, 1634);
			VectorMon = Vector3.new(1145, 17, 1634);
			CFrameQuest = CFrame.new(1060, 17, 1547);
			VectorQuest = Vector3.new(1060, 17, 1547);
		elseif ((v131 == 10) or (v131 <= 14)) then
			LevelFarm = 2;
			Name = "Monkey [Lv. 14]";
			QuestName = "JungleQuest";
			LevelQuest = 1;
			NameMon = "Monkey";
			CFrameMon = CFrame.new(-1496, 39, 35);
			VectorMon = Vector3.new(-1496, 39, 35);
			CFrameQuest = CFrame.new(-1602, 37, 152);
			VectorQuest = Vector3.new(-1602, 37, 152);
		elseif ((v131 == 15) or (v131 <= 29)) then
			LevelFarm = 3;
			Name = "Gorilla [Lv. 20]";
			QuestName = "JungleQuest";
			LevelQuest = 2;
			NameMon = "Gorilla";
			CFrameMon = CFrame.new(-1237, 6, -486);
			VectorMon = Vector3.new(-1237, 7, -486);
			CFrameQuest = CFrame.new(-1602, 37, 152);
			VectorQuest = Vector3.new(-1602, 37, 152);
		elseif ((v131 == 30) or (v131 <= 39)) then
			LevelFarm = 4;
			Name = "Pirate [Lv. 35]";
			QuestName = "BuggyQuest1";
			LevelQuest = 1;
			NameMon = "Pirate";
			CFrameMon = CFrame.new(-1115, 14, 3938);
			VectorMon = Vector3.new(-1115, 14, 3938);
			CFrameQuest = CFrame.new(-1140, 5, 3828);
			VectorQuest = Vector3.new(-1140, 5, 3828);
		elseif ((v131 == 40) or (v131 <= 59)) then
			LevelFarm = 5;
			Name = "Brute [Lv. 45]";
			QuestName = "BuggyQuest1";
			LevelQuest = 2;
			NameMon = "Brute";
			CFrameMon = CFrame.new(-1145, 15, 4350);
			VectorMon = Vector3.new(-1146, 15, 4350);
			CFrameQuest = CFrame.new(-1140, 5, 3828);
			VectorQuest = Vector3.new(-1140, 5, 3828);
		elseif ((v131 == 60) or (v131 <= 74)) then
			LevelFarm = 6;
			Name = "Desert Bandit [Lv. 60]";
			QuestName = "DesertQuest";
			LevelQuest = 1;
			NameMon = "Desert Bandit";
			CFrameMon = CFrame.new(932, 7, 4484);
			VectorMon = Vector3.new(932, 7, 4484);
			CFrameQuest = CFrame.new(897, 7, 4388);
			VectorQuest = Vector3.new(897, 7, 4388);
		elseif ((v131 == 75) or (v131 <= 89)) then
			LevelFarm = 7;
			Name = "Desert Officer [Lv. 70]";
			QuestName = "DesertQuest";
			LevelQuest = 2;
			NameMon = "Desert Officer";
			CFrameMon = CFrame.new(1572, 10, 4373);
			VectorMon = Vector3.new(1572, 10, 4373);
			CFrameQuest = CFrame.new(897, 7, 4388);
			VectorQuest = Vector3.new(897, 7, 4388);
		elseif ((v131 == 90) or (v131 <= 99)) then
			LevelFarm = 8;
			Name = "Snow Bandit [Lv. 90]";
			QuestName = "SnowQuest";
			LevelQuest = 1;
			NameMon = "Snow Bandits";
			CFrameMon = CFrame.new(1289, 150, -1442);
			VectorMon = Vector3.new(1289, 106, -1442);
			CFrameQuest = CFrame.new(1386, 87, -1297);
			VectorQuest = Vector3.new(1386, 87, -1297);
		elseif ((v131 == 100) or (v131 <= 119)) then
			LevelFarm = 9;
			Name = "Snowman [Lv. 100]";
			QuestName = "SnowQuest";
			LevelQuest = 2;
			NameMon = "Snowman";
			CFrameMon = CFrame.new(1289, 150, -1442);
			VectorMon = Vector3.new(1289, 106, -1442);
			CFrameQuest = CFrame.new(1386, 87, -1297);
			VectorQuest = Vector3.new(1386, 87, -1297);
		elseif ((v131 == 120) or (v131 <= 149)) then
			LevelFarm = 10;
			Name = "Chief Petty Officer [Lv. 120]";
			QuestName = "MarineQuest2";
			LevelQuest = 1;
			NameMon = "Chief Petty Officer";
			CFrameMon = CFrame.new(-4855, 23, 4308);
			VectorMon = Vector3.new(-4855, 23, 4308);
			CFrameQuest = CFrame.new(-5036, 29, 4325);
			VectorQuest = Vector3.new(-5036, 29, 4325);
		elseif ((v131 == 150) or (v131 <= 174)) then
			LevelFarm = 11;
			Name = "Sky Bandit [Lv. 150]";
			QuestName = "SkyQuest";
			LevelQuest = 1;
			NameMon = "Sky Bandit";
			CFrameMon = CFrame.new(-4981, 278, -2830);
			VectorMon = Vector3.new(-4981, 278, -2830);
			CFrameQuest = CFrame.new(-4842, 718, -2623);
			VectorQuest = Vector3.new(-4842, 718, -2623);
		elseif ((v131 == 175) or (v131 <= 189)) then
			LevelFarm = 12;
			Name = "Dark Master [Lv. 175]";
			QuestName = "SkyQuest";
			LevelQuest = 2;
			NameMon = "Dark Master";
			CFrameMon = CFrame.new(-5250, 389, -2272);
			VectorMon = Vector3.new(-5250, 389, -2272);
			CFrameQuest = CFrame.new(-4842, 718, -2623);
			VectorQuest = Vector3.new(-4842, 718, -2623);
		elseif ((v131 == 190) or (v131 <= 209)) then
			LevelFarm = 13;
			Name = "Prisoner [Lv. 190]";
			QuestName = "PrisonerQuest";
			LevelQuest = 1;
			NameMon = "Prisoner";
			CFrameMon = CFrame.new(5411, 96, 690);
			VectorMon = Vector3.new(5411, 96, 690);
			CFrameQuest = CFrame.new(5308, 2, 474);
			VectorQuest = Vector3.new(5308, 2, 474);
		elseif ((v131 == 210) or (v131 <= 249)) then
			LevelFarm = 14;
			Name = "Dangerous Prisoner [Lv. 210]";
			QuestName = "PrisonerQuest";
			LevelQuest = 2;
			NameMon = "Dangerous Prisoner";
			CFrameMon = CFrame.new(5411, 96, 690);
			VectorMon = Vector3.new(5411, 96, 690);
			CFrameQuest = CFrame.new(5308, 2, 474);
			VectorQuest = Vector3.new(5308, 2, 474);
		elseif ((v131 == 250) or (v131 <= 299)) then
			LevelFarm = 15;
			Name = "Toga Warrior [Lv. 250]";
			QuestName = "ColosseumQuest";
			LevelQuest = 1;
			NameMon = "Toga Warrior";
			CFrameMon = CFrame.new(-1824, 50, -2743);
			VectorMon = Vector3.new(-1824, 50, -2743);
			CFrameQuest = CFrame.new(-1576, 8, -2985);
			VectorQuest = Vector3.new(-1576, 8, -2985);
		elseif ((v131 == 300) or (v131 <= 329)) then
			LevelFarm = 16;
			Name = "Military Soldier [Lv. 300]";
			QuestName = "MagmaQuest";
			LevelQuest = 1;
			NameMon = "Military Soldier";
			CFrameMon = CFrame.new(-5408, 11, 8447);
			VectorMon = Vector3.new(-5408, 11, 8447);
			CFrameQuest = CFrame.new(-5316, 12, 8517);
			VectorQuest = Vector3.new(-5316, 12, 8517);
		elseif ((v131 == 330) or (v131 <= 374)) then
			LevelFarm = 17;
			Name = "Military Spy [Lv. 325]";
			QuestName = "MagmaQuest";
			LevelQuest = 2;
			NameMon = "Military Spy";
			CFrameMon = CFrame.new(-5815, 84, 8820);
			VectorMon = Vector3.new(-5815, 84, 8820);
			CFrameQuest = CFrame.new(-5316, 12, 8517);
			VectorQuest = Vector3.new(-5316, 12, 8517);
		elseif ((v131 == 375) or (v131 <= 399)) then
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
		elseif ((v131 == 400) or (v131 <= 449)) then
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
		elseif ((v131 == 450) or (v131 <= 474)) then
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
		elseif ((v131 == 475) or (v131 <= 524)) then
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
		elseif ((v131 == 525) or (v131 <= 549)) then
			LevelFarm = 22;
			Name = "Royal Squad [Lv. 525]";
			QuestName = "SkyExp2Quest";
			LevelQuest = 1;
			NameMon = "Royal Squad";
			CFrameMon = CFrame.new(-7670, 5607, -1460);
			VectorMon = Vector3.new(-7670, 5607, -1460);
			CFrameQuest = CFrame.new(-7904, 5636, -1412);
			VectorQuest = Vector3.new(-7904, 5636, -1412);
		elseif ((v131 == 550) or (v131 <= 624)) then
			LevelFarm = 23;
			Name = "Royal Soldier [Lv. 550]";
			QuestName = "SkyExp2Quest";
			LevelQuest = 2;
			NameMon = "Royal Soldier";
			CFrameMon = CFrame.new(-7828, 5607, -1744);
			VectorMon = Vector3.new(-7828, 5607, -1744);
			CFrameQuest = CFrame.new(-7904, 5636, -1412);
			VectorQuest = Vector3.new(-7904, 5636, -1412);
		elseif ((v131 == 625) or (v131 <= 649)) then
			LevelFarm = 24;
			Name = "Galley Pirate [Lv. 625]";
			QuestName = "FountainQuest";
			LevelQuest = 1;
			NameMon = "Galley Pirate";
			CFrameMon = CFrame.new(5589, 45, 3996);
			VectorMon = Vector3.new(5589, 45, 3996);
			CFrameQuest = CFrame.new(5256, 39, 4050);
			VectorQuest = Vector3.new(5256, 39, 4050);
		elseif (v131 >= 650) then
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
		if ((v131 == 700) or (v131 <= 724)) then
			LevelFarm = 1;
			Name = "Raider [Lv. 700]";
			QuestName = "Area1Quest";
			LevelQuest = 1;
			NameMon = "Raider";
			CFrameQuest = CFrame.new(-425, 73, 1837);
			VectorQuest = Vector3.new(-425, 73, 1837);
			CFrameMon = CFrame.new(-746, 39, 2390);
			VectorMon = Vector3.new(-746, 39, 2389);
		elseif ((v131 == 725) or (v131 <= 774)) then
			LevelFarm = 2;
			Name = "Mercenary [Lv. 725]";
			QuestName = "Area1Quest";
			LevelQuest = 2;
			NameMon = "Mercenary";
			CFrameQuest = CFrame.new(-425, 73, 1837);
			VectorQuest = Vector3.new(-425, 73, 1837);
			CFrameMon = CFrame.new(-874, 141, 1312);
			VectorMon = Vector3.new(-874, 141, 1312);
		elseif ((v131 == 775) or (v131 <= 799)) then
			LevelFarm = 3;
			Name = "Swan Pirate [Lv. 775]";
			QuestName = "Area2Quest";
			LevelQuest = 1;
			NameMon = "Swan Pirate";
			CFrameQuest = CFrame.new(634, 73, 918);
			VectorQuest = Vector3.new(634, 73, 918);
			CFrameMon = CFrame.new(878, 122, 1235);
			VectorMon = Vector3.new(878, 122, 1235);
		elseif ((v131 == 800) or (v131 <= 874)) then
			LevelFarm = 4;
			Name = "Factory Staff [Lv. 800]";
			QuestName = "Area2Quest";
			LevelQuest = 2;
			NameMon = "Factory Staff";
			CFrameQuest = CFrame.new(634, 73, 918);
			VectorQuest = Vector3.new(634, 73, 918);
			CFrameMon = CFrame.new(295, 73, -56);
			VectorMon = Vector3.new(295, 73, -56);
		elseif ((v131 == 875) or (v131 <= 899)) then
			LevelFarm = 5;
			Name = "Marine Lieutenant [Lv. 875]";
			QuestName = "MarineQuest3";
			LevelQuest = 1;
			NameMon = "Marine Lieutenant";
			CFrameMon = CFrame.new(-2806, 73, -3038);
			VectorMon = Vector3.new(-2806, 73, -3038);
			CFrameQuest = CFrame.new(-2443, 73, -3219);
			VectorQuest = Vector3.new(-2443, 73, -3219);
		elseif ((v131 == 900) or (v131 <= 949)) then
			LevelFarm = 6;
			Name = "Marine Captain [Lv. 900]";
			QuestName = "MarineQuest3";
			LevelQuest = 2;
			NameMon = "Marine Captain";
			CFrameMon = CFrame.new(-1869, 73, -3320);
			VectorMon = Vector3.new(-1869, 73, -3320);
			CFrameQuest = CFrame.new(-2443, 73, -3219);
			VectorQuest = Vector3.new(-2443, 73, -3219);
		elseif ((v131 == 950) or (v131 <= 974)) then
			LevelFarm = 7;
			Name = "Zombie [Lv. 950]";
			QuestName = "ZombieQuest";
			LevelQuest = 1;
			NameMon = "Zombie";
			CFrameMon = CFrame.new(-5736, 126, -728);
			VectorMon = Vector3.new(-5736, 126, -728);
			CFrameQuest = CFrame.new(-5494, 49, -795);
			VectorQuest = Vector3.new(-5494, 49, -794);
		elseif ((v131 == 975) or (v131 <= 999)) then
			LevelFarm = 8;
			Name = "Vampire [Lv. 975]";
			QuestName = "ZombieQuest";
			LevelQuest = 2;
			NameMon = "Vampire";
			CFrameMon = CFrame.new(-6033, 7, -1317);
			VectorMon = Vector3.new(-6033, 7, -1317);
			CFrameQuest = CFrame.new(-5494, 49, -795);
			VectorQuest = Vector3.new(-5494, 49, -795);
		elseif ((v131 == 1000) or (v131 <= 1049)) then
			LevelFarm = 9;
			Name = "Snow Trooper [Lv. 1000]";
			QuestName = "SnowMountainQuest";
			LevelQuest = 1;
			NameMon = "Snow Trooper";
			CFrameMon = CFrame.new(478, 402, -5362);
			VectorMon = Vector3.new(478, 402, -5362);
			CFrameQuest = CFrame.new(605, 402, -5371);
			VectorQuest = Vector3.new(605, 402, -5371);
		elseif ((v131 == 1050) or (v131 <= 1099)) then
			LevelFarm = 10;
			Name = "Winter Warrior [Lv. 1050]";
			QuestName = "SnowMountainQuest";
			LevelQuest = 2;
			NameMon = "Winter Warrior";
			CFrameMon = CFrame.new(1157, 430, -5188);
			VectorMon = Vector3.new(1157, 430, -5188);
			CFrameQuest = CFrame.new(605, 402, -5371);
			VectorQuest = Vector3.new(605, 402, -5371);
		elseif ((v131 == 1100) or (v131 <= 1124)) then
			LevelFarm = 11;
			Name = "Lab Subordinate [Lv. 1100]";
			QuestName = "IceSideQuest";
			LevelQuest = 1;
			NameMon = "Lab Subordinate";
			CFrameMon = CFrame.new(-5782, 42, -4484);
			VectorMon = Vector3.new(-5782, 42, -4484);
			CFrameQuest = CFrame.new(-6060, 16, -4905);
			VectorQuest = Vector3.new(-6060, 16, -4905);
		elseif ((v131 == 1125) or (v131 <= 1174)) then
			LevelFarm = 12;
			Name = "Horned Warrior [Lv. 1125]";
			QuestName = "IceSideQuest";
			LevelQuest = 2;
			NameMon = "Horned Warrior";
			CFrameMon = CFrame.new(-6406, 24, -5805);
			VectorMon = Vector3.new(-6406, 24, -5805);
			CFrameQuest = CFrame.new(-6060, 16, -4905);
			VectorQuest = Vector3.new(-6060, 16, -4905);
		elseif ((v131 == 1175) or (v131 <= 1199)) then
			LevelFarm = 13;
			Name = "Magma Ninja [Lv. 1175]";
			QuestName = "FireSideQuest";
			LevelQuest = 1;
			NameMon = "Magma Ninja";
			CFrameMon = CFrame.new(-5428, 78, -5959);
			VectorMon = Vector3.new(-5428, 78, -5959);
			CFrameQuest = CFrame.new(-5430, 16, -5295);
			VectorQuest = Vector3.new(-5430, 16, -5296);
		elseif ((v131 == 1200) or (v131 <= 1249)) then
			LevelFarm = 14;
			Name = "Lava Pirate [Lv. 1200]";
			QuestName = "FireSideQuest";
			LevelQuest = 2;
			NameMon = "Lava Pirate";
			CFrameMon = CFrame.new(-5270, 42, -4800);
			VectorMon = Vector3.new(-5270, 42, -4800);
			CFrameQuest = CFrame.new(-5430, 16, -5295);
			VectorQuest = Vector3.new(-5430, 16, -5296);
		elseif ((v131 == 1250) or (v131 <= 1274)) then
			LevelFarm = 15;
			Name = "Ship Deckhand [Lv. 1250]";
			QuestName = "ShipQuest1";
			LevelQuest = 1;
			NameMon = "Ship Deckhand";
			CFrameMon = CFrame.new(1198, 126, 33031);
			VectorMon = Vector3.new(1198, 126, 33031);
			CFrameQuest = CFrame.new(1038, 125, 32913);
			VectorQuest = Vector3.new(1038, 125, 32913);
		elseif ((v131 == 1275) or (v131 <= 1299)) then
			LevelFarm = 16;
			Name = "Ship Engineer [Lv. 1275]";
			QuestName = "ShipQuest1";
			LevelQuest = 2;
			NameMon = "Ship Engineer";
			CFrameMon = CFrame.new(918, 44, 32787);
			VectorMon = Vector3.new(918, 44, 32787);
			CFrameQuest = CFrame.new(1038, 125, 32913);
			VectorQuest = Vector3.new(1038, 125, 32913);
		elseif ((v131 == 1300) or (v131 <= 1324)) then
			LevelFarm = 17;
			Name = "Ship Steward [Lv. 1300]";
			QuestName = "ShipQuest2";
			LevelQuest = 1;
			NameMon = "Ship Steward";
			CFrameMon = CFrame.new(915, 130, 33419);
			VectorMon = Vector3.new(915, 130, 33419);
			CFrameQuest = CFrame.new(969, 125, 33245);
			VectorQuest = Vector3.new(969, 125, 33245);
		elseif ((v131 == 1325) or (v131 <= 1349)) then
			LevelFarm = 18;
			Name = "Ship Officer [Lv. 1325]";
			QuestName = "ShipQuest2";
			LevelQuest = 2;
			NameMon = "Ship Officer";
			CFrameMon = CFrame.new(916, 181, 33335);
			VectorMon = Vector3.new(916, 181, 33335);
			CFrameQuest = CFrame.new(969, 125, 33245);
			VectorQuest = Vector3.new(969, 125, 33245);
		elseif ((v131 == 1350) or (v131 <= 1374)) then
			LevelFarm = 19;
			Name = "Arctic Warrior [Lv. 1350]";
			QuestName = "FrostQuest";
			LevelQuest = 1;
			NameMon = "Arctic Warrior";
			CFrameMon = CFrame.new(6038, 29, -6231);
			VectorMon = Vector3.new(6038, 29, -6231);
			VectorQuest = Vector3.new(5669, 28, -6482);
			CFrameQuest = CFrame.new(5669, 28, -6482);
		elseif ((v131 == 1375) or (v131 <= 1424)) then
			LevelFarm = 20;
			Name = "Snow Lurker [Lv. 1375]";
			QuestName = "FrostQuest";
			LevelQuest = 2;
			NameMon = "Snow Lurker";
			CFrameMon = CFrame.new(5560, 42, -6826);
			VectorMon = Vector3.new(5560, 42, -6826);
			VectorQuest = Vector3.new(5669, 28, -6482);
			CFrameQuest = CFrame.new(5669, 28, -6482);
		elseif ((v131 == 1425) or (v131 <= 1449)) then
			LevelFarm = 21;
			Name = "Sea Soldier [Lv. 1425]";
			QuestName = "ForgottenQuest";
			LevelQuest = 1;
			NameMon = "Sea Soldier";
			CFrameMon = CFrame.new(-3022, 16, -9722);
			VectorMon = Vector3.new(-3022, 16, -9722);
			CFrameQuest = CFrame.new(-3054, 237, -10148);
			VectorQuest = Vector3.new(-3054, 237, -10148);
		elseif (v131 >= 1450) then
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
		if ((v131 == 1500) or (v131 <= 1524)) then
			LevelFarm = 1;
			Name = "Pirate Millionaire [Lv. 1500]";
			QuestName = "PiratePortQuest";
			LevelQuest = 1;
			NameMon = "Pirate";
			CFrameMon = CFrame.new(-373, 75, 5550);
			VectorMon = Vector3.new(-373, 75, 5550);
			CFrameQuest = CFrame.new(-288, 44, 5576);
			VectorQuest = Vector3.new(-288, 44, 5576);
		elseif ((v131 == 1525) or (v131 <= 1574)) then
			LevelFarm = 2;
			Name = "Pistol Billionaire [Lv. 1525]";
			QuestName = "PiratePortQuest";
			LevelQuest = 2;
			NameMon = "Pistol";
			CFrameMon = CFrame.new(-469, 74, 5904);
			VectorMon = Vector3.new(-469, 74, 5904);
			CFrameQuest = CFrame.new(-288, 44, 5576);
			VectorQuest = Vector3.new(-288, 44, 5576);
		elseif ((v131 == 1575) or (v131 <= 1599)) then
			LevelFarm = 3;
			Name = "Dragon Crew Warrior [Lv. 1575]";
			QuestName = "AmazonQuest";
			LevelQuest = 1;
			NameMon = "Warrior";
			CFrameMon = CFrame.new(6339, 52, -1213);
			VectorMon = Vector3.new(6338, 52, -1213);
			CFrameQuest = CFrame.new(5835, 52, -1105);
			VectorQuest = Vector3.new(5835, 52, -1105);
		elseif ((v131 == 1600) or (v131 <= 1624)) then
			LevelFarm = 4;
			Name = "Dragon Crew Archer [Lv. 1600]";
			QuestName = "AmazonQuest";
			LevelQuest = 2;
			NameMon = "Archer";
			CFrameMon = CFrame.new(6594, 383, 139);
			VectorMon = Vector3.new(6594, 383, 139);
			CFrameQuest = CFrame.new(5835, 52, -1105);
			VectorQuest = Vector3.new(5835, 52, -1105);
		elseif ((v131 == 1625) or (v131 <= 1649)) then
			LevelFarm = 5;
			Name = "Female Islander [Lv. 1625]";
			QuestName = "AmazonQuest2";
			LevelQuest = 1;
			NameMon = "Female";
			CFrameMon = CFrame.new(5308, 819, 1047);
			VectorMon = Vector3.new(5308, 819, 1047);
			CFrameQuest = CFrame.new(5443, 602, 751);
			VectorQuest = Vector3.new(5443, 602, 751);
		elseif ((v131 == 1650) or (v131 <= 1699)) then
			LevelFarm = 6;
			Name = "Giant Islander [Lv. 1650]";
			QuestName = "AmazonQuest2";
			LevelQuest = 2;
			NameMon = "Giant Islanders";
			CFrameMon = CFrame.new(4951, 602, -68);
			VectorMon = Vector3.new(4951, 602, -68);
			CFrameQuest = CFrame.new(5443, 602, 751);
			VectorQuest = Vector3.new(5443, 602, 751);
		elseif ((v131 == 1700) or (v131 <= 1724)) then
			LevelFarm = 7;
			Name = "Marine Commodore [Lv. 1700]";
			QuestName = "MarineTreeIsland";
			LevelQuest = 1;
			NameMon = "Marine Commodore";
			CFrameMon = CFrame.new(2447, 73, -7470);
			VectorMon = Vector3.new(2447, 73, -7470);
			CFrameQuest = CFrame.new(2180, 29, -6737);
			VectorQuest = Vector3.new(2180, 29, -6737);
		elseif ((v131 == 1725) or (v131 <= 1774)) then
			LevelFarm = 8;
			Name = "Marine Rear Admiral [Lv. 1725]";
			QuestName = "MarineTreeIsland";
			LevelQuest = 2;
			NameMon = "Marine Rear Admiral";
			CFrameMon = CFrame.new(3671, 161, -6932);
			VectorMon = Vector3.new(3671, 161, -6932);
			CFrameQuest = CFrame.new(2180, 29, -6737);
			VectorQuest = Vector3.new(2180, 29, -6737);
		elseif ((v131 == 1775) or (v131 <= 1800)) then
			LevelFarm = 9;
			Name = "Fishman Raider [Lv. 1775]";
			QuestName = "DeepForestIsland3";
			LevelQuest = 1;
			NameMon = "Fishman Raider";
			CFrameMon = CFrame.new(-10560, 332, -8466);
			VectorMon = Vector3.new(-10560, 332, -8466);
			CFrameQuest = CFrame.new(-10584, 332, -8758);
			VectorQuest = Vector3.new(-10584, 332, -8758);
		elseif ((v131 == 1800) or (v131 <= 1824)) then
			LevelFarm = 10;
			Name = "Fishman Captain [Lv. 1800]";
			QuestName = "DeepForestIsland3";
			LevelQuest = 2;
			NameMon = "Fishman Captain";
			CFrameMon = CFrame.new(-10993, 332, -8940);
			VectorMon = Vector3.new(-10993, 332, -8940);
			CFrameQuest = CFrame.new(-10584, 332, -8758);
			VectorQuest = Vector3.new(-10584, 332, -8758);
		elseif ((v131 == 1825) or (v131 <= 1849)) then
			LevelFarm = 11;
			Name = "Forest Pirate [Lv. 1825]";
			QuestName = "DeepForestIsland";
			LevelQuest = 1;
			NameMon = "Forest Pirate";
			CFrameMon = CFrame.new(-13479, 333, -7905);
			VectorMon = Vector3.new(-13479, 333, -7905);
			CFrameQuest = CFrame.new(-13232, 333, -7627);
			VectorQuest = Vector3.new(-13232, 333, -7627);
		elseif ((v131 == 1850) or (v131 <= 1899)) then
			LevelFarm = 12;
			Name = "Mythological Pirate [Lv. 1850]";
			QuestName = "DeepForestIsland";
			LevelQuest = 2;
			NameMon = "Mythological Pirate";
			CFrameMon = CFrame.new(-13545, 470, -6917);
			VectorMon = Vector3.new(-13545, 470, -6917);
			CFrameQuest = CFrame.new(-13232, 333, -7627);
			VectorQuest = Vector3.new(-13232, 333, -7627);
		elseif ((v131 == 1900) or (v131 <= 1924)) then
			LevelFarm = 13;
			Name = "Jungle Pirate [Lv. 1900]";
			QuestName = "DeepForestIsland2";
			LevelQuest = 1;
			NameMon = "Jungle Pirate";
			CFrameMon = CFrame.new(-12107, 332, -10549);
			VectorMon = Vector3.new(-12106, 332, -10549);
			CFrameQuest = CFrame.new(-12684, 391, -9902);
			VectorQuest = Vector3.new(-12684, 391, -9902);
		elseif ((v131 == 1925) or (v131 <= 1974)) then
			LevelFarm = 14;
			Name = "Musketeer Pirate [Lv. 1925]";
			QuestName = "DeepForestIsland2";
			LevelQuest = 2;
			NameMon = "Musketeer Pirate";
			CFrameMon = CFrame.new(-13286, 392, -9769);
			VectorMon = Vector3.new(-13286, 392, -9768);
			CFrameQuest = CFrame.new(-12684, 391, -9902);
			VectorQuest = Vector3.new(-12684, 391, -9902);
		elseif ((v131 == 1975) or (v131 <= 1999)) then
			LevelFarm = 15;
			Name = "Reborn Skeleton [Lv. 1975]";
			QuestName = "HauntedQuest1";
			LevelQuest = 1;
			NameMon = "Reborn Skeleton";
			CFrameMon = CFrame.new(-8760, 142, 6039);
			VectorMon = Vector3.new(-8760, 142, 6039);
			CFrameQuest = CFrame.new(-9482, 142, 5567);
			VectorQuest = Vector3.new(-9482, 142, 5567);
		elseif ((v131 == 2000) or (v131 <= 2024)) then
			LevelFarm = 16;
			Name = "Living Zombie [Lv. 2000]";
			QuestName = "HauntedQuest1";
			LevelQuest = 2;
			NameMon = "Living Zombie";
			CFrameMon = CFrame.new(-10144, 140, 5932);
			VectorMon = Vector3.new(-10144, 140, 5932);
			CFrameQuest = CFrame.new(-9482, 142, 5567);
			VectorQuest = Vector3.new(-9482, 142, 5567);
		elseif ((v131 == 2025) or (v131 <= 2049)) then
			LevelFarm = 17;
			Name = "Demonic Soul [Lv. 2025]";
			QuestName = "HauntedQuest2";
			LevelQuest = 1;
			NameMon = "Demonic Soul";
			CFrameMon = CFrame.new(-9507, 172, 6158);
			VectorMon = Vector3.new(-9506, 172, 6158);
			CFrameQuest = CFrame.new(-9513, 172, 6079);
			VectorQuest = Vector3.new(-9513, 172, 6079);
		elseif ((v131 == 2050) or (v131 <= 2074)) then
			LevelFarm = 18;
			Name = "Posessed Mummy [Lv. 2050]";
			QuestName = "HauntedQuest2";
			LevelQuest = 2;
			NameMon = "Posessed Mummy";
			CFrameMon = CFrame.new(-9577, 6, 6223);
			VectorMon = Vector3.new(-9577, 6, 6223);
			CFrameQuest = CFrame.new(-9513, 172, 6079);
			VectorQuest = Vector3.new(-9513, 172, 6079);
		elseif ((v131 == 2075) or (v131 <= 2099)) then
			LevelFarm = 19;
			Name = "Peanut Scout [Lv. 2075]";
			QuestName = "NutsIslandQuest";
			LevelQuest = 1;
			NameMon = "Peanut Scout";
			CFrameMon = CFrame.new(-2124, 123, -10435);
			VectorMon = Vector3.new(-2124, 123, -10435);
			CFrameQuest = CFrame.new(-2104, 38, -10192);
			VectorQuest = Vector3.new(-2104, 38, -10192);
		elseif ((v131 == 2100) or (v131 <= 2124)) then
			LevelFarm = 20;
			Name = "Peanut President [Lv. 2100]";
			QuestName = "NutsIslandQuest";
			LevelQuest = 2;
			NameMon = "Peanut President";
			CFrameMon = CFrame.new(-2124, 123, -10435);
			VectorMon = Vector3.new(-2124, 123, -10435);
			CFrameQuest = CFrame.new(-2104, 38, -10192);
			VectorQuest = Vector3.new(-2104, 38, -10192);
		elseif ((v131 == 2125) or (v131 <= 2149)) then
			LevelFarm = 21;
			Name = "Ice Cream Chef [Lv. 2125]";
			QuestName = "IceCreamIslandQuest";
			LevelQuest = 1;
			NameMon = "Ice Cream Chef";
			CFrameMon = CFrame.new(-641, 127, -11062);
			VectorMon = Vector3.new(-641, 127, -11062);
			CFrameQuest = CFrame.new(-822, 66, -10965);
			VectorQuest = Vector3.new(-822, 66, -10965);
		elseif ((v131 == 2150) or (v131 <= 2199)) then
			LevelFarm = 22;
			Name = "Ice Cream Commander [Lv. 2150]";
			QuestName = "IceCreamIslandQuest";
			LevelQuest = 2;
			NameMon = "Ice Cream Commander";
			CFrameMon = CFrame.new(-641, 127, -11062);
			VectorMon = Vector3.new(-641, 127, -11062);
			CFrameQuest = CFrame.new(-822, 66, -10965);
			VectorQuest = Vector3.new(-822, 66, -10965);
		elseif ((v131 == 2200) or (v131 <= 2224)) then
			LevelFarm = 23;
			Name = "Cookie Crafter [Lv. 2200]";
			QuestName = "CakeQuest1";
			LevelQuest = 1;
			NameMon = "Cookie Crafter";
			CFrameMon = CFrame.new(-2365, 38, -12099);
			VectorMon = Vector3.new(-2365, 38, -12099);
			CFrameQuest = CFrame.new(-2020, 38, -12025);
			VectorQuest = Vector3.new(-2020, 38, -12025);
		elseif ((v131 == 2225) or (v131 <= 2249)) then
			LevelFarm = 24;
			Name = "Cake Guard [Lv. 2225]";
			QuestName = "CakeQuest1";
			LevelQuest = 2;
			NameMon = "Cake Guard";
			CFrameMon = CFrame.new(-1651, 38, -12308);
			VectorMon = Vector3.new(-1651, 38, -12308);
			CFrameQuest = CFrame.new(-2020, 38, -12025);
			VectorQuest = Vector3.new(-2020, 38, -12025);
		elseif ((v131 == 2250) or (v131 <= 2274)) then
			LevelFarm = 25;
			Name = "Baking Staff [Lv. 2250]";
			QuestName = "CakeQuest2";
			LevelQuest = 1;
			NameMon = "Baking Staff";
			CFrameMon = CFrame.new(-1870, 38, -12938);
			VectorMon = Vector3.new(-1870, 38, -12938);
			CFrameQuest = CFrame.new(-1926, 38, -12850);
			VectorQuest = Vector3.new(-1926, 38, -12850);
		elseif ((v131 == 2275) or (v131 <= 2299)) then
			LevelFarm = 26;
			Name = "Head Baker [Lv. 2275]";
			QuestName = "CakeQuest2";
			LevelQuest = 2;
			NameMon = "Head Baker";
			CFrameMon = CFrame.new(-1926, 88, -12850);
			VectorMon = CFrame.new(-1870, 38, -12938);
			CFrameQuest = CFrame.new(-1926, 38, -12850);
			VectorQuest = Vector3.new(-1926, 38, -12850);
		elseif ((v131 == 2300) or (v131 <= 2324)) then
			LevelFarm = 27;
			Name = "Cocoa Warrior [Lv. 2300]";
			QuestName = "ChocQuest1";
			LevelQuest = 1;
			NameMon = "Cocoa Warrior";
			CFrameMon = CFrame.new(231, 23, -12194);
			VectorMon = CFrame.new(231, 23, -12194);
			CFrameQuest = CFrame.new(231, 23, -12194);
			VectorQuest = Vector3.new(231, 23, -12194);
		elseif ((v131 == 2325) or (v131 <= 2349)) then
			LevelFarm = 28;
			Name = "Chocolate Bar Battler [Lv. 2325]";
			QuestName = "ChocQuest1";
			LevelQuest = 2;
			NameMon = "Chocolate Bar Battler";
			CFrameMon = CFrame.new(231, 23, -12194);
			VectorMon = CFrame.new(231, 23, -12194);
			CFrameQuest = CFrame.new(231, 23, -12194);
			VectorQuest = Vector3.new(231, 23, -12194);
		elseif ((v131 == 2350) or (v131 <= 2374)) then
			LevelFarm = 29;
			Name = "Sweet Thief [Lv. 2350]";
			QuestName = "ChocQuest2";
			LevelQuest = 1;
			NameMon = "Sweet Thief";
			CFrameMon = CFrame.new(71, 77, -12632);
			VectorMon = CFrame.new(71, 77, -12632);
			CFrameQuest = CFrame.new(151, 23, -12774);
			VectorQuest = Vector3.new(151, 23, -12774);
		elseif ((v131 == 2375) or (v131 <= 2400)) then
			LevelFarm = 30;
			Name = "Candy Rebel [Lv. 2375]";
			QuestName = "ChocQuest2";
			LevelQuest = 2;
			NameMon = "Candy Rebel";
			CFrameMon = CFrame.new(134, 77, -12882);
			VectorMon = CFrame.new(134, 77, -12882);
			CFrameQuest = CFrame.new(151, 23, -12774);
			VectorQuest = Vector3.new(151, 23, -12774);
		elseif ((v131 == 2400) or (v131 <= 2425)) then
			LevelFarm = 31;
			Name = "Candy Pirate [Lv. 2400]";
			QuestName = "CandyQuest1";
			LevelQuest = 1;
			NameMon = "Candy Pirate";
			CFrameMon = CFrame.new(-1408.46521, 16.1423531, -14552.2041, 0.90175873, -8.1721694e-8, -0.432239741, 7.812645e-8, 1, -2.6074616e-8, 0.432239741, -1.0256343e-8, 0.90175873);
			VectorQuest = Vector3.new(-1408.46521, 16.1423531, -14552.2041, 0.90175873, -8.1721694e-8, -0.432239741, 7.812645e-8, 1, -2.6074616e-8, 0.432239741, -1.0256343e-8, 0.90175873);
			CFrameQuest = CFrame.new(-1151.48987, 16.1422901, -14445.6904, -0.316594511, -6.8569825e-8, -0.948560953, -2.0534307e-8, 1, -6.543467e-8, 0.948560953, -1.2382168e-9, -0.316594511);
			VectorQuest = Vector3.new(-1151.48987, 16.1422901, -14445.6904, -0.316594511, -6.8569825e-8, -0.948560953, -2.0534307e-8, 1, -6.543467e-8, 0.948560953, -1.2382168e-9, -0.316594511);
		elseif (v131 >= 2425) then
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
end;
TP = function(v24)
	local v132 = (v24.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude;
	local v133 = 300;
	tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(v132 / v133, Enum.EasingStyle.Linear);
	tween = tweenService:Create(game:GetService("Players")['LocalPlayer'].Character.HumanoidRootPart, tweenInfo, {CFrame=v24});
	tween:Play();
end;
TPER = function(v24)
	local v134 = (v24.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude;
	local v135 = 400;
	tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(v134 / v135, Enum.EasingStyle.Linear);
	tween = tweenService:Create(game:GetService("Players")['LocalPlayer'].Character.HumanoidRootPart, tweenInfo, {CFrame=v24});
	tween:Play();
end;
TP2 = function(v24)
	local v136 = (v24.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude;
	local v137 = 1000000000000000000;
	tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(v136 / v137, Enum.EasingStyle.Linear);
	tween = tweenService:Create(game:GetService("Players")['LocalPlayer'].Character.HumanoidRootPart, tweenInfo, {CFrame=v24});
	tween:Play();
end;
TP3 = function(v24)
	CheckQuest();
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrameMon;
	wait(0.1);
	tween:cancel();
	game.Players.LocalPlayer.Character.Humanoid:ChangeState(15);
	wait(0);
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint");
	tween:cancel();
end;
local v25 = v0:Watermark("Manake Hub Premium script | 60 fps | ");
getgenv().AutoOpen = {AutoFarmLevel=true,AutoSecond_Sea=false,Autohird_Sea=false,AutoFarmCandy=false,AutoFarmBones=false,AutoFarmFishTail=false,AutoFarmDragonScale=false};
local v27 = v0:Load({Name=("Manake Hub Premium script | " .. os.date("%A, %B %d %Y")),SizeX=700,SizeY=750,Theme="Midnight",Extension="json",Folder="Manake Hub Premium script"});
local v28 = v27:Tab(" Main Farm ");
local v29 = v27:Tab(" Player ");
local v2923 = v27:Tab(" Player Other ");
local v30 = v27:Tab(" Raids ");
local v31 = v27:Tab(" Item Shop ");
local v32 = v31:Section({Name=" Change Sword  ",Side="Right"});
local v32233 = v2923:Section({Name=" Combat ",Side="Left"});
local v32234 = v2923:Section({Name=" Teleport Player ",Side="Right"});
local v33 = v31:Section({Name="Change Melee",Side="Left"});
local v34 = v30:Section({Name=" Fruit ",Side="Right"});
local v35 = v29:Section({Name="FakeRace",Side="Right"});
local v36 = v29:Section({Name="Server",Side="Right"});
local v38 = v28:Section({Name="Setting",Side="Right"});
local v39 = v28:Section({Name="Stats",Side="Right"});
local v40 = v29:Section({Name="Island // Npc",Side="Left"});
local v41 = v28:Section({Name="Auto Farm",Side="Left"});
local v42 = v41:Label("Quest : ???");
local v43 = v41:Label("Mon : ???");
local v44 = v41:Label("Farming : ???");
pcall(function()
	spawn(function()
		while task.wait(0.2) do
			CheckQuest();
			v43:Set("Mon : " .. Name);
			wait(0);
			v42:Set("Quest : " .. QuestName .. " | Level " .. LevelQuest);
		end
	end);
end);

GetMaterial = function(v45)
	for v206, v207 in pairs(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventory")) do
		if (type(v207) == "table") then
			if (v207.Type == "Material") then
				if (v207.Name == v45) then
					return v207.Count;
				end
			end
		end
	end
	return 0;
end;
spawn(function()
	while task.wait(0.5) do
		pcall(function()
			local v226 = GetMaterial("Bones");
			local v227 = GetMaterial("Fish Tail");
			local v228 = GetMaterial("Dragon Scale");
			local v229 = game.Players.LocalPlayer.Data.Level.Value;
			if _G.AutoFarmOF then
				v44:Set("Farming : Level");
			elseif (_G.AutoFarmBones or (_G.SaveSetting.AutoFarmBone == true)) then
				v44:Set("Farming : Bone");
			elseif (_G.AutoFarmFishTail or (_G.SaveSetting.AutoFarmFish == true)) then
				v44:Set("Farming : Fish Tail");
			elseif (_G.AutoFarmDragonScale or (_G.SaveSetting.AutoFarmDragonScale == true)) then
				v44:Set("Farming : Dragon Scale");
			elseif (_G.AutoCakePrince or (_G.SaveSetting.AutoCakePrince == true)) then
				v44:Set("Farming : Cake Prince");
			elseif (_G.AutoFarmCandy or (_G.SaveSetting.AutoFarmCandy == true)) then
				v44:Set("Farming : Candy");
			elseif AutoStartRaid then
				v44:Set("Farming : Raid | " .. SelectRaid);
			else
				v44:Set("Farming : ???");
				tween:cancel();
			end
		end);
	end
end);

InMyNetWork = function(v46)
	if isnetworkowner then
		return isnetworkowner(v46);
	else
		if ((v46.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 200) then
			return true;
		end
		return false;
	end
end;
Com = function(v47, ...)
	local v139 = game:GetService("ReplicatedStorage").Remotes:FindFirstChild("Comm" .. v47);
	if v139:IsA("RemoteEvent") then
		v139:FireServer(...);
	elseif v139:IsA("RemoteFunction") then
		v139:InvokeServer(...);
	end
end;
local function v48(...)
	local v140 = {...};
	local v141 = v140[1];
	local v142;
	if (type(v141) == "vector") then
		v142 = v141;
	elseif (type(v141) == "userdata") then
		v142 = v141.Position;
	elseif (type(v141) == "number") then
		v142 = CFrame.new(unpack(v140));
		v142 = v142.p;
	end
	local v143;
	local v144 = math.huge;
	if game.Players.LocalPlayer.Team then
		for v277, v278 in pairs(game.Workspace._WorldOrigin.PlayerSpawns:FindFirstChild(tostring(game.Players.LocalPlayer.Team)):GetChildren()) do
			local v279 = (v142 - v278:GetModelCFrame().p).Magnitude;
			if (v279 < v144) then
				v144 = v279;
				v143 = v278.Name;
			end
		end
		if v143 then
			return v143;
		end
	end
end
BTP = function(v49)
	game.Players.LocalPlayer.Character.Head:Destroy();
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v49;
	wait(1);
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v49;
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint");
end;
local function v50(...)
	local v146 = {...};
	local v147 = v146[1];
	local v148;
	if (type(v147) == "vector") then
		v148 = CFrame.new(v147);
	elseif (type(v147) == "userdata") then
		v148 = v147;
	elseif (type(v147) == "number") then
		v148 = CFrame.new(unpack(v146));
	end
	if (game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Health == 0) then
		if tween then
			tween:Cancel();
		end
		repeat
			wait();
		until game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Health > 0 
		wait(0.2);
	end
	local v149 = {};
	local v150 = (v148.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).Magnitude;
	if _G.FastTween then
		if (v150 < 400) then
			Speed = 475;
		else
			Speed = 350;
		end
	else
		Speed = 350;
	end
	if _G.BypassTp then
		if (v150 > 2000) then
			pcall(function()
				tween:Cancel();
				fkwarp = false;
				if (game:GetService("Players")['LocalPlayer'].Data:FindFirstChild("LastSpawnPoint").Value == tostring(v48(v148))) then
					game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid"):ChangeState(15);
					game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
					wait(0.1);
					repeat
						wait();
					until game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").Health > 0 
				else
					if (game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").Health > 0) then
						if (fkwarp == false) then
							if Three_World then
								if ((Vector3.new(-5079.44677734375, 313.7293395996094, -3151.065185546875) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >= 1500) then
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(-5079.44677734375, 313.7293395996094, -3151.065185546875));
								end
								tween:cancel();
							end
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v148;
							tween:cancel();
						end
						fkwarp = true;
					end
					wait(0.08);
					game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid"):ChangeState(15);
					repeat
						wait();
					until game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").Health > 0 
					tween:cancel();
					wait(0.1);
					Com("F_", "SetSpawnPoint");
					wait(0.2);
					tween:cancel();
				end
				return;
			end);
		end
	end
	local v151 = game:service("TweenService");
	local v152 = TweenInfo.new((v148.Position - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).Magnitude / Speed, Enum.EasingStyle.Linear);
	local v153, v154 = pcall(function()
		tween = v151:Create(game.Players.LocalPlayer.Character['HumanoidRootPart'], v152, {CFrame=v148});
		tween:Play();
	end);
	v149.Stop = function(v155)
		tween:Cancel();
	end;
	v149.Wait = function(v155)
		tween.Completed:Wait();
	end;
	return v149;
end
toTargetP = function(v51)
	if ((game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Health <= 0) or not game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid")) then
		tween:Cancel();
		repeat
			wait();
		until game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid") and (game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").Health > 0) 
		wait(7);
		return;
	end
	if ((game:GetService("Players")['LocalPlayer'].Character.HumanoidRootPart.Position - v51.Position).Magnitude <= 150) then
		pcall(function()
			tween:Cancel();
			game:GetService("Players")['LocalPlayer'].Character.HumanoidRootPart.CFrame = v51;
			return;
		end);
	end
	local v158 = game:service("TweenService");
	local v159 = TweenInfo.new((game:GetService("Players")['LocalPlayer'].Character.HumanoidRootPart.Position - v51.Position).Magnitude / 325, Enum.EasingStyle.Linear);
	tween = v158:Create(game.Players.LocalPlayer.Character['HumanoidRootPart'], v159, {CFrame=v51});
	tween:Play();
	local v160 = {};
	v160.Stop = function(v161)
		tween:Cancel();
	end;
	return v160;
end;
local v53 = v41:Toggle({Name="Auto Farm Level",Flag="AutoFarmLevel",Default=getgenv().AutoOpen.AutoFarmLeve,Callback=function(v52)
	AutoFarm = v52;
	_G.AutoFarmOF = v52;
	if (v52 == false) then
		v50(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame);
	end
	spawn(function()
		while wait(0.5) do
			if AutoFarm then
				pcall(function()
					CheckQuest();
					if (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false) then
						v50(CFrameMon);
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", QuestName, LevelQuest);
					elseif (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true) then
						if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) then
							for v459, v460 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
								if ((v460.Name == Name) and v460:FindFirstChild("HumanoidRootPart") and v460:FindFirstChild("Humanoid")) then
									if (v460.Humanoid.Health > 0) then
										repeat
											wait();
											_G.PosMon = v460.HumanoidRootPart.CFrame;
											Equip(WeaponName);
											AutoHaki();
											v50(v460.HumanoidRootPart.CFrame * _G.FarmFrame)
											v460.HumanoidRootPart.Size = Vector3.new(60, 60, 60);
											v460.HumanoidRootPart.CanCaillde = false;
											if not string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) then
												game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest");
											end
										until (AutoFarm == false) or (v460.Humanoid.Health <= 0) 
									end
								end
							end
						end
					end
				end);
			end
		end
	end);
end});
if Old_World then
	local v209 = v41:Toggle({Name="AutoFarmSky",Flag="AutoFarmLevel_SkyLand",Default=getgenv().AutoOpen.AutoFarmLeve,Callback=function(v208)
		AutoFarmSky = t;
		FastAttackSpeed = t;
	end});
end
local v54 = game.Players.LocalPlayer.Data.Level.Value;
spawn(function()
	while wait(0.5) do
		pcall(function()
			if AutoFarmSky then
				if ((v54 == 20) or (v54 <= 120)) then
					AutoFarm = false;
				else
					AutoFarm = true;
					AutoFarmSky = false;
					_G.Bringmob = true;
				end
				MonPos = CFrame.new(-7685, 5567, -502);
				if (AutoFarmSky and ((MonPos.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000)) then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047));
				end
				if game.Workspace.Enemies:FindFirstChild("Shanda [Lv. 475]") then
					_G.Bringmob = true;
					for v392, v393 in pairs(game.Workspace.Enemies:GetChildren()) do
						if ((v393.Name == "Shanda [Lv. 475]") and (v393.Humanoid.Health > 0)) then
							if (v393.Humanoid.Health > 0) then
								repeat
									wait();
									v393.HumanoidRootPart.Size = Vector3.new(60, 60, 60);
									v393.HumanoidRootPart.CanCaillde = false;
								until (AutoFarmSky == false) or (v393.Humanoid.Health <= 0) 
								if (game.Players.LocalPlayer.Character.Humanoid.Health <= 0) then
									AutoFarmSky = false;
									wait(0.25);
									AutoFarmSky = true;
								end
							end
						end
					end
				end
			end
		end);
	end
end);
spawn(function()
	game:GetService("RunService").Heartbeat:Connect(function()
		if AutoFarmSky then
			if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid") then
				setfflag("HumanoidParallelRemoveNoPhysics", "False");
				setfflag("HumanoidParallelRemoveNoPhysicsNoSimulate2", "False");
				game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(11);
			end
		end
	end);
end);
local v55 = v41:Toggle({Name="Auto New World  Second Sea",Flag="Auto_NewWorld",Default=getgenv().AutoOpen.AutoSecond_Sea,Callback=function(v52)
	_G.AutoWorldTwo = v52;
	AutoNewWorld = v52;
	task.spawn(function()

		while wait(0.5) do
			pcall(function()
				if AutoNewWorld then
					if (game.Players.LocalPlayer.Data.Level.Value >= 700) then
						if AutoFarm then
							AutoFarm = false;
						end
						if ((game.Workspace.Map.Ice.Door.CanCollide == true) and (game.Workspace.Map.Ice.Door.Transparency == 0)) then
							repeat
								wait();
								v50(CFrame.new(1347.7124, 37.3751602, -1325.6488));
							until ((CFrame.new(1347.7124, 37.3751602, -1325.6488).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3) or notAutoNewWorld 
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("DressrosaQuestProgress", "Detective");
							Equip("Key");
						elseif ((game.Workspace.Map.Ice.Door.CanCollide == false) and (game.Workspace.Map.Ice.Door.Transparency == 1)) then
							if game:GetService("Workspace").Enemies:FindFirstChild("Ice Admiral [Lv. 700] [Boss]") then
								for v486, v487 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
									if ((v487.Name == "Ice Admiral [Lv. 700] [Boss]") and (v487.Humanoid.Health > 0)) then
										repeat
											task.wait();
											AutoHaki();
											Equip(WeaponName);
											v50(v487.HumanoidRootPart.CFrame * _G.FarmFrame);
											FastAttackSpeed = true;
											v487.HumanoidRootPart.Size = Vector3.new(60, 60, 60);
											v487.Humanoid.JumpPower = 0;
											v487.Humanoid.WalkSpeed = 0;
											v487.HumanoidRootPart.CanCollide = false;
											v487.Humanoid:ChangeState(11);
											game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa");
										until (v487.Humanoid.Health <= 0) or not v487.Parent 
										game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa");
									end
								end
							else
								v50(CFrame.new(1347.7124, 37.3751602, -1325.6488));
							end
						else
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa");
						end
					end
				end
			end);
		end
	end);
end});
local v56 = v41:Toggle({Name="Auto New World Third Sea",Flag="AutoThird_Sea",Default=getgenv().AutoOpen.Autohird_Sea,Callback=function(v52)
	_G.AutoThirdSea = v52;
	AutoThirdWorld = v52;
	if (v52 == false) then
		wait();
		v50(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame);
		wait();
	end
	task.spawn(function()
		while wait(0.5) do
			pcall(function()
				if AutoThirdWorld then
					if (game.Players.LocalPlayer.Data.Level.Value >= 1500) then
						if AutoFarm then
							AutoFarm = false;
						end
						if (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress", "Bartilo") == 3) then
							if (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GetUnlockables").FlamingoAccess ~= nil) then
								Com("F_", "TravelZou");
								if (game:GetService("ReplicatedStorage").Remotes['CommF_']:InvokeServer("ZQuestProgress", "Check") == 0) then
									if game.Workspace.Enemies:FindFirstChild("rip_indra [Lv. 1500] [Boss]") then
										for v522, v523 in pairs(game.Workspace.Enemies:GetChildren()) do
											if ((v523.Name == "rip_indra [Lv. 1500] [Boss]") and v523:FindFirstChild("Humanoid") and v523:FindFirstChild("HumanoidRootPart") and (v523.Humanoid.Health > 0)) then
												repeat
													wait();
													if ((v523.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300) then
														Farmtween = v50(v523.HumanoidRootPart.Position, v523.HumanoidRootPart.CFrame);
													elseif ((v523.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300) then
														if Farmtween then
															Farmtween:Stop();
														end
														FastAttackSpeed = true;
														AutoHaki();
														Equip(WeaponName);
													end
													_G.PosMon = v523.HumanoidRootPart.CFrame;
													v523.HumanoidRootPart.Size = Vector3.new(60, 60, 60);
													v523.Humanoid.JumpPower = 0;
													v523.Humanoid.WalkSpeed = 0;
													v523.HumanoidRootPart.CanCollide = false;
													v523.Humanoid:ChangeState(11);
													v50(v523.HumanoidRootPart.CFrame * _G.FarmFrame);
												until not AutoThirdWorld or not v523.Parent or (v523.Humanoid.Health <= 0) 
												wait(0.5);
												Check = 2;
												repeat
													wait();
													Com("F_", "TravelZou");
												until Check == 1 
												FastAttackSpeed = false;
											end
										end
									else
										Com("F_", "ZQuestProgress", "Check");
										Com("F_", "ZQuestProgress", "Begin");
									end
								elseif (game:GetService("ReplicatedStorage").Remotes['CommF_']:InvokeServer("ZQuestProgress", "Check") == 1) then
									Com("F_", "TravelZou");
								elseif game.Workspace.Enemies:FindFirstChild("Don Swan [Lv. 1000] [Boss]") then
									for v549, v550 in pairs(game.Workspace.Enemies:GetChildren()) do
										if ((v550.Name == "Don Swan [Lv. 1000] [Boss]") and v550:FindFirstChild("Humanoid") and v550:FindFirstChild("HumanoidRootPart") and (v550.Humanoid.Health > 0)) then
											repeat
												wait();
												if ((v550.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300) then
													Farmtween = v50(v550.HumanoidRootPart.Position, v550.HumanoidRootPart.CFrame);
												elseif ((v550.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300) then
													if Farmtween then
														Farmtween:Stop();
													end
													FastAttackSpeed = true;
													AutoHaki();
													Equip(WeaponName);
													_G.PosMon = v550.HumanoidRootPart.CFrame;
													v550.Humanoid.JumpPower = 0;
													v550.Humanoid.WalkSpeed = 0;
													v550.HumanoidRootPart.CanCollide = false;
													v550.Humanoid:ChangeState(11);
													v50(v550.HumanoidRootPart.CFrame *_G.FarmFrame);
												end
											until not AutoThirdWorld or not v550.Parent or (v550.Humanoid.Health <= 0) 
											FastAttackSpeed = false;
										end
									end
								else
									TweenDonSwanthireworld = v50(CFrame.new(2288.802, 15.1870775, 863.034607).Position, CFrame.new(2288.802, 15.1870775, 863.034607));
									if ((CFrame.new(2288.802, 15.1870775, 863.034607).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300) then
										if TweenDonSwanthireworld then
											TweenDonSwanthireworld:Stop();
											game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2288.802, 15.1870775, 863.034607);
										end
									end
								end
							elseif (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GetUnlockables").FlamingoAccess == nil) then
								TabelDevilFruitStore = {};
								TabelDevilFruitOpen = {};
								for v488, v489 in pairs(game:GetService("ReplicatedStorage").Remotes['CommF_']:InvokeServer("getInventoryFruits")) do
									for v502, v503 in pairs(v489) do
										if (v502 == "Name") then
											table.insert(TabelDevilFruitStore, v503);
										end
									end
								end
								for v490, v491 in next, game.ReplicatedStorage:WaitForChild("Remotes").CommF_:InvokeServer("GetFruits") do
									if (v491.Price >= 1000000) then
										table.insert(TabelDevilFruitOpen, v491.Name);
									end
								end
								for v492, v493 in pairs(TabelDevilFruitOpen) do
									for v504, v505 in pairs(TabelDevilFruitStore) do
										if ((v493 == v505) and (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GetUnlockables").FlamingoAccess == nil)) then
											if not game.Players.LocalPlayer.Backpack:FindFirstChild(v505) then
												Com("F_", "LoadFruit", v505);
											else
												Com("F_", "TalkTrevor", "1");
												Com("F_", "TalkTrevor", "2");
												Com("F_", "TalkTrevor", "3");
											end
										end
									end
								end
								Com("F_", "TalkTrevor", "1");
								Com("F_", "TalkTrevor", "2");
								Com("F_", "TalkTrevor", "3");
							end
						elseif (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress", "Bartilo") == 0) then
							if (string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Swan Pirates") and string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "50") and (game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == true)) then
								if game.Workspace.Enemies:FindFirstChild("Swan Pirate [Lv. 775]") then
									for v524, v525 in pairs(game.Workspace.Enemies:GetChildren()) do
										if (v525.Name == "Swan Pirate [Lv. 775]") then
											pcall(function()
												repeat
													wait();
													if ((v525.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300) then
														Farmtween = v50(v525.HumanoidRootPart.Position, v525.HumanoidRootPart.CFrame);
													elseif ((v525.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300) then
														if Farmtween then
															Farmtween:Stop();
														end
														FastAttackSpeed = true;
														_G.Bringmob = true;
														AutoHaki();
														Equip(WeaponName);
														PosMon = v525.HumanoidRootPart.CFrame;
														v525.Humanoid.JumpPower = 0;
														v525.Humanoid.WalkSpeed = 0;
														v525.HumanoidRootPart.CanCollide = false;
														v525.Humanoid:ChangeState(11);
														v50(v525.HumanoidRootPart.CFrame * _G.FarmFrame);
													end
												until not v525.Parent or (v525.Humanoid.Health <= 0) 
												orAutoThirdWorld = false or (game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false);
												_G.Bringmob = false;
												FastAttackSpeed = false;
											end);
										end
									end
								else
									Questtween = v50(CFrame.new(1057.92761, 137.614319, 1242.08069).Position, CFrame.new(1057.92761, 137.614319, 1242.08069));
									if ((CFrame.new(1057.92761, 137.614319, 1242.08069).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300) then
										if Bartilotween then
											Bartilotween:Stop();
										end
										game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1057.92761, 137.614319, 1242.08069);
									end
								end
							else
								Bartilotween = v50(CFrame.new(-456.28952, 73.0200958, 299.895966).Position, CFrame.new(-456.28952, 73.0200958, 299.895966));
								if ((CFrame.new(-456.28952, 73.0200958, 299.895966).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300) then
									if Bartilotween then
										Bartilotween:Stop();
									end
									game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-456.28952, 73.0200958, 299.895966);
									Com("F_", "StartQuest", "BartiloQuest", 1);
								end
							end
						elseif (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress", "Bartilo") == 1) then
							if game.Workspace.Enemies:FindFirstChild("Jeremy [Lv. 850] [Boss]") then
								for v526, v527 in pairs(game.Workspace.Enemies:GetChildren()) do
									if (v527.Name == "Jeremy [Lv. 850] [Boss]") then
										repeat
											wait();
											if ((v527.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300) then
												Farmtween = v50(v527.HumanoidRootPart.Position, v527.HumanoidRootPart.CFrame);
											elseif ((v527.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300) then
												if Farmtween then
													Farmtween:Stop();
												end
												FastAttackSpeed = true;
												AutoHaki();
												Equip(WeaponName);
												PosMon = v527.HumanoidRootPart.CFrame;
												v527.Humanoid.JumpPower = 0;
												v527.Humanoid.WalkSpeed = 0;
												v527.HumanoidRootPart.CanCollide = false;
												v527.Humanoid:ChangeState(11);
												v50(v527.HumanoidRootPart.CFrame * _G.FarmFrame);
											end
										until not v527.Parent or (v527.Humanoid.Health <= 0) or (AutoThirdWorld == false) 
										FastAttackSpeed = false;
									end
								end
							else
								Bartilotween = v50(CFrame.new(2099.88159, 448.931, 648.997375).Position, CFrame.new(2099.88159, 448.931, 648.997375));
								if ((CFrame.new(2099.88159, 448.931, 648.997375).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300) then
									if Bartilotween then
										Bartilotween:Stop();
									end
									game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2099.88159, 448.931, 648.997375);
								end
							end
						elseif (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress", "Bartilo") == 2) then
							if ((CFrame.new(-1836, 11, 1714).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300) then
								Bartilotween = v50(CFrame.new(-1836, 11, 1714).Position, CFrame.new(-1836, 11, 1714));
							elseif ((CFrame.new(-1836, 11, 1714).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300) then
								if Bartilotween then
									Bartilotween:Stop();
								end
								game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1836, 11, 1714);
								wait(0.5);
								game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1850.49329, 13.1789551, 1750.89685);
								wait(0.1);
								game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1858.87305, 19.3777466, 1712.01807);
								wait(0.1);
								game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1803.94324, 16.5789185, 1750.89685);
								wait(0.1);
								game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1858.55835, 16.8604317, 1724.79541);
								wait(0.1);
								game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1869.54224, 15.987854, 1681.00659);
								wait(0.1);
								game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1800.0979, 16.4978027, 1684.52368);
								wait(0.1);
								game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1819.26343, 14.795166, 1717.90625);
								wait(0.1);
								game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1813.51843, 14.8604736, 1724.79541);
							end
						end
					end
				end
			end);
		end
	end);
end});
local v57 = v41:Separator("Materials");
local v58 = v41:Toggle({Name="AutoFarm Candy",Flag="FarmCandy",Default=getgenv().AutoOpen.AutoFarmCandy,Callback=function(v52)
	_G.AutoFarmCandy = v52;
	AutoFarmCandy = v52;
	if (v52 == false) then
		v50(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame);
	end
	task.spawn(function()
		while wait(0.5) do
			pcall(function()
				if AutoFarmCandy then
					if (game:GetService("Workspace").Enemies:FindFirstChild("Candy Pirate [Lv. 2400]") or game:GetService("Workspace").Enemies:FindFirstChild("Snow Demon [Lv. 2425]")) then
						for v402, v403 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
							if ((v403.Name == "Candy Pirate [Lv. 2400]") or (v403.Name == "Snow Demon [Lv. 2425]")) then
								if (v403:FindFirstChild("Humanoid") and v403:FindFirstChild("HumanoidRootPart") and (v403.Humanoid.Health > 0)) then
									repeat
										wait(_G.Fast_Delay);
										_G.Bringmob = true;
										FastAttackSpeed = true;
										Equip(WeaponName);
										AutoHaki();
										_G.PosMon = v403.HumanoidRootPart.CFrame;
										v403.HumanoidRootPart.Size = Vector3.new(60, 60, 60);
										v403.Humanoid.JumpPower = 0;
										v403.Humanoid.WalkSpeed = 0;
										v403.HumanoidRootPart.CanCollide = false;
										v403.Humanoid:ChangeState(11);
										v50(v403.HumanoidRootPart.CFrame * _G.FarmFrame);
									until not AutoFarmCandy or (v403.Humanoid.Health <= 0) or not v403.Parent or (v403.Humanoid.Health <= 0) 
									_G.Bringmob = false;
									FastAttackSpeed = false;
								end
							end
						end
					else
						v50(CFrame.new(-1408.46521, 16.1423531, -14552.2041, 0.90175873, -8.1721694e-8, -0.432239741, 7.812645e-8, 1, -2.6074616e-8, 0.432239741, -1.0256343e-8, 0.90175873));
					end
				end
			end);
		end
	end);
end});
local v59 = v41:Toggle({Name="AutoFarm Bones",Flag="FarmBones",Default=getgenv().AutoOpen.AutoFarmBones,Callback=function(v52)
	_G.AutoFarmBones = v52;
	AutoFarmBone = v52;
	if (v52 == false) then
		v50(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame);
	end
	task.spawn(function()
		while wait(0.5) do
			pcall(function()
				if (AutoFarmBone or _G.AutoFarmBoneForSythe) then
					if Three_World then
						if (game:GetService("Workspace").Enemies:FindFirstChild("Reborn Skeleton [Lv. 1975]") or game:GetService("Workspace").Enemies:FindFirstChild("Living Zombie [Lv. 2000]") or game:GetService("Workspace").Enemies:FindFirstChild("Demonic Soul [Lv. 2025]") or game:GetService("Workspace").Enemies:FindFirstChild("Posessed Mummy [Lv. 2050]")) then
							for v439, v440 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
								if ((v440.Name == "Reborn Skeleton [Lv. 1975]") or (v440.Name == "Living Zombie [Lv. 2000]") or (v440.Name == "Demonic Soul [Lv. 2025]") or (v440.Name == "Posessed Mummy [Lv. 2050]")) then
									if (v440:FindFirstChild("Humanoid") and v440:FindFirstChild("HumanoidRootPart") and (v440.Humanoid.Health > 0)) then
										repeat
											wait(_G.Fast_Delay);
											_G.Bringmob = true;
											FastAttackSpeed = true;
											Equip(WeaponName);
											AutoHaki();
											_G.PosMon = v440.HumanoidRootPart.CFrame;
											v440.HumanoidRootPart.Size = Vector3.new(60, 60, 60);
											v440.Humanoid.JumpPower = 0;
											v440.Humanoid.WalkSpeed = 0;
											v440.HumanoidRootPart.CanCollide = false;
											v440.Humanoid:ChangeState(11);
											v50(v440.HumanoidRootPart.CFrame * _G.FarmFrame);
										until not AutoFarmBone or _G.AutoFarmBoneForSythe or (v440.Humanoid.Health <= 0) or not v440.Parent or (v440.Humanoid.Health <= 0) 
										_G.Bringmob = false;
										FastAttackSpeed = false;
									end
								end
							end
						else
							v50(CFrame.new(-9504.8564453125, 172.14292907714844, 6057.259765625));
						end
					else
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou");
					end
				end
			end);
		end
	end);
end});
local v60 = v41:Toggle({Name="AutoFarm FishTail",Flag="FarmFishTail",Default=getgenv().AutoOpen.AutoFarmFishTail,Callback=function(v52)
	_G.AutoFarmFishTail = v52;
	AutoFarmFish = v52;
	if (v52 == false) then
		v50(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame);
	end
	task.spawn(function()
		while wait(0.5) do
			pcall(function()
				if AutoFarmFish then
					if Three_World then
						if (game:GetService("Workspace").Enemies:FindFirstChild("Fishman Captain [Lv. 1800]") or game:GetService("Workspace").Enemies:FindFirstChild("Fishman Raider [Lv. 1775]")) then
							for v441, v442 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
								if ((v442.Name == "Fishman Raider [Lv. 1775]") or (v442.Name == "Fishman Captain [Lv. 1800]")) then
									if (v442:FindFirstChild("Humanoid") and v442:FindFirstChild("HumanoidRootPart") and (v442.Humanoid.Health > 0)) then
										repeat
											wait(_G.Fast_Delay);
											_G.Bringmob = true;
											FastAttackSpeed = true;
											Equip(WeaponName);
											AutoHaki();
											_G.PosMon = v442.HumanoidRootPart.CFrame;
											v442.HumanoidRootPart.Size = Vector3.new(60, 60, 60);
											v442.Humanoid.JumpPower = 0;
											v442.Humanoid.WalkSpeed = 0;
											v442.HumanoidRootPart.CanCollide = false;
											v442.Humanoid:ChangeState(11);
											v50(v442.HumanoidRootPart.CFrame * _G.FarmFrame);
										until not AutoFarmFish or (v442.Humanoid.Health <= 0) or not v442.Parent or (v442.Humanoid.Health <= 0) 
										_G.Bringmob = false;
										FastAttackSpeed = false;
									end
								end
							end
						else
							v50(CFrame.new(-10993, 332, -8940));
						end
					else
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou");
					end
				end
			end);
		end
	end);
end});
local v61 = v41:Toggle({Name="AutoFarm Dragon Scale",Flag="FarmDragonScale",Default=getgenv().AutoOpen.AutoFarmDragonScale,Callback=function(v52)
	_G.AutoFarmDragonScale = v52;
	AutoFarmDragonScale = v52;
	if (v52 == false) then
		v50(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame);
	end
	task.spawn(function()
		while wait(0.5) do
			pcall(function()
				if AutoFarmDragonScale then
					if Three_World then
						if (game:GetService("Workspace").Enemies:FindFirstChild("Dragon Crew Archer [Lv. 1600]") or game:GetService("Workspace").Enemies:FindFirstChild("Dragon Crew Warrior [Lv. 1575]")) then
							for v443, v444 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
								if ((v444.Name == "Dragon Crew Warrior [Lv. 1575]") or (v444.Name == "Dragon Crew Archer [Lv. 1600]")) then
									if (v444:FindFirstChild("Humanoid") and v444:FindFirstChild("HumanoidRootPart") and (v444.Humanoid.Health > 0)) then
										repeat
											wait(_G.Fast_Delay);
											_G.Bringmob = true;
											FastAttackSpeed = true;
											Equip(WeaponName);
											AutoHaki();
											_G.PosMon = v444.HumanoidRootPart.CFrame;
											v444.HumanoidRootPart.Size = Vector3.new(60, 60, 60);
											v444.Humanoid.JumpPower = 0;
											v444.Humanoid.WalkSpeed = 0;
											v444.HumanoidRootPart.CanCollide = false;
											v444.Humanoid:ChangeState(11);
											v50(v444.HumanoidRootPart.CFrame * _G.FarmFrame);
										until not AutoFarmDragonScale or (v444.Humanoid.Health <= 0) or not v444.Parent or (v444.Humanoid.Health <= 0) 
										_G.Bringmob = false;
										FastAttackSpeed = false;
									end
								end
							end
						else
							v50(CFrame.new(6594, 383, 139));
						end
					else
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou");
					end
				end
			end);
		end
	end);
	spawn(function()
		game:GetService("RunService").Heartbeat:Connect(function()
			if (AutoFarmBone or AutoFarmDragonScale or AutoFarmFish or AutoFarmCandy) then
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid") then
					setfflag("HumanoidParallelRemoveNoPhysics", "False");
					setfflag("HumanoidParallelRemoveNoPhysicsNoSimulate2", "False");
					game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(11);
				end
			end
		end);
	end);
end});
local v62 = v41:Separator("Cake Prince");
local v63 = v41:Label("Killed : ???");
local v64 = v41:Label("Portal : Close ");
task.spawn(function()
	while task.wait(3) do
		pcall(function()
			if (string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 88) then
				v63:Set("Killed : " .. string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"), 39, 41));
			elseif (string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 87) then
				v63:Set("Killed : " .. string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"), 39, 40));
			elseif (string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 86) then
				v63:Set("Killed : " .. string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"), 39, 39));
			else
				v64:Set("Portal : Opened ");
			end
		end);
	end
end);
local v65 = v41:Toggle({Name="Auto CakePrince",Flag="Auto_Cake",Default=false,Callback=function(v52)
	_G.AutoCakePrince = v52;
	AutoCakePrince = v52;
	if (x == false) then
		v50(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame);
	end
	task.spawn(function()
		while wait() do
			if AutoCakePrince then
				game.ReplicatedStorage.Remotes.CommF_:InvokeServer("CakePrinceSpawner");
				if (game.ReplicatedStorage:FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") or game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]")) then
					if game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") then
						for v414, v415 in pairs(game.Workspace.Enemies:GetChildren()) do
							if (AutoCakePrince and (v415.Name == "Cake Prince [Lv. 2300] [Raid Boss]") and v415:FindFirstChild("HumanoidRootPart") and v415:FindFirstChild("Humanoid") and (v415.Humanoid.Health > 0)) then
								repeat
									wait(_G.Fast_Delay);
									if ((v415.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300) then
										Farmtween = v50(v415.HumanoidRootPart.CFrame);
									elseif ((v415.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300) then
										if Farmtween then
											Farmtween:Stop();
										end
										FastAttackSpeed = true;
										AutoHaki();
										Equip(WeaponName);
										_G.PosMon = v415.HumanoidRootPart.CFrame;
										v415.HumanoidRootPart.Size = Vector3.new(60, 60, 60);
										v415.Humanoid.JumpPower = 0;
										v415.Humanoid.WalkSpeed = 0;
										v415.HumanoidRootPart.CanCollide = false;
										v415.Humanoid:ChangeState(11);
										v50(v415.HumanoidRootPart.CFrame * _G.FarmFrame);
									end
								until not AutoCakePrince or not v415.Parent or (v415.Humanoid.Health <= 0) 
								FastAttackSpeed = false;
							end
						end
					elseif ((game:GetService("Workspace").Map.CakeLoaf.BigMirror.Other.Transparency == 0) and ((CFrame.new(-1990.672607421875, 4532.99951171875, -14973.6748046875).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude >= 2000)) then
						FastAttackSpeed = false;
						Questtween = v50(CFrame.new(-2151.82153, 149.315704, -12404.9053));
						if ((CFrame.new(-2151.82153, 149.315704, -12404.9053).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300) then
							if Questtween then
								Questtween:Stop();
							end
							game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2151.82153, 149.315704, -12404.9053);
							wait(0.1);
						end
					end
				elseif (game:GetService("Workspace").Enemies:FindFirstChild("Cookie Crafter [Lv. 2200]") or game:GetService("Workspace").Enemies:FindFirstChild("Cake Guard [Lv. 2225]") or game:GetService("Workspace").Enemies:FindFirstChild("Baking Staff [Lv. 2250]") or game:GetService("Workspace").Enemies:FindFirstChild("Head Baker [Lv. 2275]")) then
					for v416, v417 in pairs(game.Workspace.Enemies:GetChildren()) do
						if (((v417.Name == "Cookie Crafter [Lv. 2200]") or (v417.Name == "Cake Guard [Lv. 2225]") or (v417.Name == "Baking Staff [Lv. 2250]") or (v417.Name == "Head Baker [Lv. 2275]")) and v417:FindFirstChild("HumanoidRootPart") and v417:FindFirstChild("Humanoid") and (v417.Humanoid.Health > 0)) then
							repeat
								wait();
								if ((v417.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300) then
									Farmtween = v50(v417.HumanoidRootPart.CFrame);
								elseif ((v417.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300) then
									if Farmtween then
										Farmtween:Stop();
									end
									FastAttackSpeed = true;
									_G.Bringmob = true;
									AutoHaki();
									Equip(WeaponName);
									_G.PosMon = v417.HumanoidRootPart.CFrame;
									v417.Humanoid.JumpPower = 0;
									v417.Humanoid.WalkSpeed = 0;
									v417.HumanoidRootPart.CanCollide = false;
									v417.Humanoid:ChangeState(11);
									v50(v417.HumanoidRootPart.CFrame *_G.FarmFrame);
								end
							until not AutoCakePrince or not v417.Parent or (v417.Humanoid.Health <= 0) 
							_G.Bringmob = false;
							FastAttackSpeed = false;
						end
					end
				else
					Questtween = v50(CFrame.new(-2077, 252, -12373));
					if ((CFrame.new(-2077, 252, -12373).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300) then
						if Questtween then
							Questtween:Stop();
						end
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2077, 252, -12373);
					end
				end
			else
				v50(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame);
				break;
			end
		end
	end);
end});
spawn(function()
	game:GetService("RunService").Heartbeat:Connect(function()
		if AutoCakePrince then
			if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid") then
				setfflag("HumanoidParallelRemoveNoPhysics", "False");
				setfflag("HumanoidParallelRemoveNoPhysicsNoSimulate2", "False");
				game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(11);
			end
		end
	end);
end);

v41:Separator("Auto Farm Pos");
_G.Pos = nil

local label_Pos_Farm_Mon_Island = v41:Label("Position : ")
v41:Button{
	Name = "Set Position",
	Callback  = function()
		label_Pos_Farm_Mon_Island:Set("Position : "..tostring(game.Players.LocalPlayer.Character.HumanoidRootPart.Position))
		_G.Pos = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
		require(game:GetService("ReplicatedStorage").Notification).new("Set Position Successful"):Display();
	end}	
v41:Toggle{
	Name = "Auto Farm Position",
	Default = false,
	Callback  = function(bool)

		if bool then
			AutoHaki()
			game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true

		else
			game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
		end
		_G.AutoClick = bool
		_G.AutoFarmPos = bool
	end}




local v66 = v41:Separator("Elite Hunter");
local v67 = v41:Label("Status : ???");
local v68 = v41:Label("Elite Process : ???");
task.spawn(function()
	pcall(function()
		while wait() do
			v68:Set("Elite Process : " .. game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter", "Progress"));
		end
	end);
end);
spawn(function()
	while wait() do
		pcall(function()
			if (game:GetService("ReplicatedStorage"):FindFirstChild("Diablo [Lv. 1750]") or game:GetService("ReplicatedStorage"):FindFirstChild("Deandre [Lv. 1750]") or game:GetService("ReplicatedStorage"):FindFirstChild("Urban [Lv. 1750]") or game:GetService("Workspace").Enemies:FindFirstChild("Diablo [Lv. 1750]") or game:GetService("Workspace").Enemies:FindFirstChild("Deandre [Lv. 1750]") or game:GetService("Workspace").Enemies:FindFirstChild("Urban [Lv. 1750]")) then
				v67:Set("Status  : Spawned ");
			else
				v67:Set("Status  : Not Spawned   ");
			end
		end);
	end
end);
local v65 = v41:Toggle({Name="Auto Elite Hunter",Flag="Auto_Elite",Default=false,Callback=function(v52)
	_G.AutoEliteHunter = v52;
	AutoEliteHunter = v52;
	task.spawn(function()
		while wait() do
			pcall(function()
				if AutoEliteHunter then
					if (game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == true) then
						if (string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Diablo") or string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Urban") or string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Deandre")) then
							for v446, v447 in pairs(game.ReplicatedStorage:GetChildren()) do
								if string.find(v447.Name, "Diablo") then
									EliteHunter = v50(v447.HumanoidRootPart.CFrame);
									if ((v447.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150) then
										if EliteHunter then
											EliteHunter:Stop();
										end
										game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v447.HumanoidRootPart.CFrame;
									end
								end
								if string.find(v447.Name, "Urban") then
									EliteHunter = v50(v447.HumanoidRootPart.CFrame);
									if ((v447.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150) then
										if EliteHunter then
											EliteHunter:Stop();
										end
										game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v447.HumanoidRootPart.CFrame;
									end
								end
								if string.find(v447.Name, "Deandre") then
									EliteHunter = v50(v447.HumanoidRootPart.CFrame);
									if ((v447.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150) then
										if EliteHunter then
											EliteHunter:Stop();
										end
										game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v447.HumanoidRootPart.CFrame;
									end
								end
							end
							for v448, v449 in pairs(game.Workspace.Enemies:GetChildren()) do
								if (AutoEliteHunter and string.find(v449.Name, "Diablo") and v449:FindFirstChild("Humanoid") and v449:FindFirstChild("HumanoidRootPart") and (v449.Humanoid.Health > 0)) then
									repeat
										wait();
										if ((v449.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 150) then
											Farmtween = v50(v449.HumanoidRootPart.CFrame);
										elseif ((v449.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150) then
											if Farmtween then
												Farmtween:Stop();
											end
											if (AttackRandomType == 1) then
												game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v449.HumanoidRootPart.CFrame * CFrame.new(0, 30, 1);
											elseif (AttackRandomType == 2) then
												game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v449.HumanoidRootPart.CFrame * CFrame.new(0, 1, 30);
											elseif (AttackRandomType == 3) then
												game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v449.HumanoidRootPart.CFrame * CFrame.new(1, 1, -30);
											elseif (AttackRandomType == 4) then
												game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v449.HumanoidRootPart.CFrame * CFrame.new(30, 1, 0);
											elseif (AttackRandomType == 5) then
												game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v449.HumanoidRootPart.CFrame * CFrame.new(-30, 1, 0);
											else
												game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v449.HumanoidRootPart.CFrame * CFrame.new(0, 30, 1);
											end
											FastAttackSpeed = true;
											Equip(WeaponName);
										end
									until not AutoEliteHunter or not v449.Parent or (v449.Humanoid.Health <= 0) 
									FastAttackSpeed = false;
								end
								if (AutoEliteHunter and string.find(v449.Name, "Urban") and v449:FindFirstChild("Humanoid") and v449:FindFirstChild("HumanoidRootPart") and (v449.Humanoid.Health > 0)) then
									repeat
										wait();
										if ((v449.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 150) then
											Farmtween = v50(v449.HumanoidRootPart.CFrame);
										elseif ((v449.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150) then
											if Farmtween then
												Farmtween:Stop();
											end
											if (AttackRandomType == 1) then
												game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v449.HumanoidRootPart.CFrame * CFrame.new(0, 30, 1);
											elseif (AttackRandomType == 2) then
												game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v449.HumanoidRootPart.CFrame * CFrame.new(0, 1, 30);
											elseif (AttackRandomType == 3) then
												game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v449.HumanoidRootPart.CFrame * CFrame.new(1, 1, -30);
											elseif (AttackRandomType == 4) then
												game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v449.HumanoidRootPart.CFrame * CFrame.new(30, 1, 0);
											elseif (AttackRandomType == 5) then
												game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v449.HumanoidRootPart.CFrame * CFrame.new(-30, 1, 0);
											else
												game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v449.HumanoidRootPart.CFrame * CFrame.new(0, 30, 1);
											end
											FastAttackSpeed = true;
											Equip(WeaponName);
										end
									until not AutoEliteHunter or not v449.Parent or (v449.Humanoid.Health <= 0) 
									FastAttackSpeed = false;
								end
								if (AutoEliteHunter and string.find(v449.Name, "Deandre") and v449:FindFirstChild("Humanoid") and v449:FindFirstChild("HumanoidRootPart") and (v449.Humanoid.Health > 0)) then
									repeat
										wait();
										if ((v449.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 150) then
											Farmtween = v50(v449.HumanoidRootPart.CFrame);
										elseif ((v449.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150) then
											if Farmtween then
												Farmtween:Stop();
											end
											if (AttackRandomType == 1) then
												game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v449.HumanoidRootPart.CFrame * CFrame.new(0, 30, 1);
											elseif (AttackRandomType == 2) then
												game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v449.HumanoidRootPart.CFrame * CFrame.new(0, 1, 30);
											elseif (AttackRandomType == 3) then
												game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v449.HumanoidRootPart.CFrame * CFrame.new(1, 1, -30);
											elseif (AttackRandomType == 4) then
												game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v449.HumanoidRootPart.CFrame * CFrame.new(30, 1, 0);
											elseif (AttackRandomType == 5) then
												game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v449.HumanoidRootPart.CFrame * CFrame.new(-30, 1, 0);
											else
												game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v449.HumanoidRootPart.CFrame * CFrame.new(0, 30, 1);
											end
											FastAttackSpeed = true;
											Equip(WeaponName);
										end
									until not AutoEliteHunter or not v449.Parent or (v449.Humanoid.Health <= 0) 
									FastAttackSpeed = false;
								end
							end
						else
							local v418 = "EliteHunter";
							local v419 = game:GetService("ReplicatedStorage").Remotes['CommF_'];
							v419:InvokeServer(v418);
						end
					else
						local v394 = "EliteHunter";
						local v395 = game:GetService("ReplicatedStorage").Remotes['CommF_'];
						v395:InvokeServer(v394);
					end
				end
			end);
		end
	end);
end});

local v69 = v41:Separator("Bones");
local v59 = v41:Toggle({Name="AutoFarm Bones",Flag="FarmBones",Default=getgenv().AutoOpen.AutoFarmBones,Callback=function(v52)
	_G.AutoFarmBones = v52;

end});
local v65 = v41:Toggle({Name="Auto Hoolow Scythe",Flag="Auto_Hoolow",Default=false,Callback=function(v52)
	_G.AutoHoolow = v52;
	AutoHollow = v52;

end});
spawn(function()
	while task.wait() do
		if AutoHollow then
			pcall(function()
				if game:GetService("Workspace").Enemies:FindFirstChild("Soul Reaper [Lv. 2100] [Raid Boss]") then
					for v396, v397 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if string.find(v397.Name, "Soul Reaper [Lv. 2100] [Raid Boss]") then
							repeat
								task.wait();
								AutoHaki();
								FastAttackSpeed = true;
								v397.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
								v50(v397.HumanoidRootPart.CFrame * CFrame.new(5, -50, -29));
								v397.HumanoidRootPart.Transparency = 1;
								sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge);
							until (v397.Humanoid.Health <= 0) or (AutoHollow == false) 
						end
					end
				elseif (game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Hallow Essence") or (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Hallow Essence") and not game:GetService("Workspace").Enemies:FindFirstChild("Soul Reaper [Lv. 2100] [Raid Boss]"))) then
					repeat
						v50(CFrame.new(-8932.322265625, 146.83154296875, 6062.55078125));
					until (CFrame.new(-8932.322265625, 146.83154296875, 6062.55078125).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 15 
					Equip("Hallow Essence");
					if game:GetService("ReplicatedStorage"):FindFirstChild("Soul Reaper [Lv. 2100] [Raid Boss]") then
						v50(game:GetService("ReplicatedStorage"):FindFirstChild("Soul Reaper [Lv. 2100] [Raid Boss]").HumanoidRootPart.CFrame * CFrame.new(0, 15, 0));
					end
				end
			end);
		end
	end
end);
spawn(function()
	game:GetService("RunService").Heartbeat:Connect(function()
		if AutoHollow then
			if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid") then
				setfflag("HumanoidParallelRemoveNoPhysics", "False");
				setfflag("HumanoidParallelRemoveNoPhysicsNoSimulate2", "False");
				game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(11);
			end
		end
	end);
end);
local v65 = v41:Toggle({Name="Auto Random Surprise",Flag="Auto_Random_Surprise",Default=false,Callback=function(v52)
	_G.AutoSurprise = v52;
	AutorandomBone = v52;

	spawn(function()
		while wait(0.1) do
			if AutorandomBone then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones", "Buy", 1, 1);
			end
		end
	end);
end});
local v71 = v38:Dropdown({Name="Select Weapon",Default="Melee",Scrollable=true,ScrollingMax=5,Content={"Melee","Sword","Devil Fruit"},Flag="Weapon",Callback=function(v70)
	_G.WeaponSelect = v70;
	SelectWeapon = v70;
	require(game:GetService("ReplicatedStorage").Notification).new("Weapon : "..tostring(v70)):Display();
end});
v38:Dropdown{
	Default = "Fast",
	Content = {
		"Slow",
		"Fast",
		"Super Fast { Krnl Careful }"
	},

	Flag = "Select FastAttack",
	Callback = function(option)
		_G.SelectAttack = option

	end
}
_G.SelectAutoclick = ""
v38:Dropdown{
	Default = "Auto Click { Check Mon }",
	Content = {
		"Auto Click { Normal }",
		"Auto Click { Check Mon }",
		"Auto Click { Check Player }"
	},

	Flag = "Select Autoclick_Mode",
	Callback = function(option)
		_G.SelectAutoclick = option

	end
}
local Label_Check_Mon_Aura = v38:Label("Check Mon around : Wait For Toggle")
local Label_Check_Player_Aura = v38:Label("Check Player around : Wait For Toggle")
local v65 = v38:Toggle({Name="Fast Attach",Flag="Fast_Attach",Default=true,Callback=function(v52)
	_G.FastAttack = v52;
	if v52 then
		local StopCamera = require(game.ReplicatedStorage.Util.CameraShaker)
		StopCamera:Stop()
	else
		local StopCamera = require(game.ReplicatedStorage.Util.CameraShaker)
		StopCamera:Stop()
	end;
	require(game:GetService("ReplicatedStorage").Notification).new("Fast Attack : "..tostring(v52)):Display();
end});
local AutoAttach = v38:Toggle({Name="Auto Attach",Flag="Auto_Attach",Default=false,Callback=function(v52)
	_G.AutoClick = v52;

	require(game:GetService("ReplicatedStorage").Notification).new("AutoAttack : "..tostring(v52)):Display();
end});
local v72 = v38:Toggle({Name="Bypass Tp",Flag="Bypass_Tp",Default=true,Callback=function(v52)
	_G.BypassTp = v52;
	require(game:GetService("ReplicatedStorage").Notification).new("BypassTp : "..tostring(v52)):Display();
end});
local v65 = v38:Toggle({Name="Fast Tween",Flag="Fast_Tween",Default=true,Callback=function(v52)
	_G.FastTween = v52;

	require(game:GetService("ReplicatedStorage").Notification).new("FastTween : "..tostring(v52)):Display();
end});
local Stop_Walk_Mon = v38:Toggle({Name="Stop Walk Mon",Flag="Stop_Mon",Default=false,Callback=function(v52)
	_G.StopWalkMon = v52;
	require(game:GetService("ReplicatedStorage").Notification).new("StopWalkMon : "..tostring(v52)):Display();
end});
local v5792 = v38:Toggle({Name="Random CFrame Farm",Flag="Bringmob",Default=true,Callback=function(v52)
	_G.RandomCFrame = v52;
	require(game:GetService("ReplicatedStorage").Notification).new("RandomCFrame : "..tostring(v52)):Display();
end});
local v5792 = v38:Toggle({Name="Bringmob",Flag="Bringmob",Default=true,Callback=function(v52)
	_G.Bringmob = v52;
	Bringmob = v52;
	require(game:GetService("ReplicatedStorage").Notification).new("Bringmob : "..tostring(v52)):Display();
end});
_G.Speed_Random = 0
v38:Slider{
	Text = "Distance Farm [value]",
	Default = 25,
	Min = 0,
	Max = 30,
	Float = 1,
	Flag = "Distance_Farm",
	Callback = function(value)
		_G.Distance_Farm = value
	end
}
v38:Slider{
	Text = "Speed Random [value]",
	Default = 0.5,
	Min = 0,
	Max = 5,
	Float = 0.5,
	Flag = "Speed_Random",
	Callback = function(value)
		_G.Speed_Random = value
	end
}


_G.FarmFrame = CFrame.new(0,0,0)
task.spawn(function ()
	while wait(_G.Speed_Random) do
		if _G.RandomCFrame then
			_G.FarmFrame = CFrame.new(math.random(-25,25),tonumber(_G.Distance_Farm),math.random(-25,25))
		else
			_G.FarmFrame = CFrame.new(0,25,0)
		end	
	end
end)

task.spawn(function ()
	while wait(0.5) do
		pcall(function ()
			if _G.StopWalkMon then
				for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
					v.Humanoid.WalkSpeed = 0
				end
			else
				for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
					v.Humanoid.WalkSpeed = 30
				end
			end
		end)
	end
end)

coroutine.wrap(function()
	for v,v in pairs(getreg()) do
		if typeof(v) == "function" and getfenv(v).script == game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework then
			for v,v in pairs(debug.getupvalues(v)) do
				if typeof(v) == "table" then
					spawn(function()
						game:GetService("RunService").RenderStepped:Connect(function()
							if _G.FastAttack then
								pcall(function()
									v.activeController.timeToNextAttack = -(math.huge^math.huge^math.huge)
									v.activeController.attacking = false
									v.activeController.increment = 4
									v.activeController.blocking = false   
									v.activeController.hitboxMagnitude = 50
									v.activeController.humanoid.AutoRotate = true
									v.activeController.focusStart = 0
									v.activeController.currentAttackTrack = 0
									sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRaxNerous", math.huge)
								end)
							end
						end)
					end)
				end
			end
		end
	end
end)()

v38:Button{
	Name = "Bringmob to Me",
	Callback  = function(v52)
		for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
			v.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
		end	
	end}
task.spawn(function ()
	while wait() do
		if _G.AutoFarmPos then
			for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
				v.HumanoidRootPart.CFrame = CFrame.new(_G.Pos)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(_G.Pos) * _G.FarmFrame
			end
			Equip(WeaponName)

			if not _G.Bringmob then
				v5792:Toggle(true)
			end
		end
	end
end)

local v73 = require(game:GetService("Players").LocalPlayer.PlayerScripts:WaitForChild("CombatFramework"));
local v74 = getupvalues(v73)[2];
local v75 = require(game:GetService("Players")['LocalPlayer'].PlayerScripts.CombatFramework.RigController);
local v76 = getupvalues(v75)[2];
CurrentWeapon = function()
	local v163 = v74.activeController;
	local v164 = v163.blades[1];
	if not v164 then
		return game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Name;
	end
	pcall(function()
		while v164.Parent ~= game.Players.LocalPlayer.Character do
			v164 = v164.Parent;
		end
	end);
	if not v164 then
		return game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Name;
	end
	return v164;
end;
getAllBladeHitsPlayers = function(v77)
	local v165 = {};
	local v166 = game.Players.LocalPlayer;
	local v167 = game:GetService("Workspace").Characters:GetChildren();
	for v210 = 1, #v167 do
		local v211 = v167[v210];
		local v212 = v211:FindFirstChildOfClass("Humanoid");
		if ((v211.Name ~= game.Players.LocalPlayer.Name) and v212 and v212.RootPart and (v212.Health > 0) and (v166:DistanceFromCharacter(v212.RootPart.Position) < (v77 + 5))) then
			table.insert(v165, v212.RootPart);
		end
	end
	return v165;
end;
getAllBladeHits = function(v77)
	local v168 = {};
	local v169 = game.Players.LocalPlayer;
	local v170 = game:GetService("Workspace").Enemies:GetChildren();
	for v213 = 1, #v170 do
		local v214 = v170[v213];
		local v215 = v214:FindFirstChildOfClass("Humanoid");
		if (v215 and v215.RootPart and (v215.Health > 0) and (v169:DistanceFromCharacter(v215.RootPart.Position) < (v77 + 5))) then
			table.insert(v168, v215.RootPart);
		end
	end
	return v168;
end;
DamageAura = function()
	local v171 = v74.activeController;
	if (v171 and v171.equipped) then
		for v281 = 1, 1 do
			local v282 = getAllBladeHits(150);
			local v283 = getAllBladeHitsPlayers(150);
			if (#v282 or (#v283 > 0)) then
				local v351 = debug.getupvalue(v171.attack, 5);
				local v352 = debug.getupvalue(v171.attack, 6);
				local v353 = debug.getupvalue(v171.attack, 4);
				local v354 = debug.getupvalue(v171.attack, 7);
				local v355 = ((v351 * 798405) + (v353 * 727595)) % v352;
				local v356 = (v353 * 798405)(function()
					v355 = ((v355 * v352) + NumberAc13) % 1099511627776;
					v351 = math.floor(v355 / v352);
					v353 = v355 - (v351 * v352);
				end)();
				v354 = v354 + 1;
				debug.setupvalue(v171.attack, 5, v351);
				debug.setupvalue(v171.attack, 6, v352);
				debug.setupvalue(v171.attack, 4, v353);
				debug.setupvalue(v171.attack, 7, v354);
				for v381, v382 in pairs(v171.animator.anims.basic) do
					v382:Play(0.01, 0.01, 0.01);
				end
				if (game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") and v171.blades and v171.blades[1]) then
					game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("weaponChange", tostring(CurrentWeapon()));
					game.ReplicatedStorage.Remotes.Validator:FireServer(math.floor((v355 / 1099511627776) * 16777215), v354);
					game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("hit", v282, v281, "");
				end
			end
		end
	end
end;
AttackFunction = function()
	local v172 = v74.activeController;
	if (v172 and v172.equipped) then
		for v284 = 1, 1 do
			local v285 = getAllBladeHits(60);
			if (#v285 > 0) then
				local v357 = debug.getupvalue(v172.attack, 5);
				local v358 = debug.getupvalue(v172.attack, 6);
				local v359 = debug.getupvalue(v172.attack, 4);
				local v360 = debug.getupvalue(v172.attack, 7);
				local v361 = ((v357 * 798405) + (v359 * 727595)) % v358;
				local v362 = (v359 * 798405)(function()
					v361 = ((v361 * v358) + NumberAc13) % 1099511627776;
					v357 = math.floor(v361 / v358);
					v359 = v361 - (v357 * v358);
				end)();
				v360 = v360 + 1;
				debug.setupvalue(v172.attack, 5, v357);
				debug.setupvalue(v172.attack, 6, v358);
				debug.setupvalue(v172.attack, 4, v359);
				debug.setupvalue(v172.attack, 7, v360);
				for v383, v384 in pairs(v172.animator.anims.basic) do
					v384:Play(0.01, 0.01, 0.01);
				end
				if (game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") and v172.blades and v172.blades[1]) then
					game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("weaponChange", tostring(CurrentWeapon()));
					game.ReplicatedStorage.Remotes.Validator:FireServer(math.floor((v361 / 1099511627776) * 16777215), v360);
					game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("hit", v285, v284, "");
				end
			end
		end
	end
end;

local v65 = v39:Toggle({Name="Auto Stats",Flag="Auto_Stats",Default=false,Callback=function(v52)
	_G.AutoStats_Epa = v52;
end});
task.spawn(function()
	while wait() do
		pcall(function()
			if (SelectWeapon == "Melee") then
				for v363, v364 in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
					if (v364.ToolTip == "Melee") then
						if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v364.Name)) then
							WeaponName = v364.Name;
						end
					end
				end
			elseif (SelectWeapon == "Sword") then
				for v398, v399 in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
					if (v399.ToolTip == "Sword") then
						if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v399.Name)) then
							WeaponName = v399.Name;
						end
					end
				end
			elseif (SelectWeapon == "Devil Fruit") then
				for v421, v422 in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
					if (v422.ToolTip == "Blox Fruit") then
						if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v422.Name)) then
							WeaponName = v422.Name;
						end
					end
				end
			else
				for v423, v424 in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
					if (v424.ToolTip == "Melee") then
						if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v424.Name)) then
							WeaponName = v424.Name;
						end
					end
				end
			end
		end);
	end
end);
spawn(function()
	game:GetService("RunService").Heartbeat:Connect(function()
		if (AutoFarm or AutoEliteHunter or AutoThirdWorld or AutoNewWorld) then
			if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid") then
				setfflag("HumanoidParallelRemoveNoPhysics", "False");
				setfflag("HumanoidParallelRemoveNoPhysicsNoSimulate2", "False");
				game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(11);
			end
		end
	end);
end);
task.spawn(function()
	while true do
		wait(0.5);
		if setscriptable then
			setscriptable(game.Players.LocalPlayer, "SimulationRadius", true);
		end
		if sethiddenproperty then
			sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge);
		end
	end
end);
v39:Slider({Text="UpStats Point : [value]",Default=1,Min=1,Max=100,Float=1,Flag="UpStats_Point",Callback=function(v78)
end});
local v65 = v39:Toggle({Name="AutoStats Melee",Flag="Auto_Stats_Melee",Default=false,Callback=function(v52)
	_G.AutoStats_Melee = v52;

end});
local v65 = v39:Toggle({Name="AutoStats Defense",Flag="Auto_Stats_Defense",Default=false,Callback=function(v52)
	_G.AutoStats_Defense = v52;

end});
local v65 = v39:Toggle({Name="AutoStats Sword",Flag="Auto_Stats_Sword",Default=false,Callback=function(v52)
	_G.AutoStats_Sword = v52;

end});
local v65 = v39:Toggle({Name="AutoStats Gun",Flag="Auto_Stats_Gun",Default=false,Callback=function(v52)
	_G.AutoStats_Gun = v52;

end});
local v65 = v39:Toggle({Name="AutoStats Fruit",Flag="Auto_Stats_Fruit",Default=false,Callback=function(v52)
	_G.AutoStats_Fruit = v52;

end});

if Three_World then
	TISLAND = {"Castle on the Sea","Port Town","Hydra Island","Great Tree","Awakeing Room { Word 3 }","Floating Turtle","Mansion","Sea of Treats","Temple of Time","Cyborg Door","Mink Door","Fish Door","Ghoul Door","Human Door","Sky Door"};
	wait(2)
	DefaultD = "Castle on the Sea";
elseif New_World then
	TISLAND = {"Forgotten IsLand","King Of Rose","Ice Castle","Cursed Ship","Awakeing Room { Word 2 }","Hot Land","Cold Land","Snow Moutain","Gravetard Island","Gravetard Island Mon","Factory","Cafe","Swan Room","Dark Arena"};
	wait(2)
	DefaultD = "Cafe";
elseif Old_World then
	TISLAND = {"Marine Starter","Pirabe Starter","Whirl Pool","Jungle","Middle Town","Pirate Village","Desert","Fountain City","Prison","Frozen Village","Sky land 1","Sky land 2","Marine Fortress","Magma Village","Colosseum"};
	wait(2)
	DefaultD="Middle Town";
end

_G.Teleport = false;
v79 = {}

for v175, v176 in pairs(game.Workspace.NPCs:GetChildren()) do
	table.insert(v79, v176.Name);
	task.spawn(function()
		while wait() do
			pcall(function()
				if _G.Teleport then
					if (v176.Name == TeleportNPC) then
						v50(v176.HumanoidRootPart.CFrame);
					end
				end
			end);
		end
	end);
end

local v80 = v40:Dropdown({Default=DefaultD,Content=TISLAND,Callback=function(v70)
	TISLANDSele = v70;

end});


local v81 = v40:Dropdown({Default="",Content=v79,Callback=function(v70)
	TeleportNPC = v70;
	v80:Set("");

end});

local v82 = v40:Toggle({Name="Teleport",Default=false,Callback=function(v52)
	_G.Teleport = v52;

end});

v40:Button({Name="Teleport To Island { Super Spectate }",Callback=function()
	if TISLANDSele == "Forgotten IsLand" then -- World 2
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-3170.492919921875, 298.66448974609375, -10563.302734375)	
	elseif TISLANDSele == "King Of Rose" then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-382.565673828125, 118.15985107421875, 1247.8397216796875)	
	elseif TISLANDSele == "Ice Castle" then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(5536.3427734375, 257.1117858886719, -6792.4658203125)	
	elseif TISLANDSele == "Cursed Ship" then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-6502.29736328125, 83.18614959716797, -124.08943939208984)	
	elseif TISLANDSele == "Awakeing Room { Word 2 }" then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(239.78811645507812, 1.3600505590438843, 1824.4163818359375)
	elseif TISLANDSele == "Hot Land" then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-5427.330078125, 15.951759338378906, -5220.34814453125)	
	elseif TISLANDSele == "Cold Land" then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-6023.80224609375, 15.951759338378906, -5071.09521484375)	
	elseif TISLANDSele == "Snow Moutain" then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(577.0983276367188, 401.42193603515625, -5371.005859375)	
	elseif TISLANDSele == "Gravetard Island" then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-5529.05859375, 96.53802490234375, -760.3163452148438)	
	elseif TISLANDSele == "Gravetard Island Mon" then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-5529.05859375, 96.53802490234375, -760.3163452148438)	
	elseif TISLANDSele == "Factory" then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(290.94976806640625, 74.42233276367188, -295.5749816894531)
	elseif TISLANDSele == "Cafe" then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-380.9781188964844, 88.43508911132812, 292.3891296386719)		
	elseif TISLANDSele == "Dark Arena" then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(3311.24, 12.5281, -3272.89)	
	elseif TISLANDSele == "Marine Starter" then -- World 1
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2591.75, 6.88882, 2085.11)	
	elseif TISLANDSele == "Pirabe Starter" then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(981.669, 16.5166, 1427.7)	
	elseif TISLANDSele == "Whirl Pool" then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(3902.34, 11.7083, -1937.3)	
	elseif TISLANDSele == "Jungle" then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1442.27, 61.852, -28.7423)	
	elseif TISLANDSele == "Middle Town" then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-690.079, 15.2263, 1583.58)
	elseif TISLANDSele == "Pirate Village" then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1148.77, 44.752, 3848.53)	
	elseif TISLANDSele == "Desert" then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1133.78, 29.9399, 4339.18)	
	elseif TISLANDSele == "Fountain City" then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(5280.90869140625, 54.08751678466797, 4105.1337890625)	
	elseif TISLANDSele == "Prison" then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(4878.75830078125, 64.65208435058594, 734.720947265625)
	elseif TISLANDSele == "Frozen Village" then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1398.63, 109.14, -1345.43)	
	elseif TISLANDSele == "Sky land 1" then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-4792.97, 736.763, -2621.44)	
	elseif TISLANDSele == "Sky land 2" then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-7878.08, 5545.58, -376.224)
	elseif TISLANDSele == "Marine Fortress" then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-4929.85400390625, 194.82676696777344, 4319.73876953125)	
		v82:Toggle(false)
	elseif TISLANDSele == "Magma Village" then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-5406.6220703125, 11.172664642333984, 8448.28125)
		v82:Toggle(false)
	elseif TISLANDSele == "Colosseum" then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1724.2384033203125, 150.3317413330078, -3179.2734375)	
	elseif TISLANDSele == "Castle on the Sea" then -- world 3
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-5068.984375, 314.5155029296875, -3152.97607421875)
	elseif TISLANDSele == "Mansion" then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-12469.9638671875, 374.91455078125, -7547.5810546875)
	elseif TISLANDSele == "Hydra Island" then	
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(5749.30810546875, 610.4240112304688, -267.0454406738281)
	elseif TISLANDSele == "Port Town" then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-288.03460693359375, 29.412803649902344, 5389.33447265625)	
	elseif TISLANDSele == "Great Tree" then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2375.13671875, 36.2883186340332, -6577.03125)	
	elseif TISLANDSele == "Floating Turtle" then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-11521.8251953125, 481.5546875, -10397.9140625)	
	elseif TISLANDSele == "Sea of Treats" then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1890.8038330078125, 94.94306945800781, -12043.25)	
	elseif TISLANDSele == "Awakeing Room { Word 3 }" then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-11560.421875, 49.172672271728516, -7582.57177734375)	
	elseif TISLANDSele == "Temple of Time" then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286.35546875, 14896.5078125, 102.62469482421875)	
	elseif TISLANDSele == "Cyborg Door" then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28505.638671875, 14895.6328125, -422.7278747558594)	
	elseif TISLANDSele == "Mink Door" then
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28998.30859375, 14890.6328125, -379.8742370605469)	
	elseif TISLANDSele == "Sky Door" then	
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28952.525390625, 14919.28125, 234.52769470214844)	
	elseif TISLANDSele == "Fish Door" then		
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28236.2578125, 14890.6328125, -211.78807067871094)	
	elseif TISLANDSele == "Ghoul Door" then	
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28672.66015625, 14890.333984375, 440.2044372558594)	
	elseif TISLANDSele == "Human Door" then	
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(29222.8046875, 14890.6328125, -206.65357971191406)		
	end
end});


v40:Button({Name="Clear Dropdown",Callback=function()
	TISLANDSele = nil;
	TeleportNPC = nil;
	v80:Set(DefaultDrop);
	v81:Set("");

end});
pcall(function()
	task.spawn(function()
		while wait() do
			pcall(function()
				if _G.Teleport then
					v50(CframeIsland);
				end
			end);
		end
	end);
end);

_G.DisDark = 0

task.spawn(function ()
	while wait() do
		if New_World then
			_G.DisDark = (Vector3.new(3311.24, 12.5281, -3272.89) - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).Magnitude;
		elseif Three_World then
			_G.DisDark = (Vector3.new(-11560.421875, 49.172672271728516, -7582.57177734375) - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).Magnitude;
		end
	end
end)

task.spawn(function ()
	while wait() do
		if _G.Teleport then
			v72:Toggle(true)
			if _G.BypassTp then
				if TISLANDSele == "Forgotten IsLand" then -- World 2
					game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-3170.492919921875, 298.66448974609375, -10563.302734375)	
					game.Players.LocalPlayer.Character.Head:Destroy();	
					repeat
						wait()
					until game.Players.LocalPlayer.Character.Humanoid.Health > 0 
					v82:Toggle(false)

				elseif TISLANDSele == "King Of Rose" then
					game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-382.565673828125, 118.15985107421875, 1247.8397216796875)	
					game.Players.LocalPlayer.Character.Head:Destroy();		
					repeat
						wait()
					until game.Players.LocalPlayer.Character.Humanoid.Health > 0 
					v82:Toggle(false)

				elseif TISLANDSele == "Ice Castle" then
					game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(5536.3427734375, 257.1117858886719, -6792.4658203125)	
					game.Players.LocalPlayer.Character.Head:Destroy();	
					repeat
						wait()
					until game.Players.LocalPlayer.Character.Humanoid.Health > 0 
					v82:Toggle(false)

				elseif TISLANDSele == "Cursed Ship" then
					game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-5529.05859375, 96.53802490234375, -760.3163452148438)	
					game.Players.LocalPlayer.Character.Head:Destroy();		
					repeat
						wait()
					until game.Players.LocalPlayer.Character.Humanoid.Health > 0 
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-5634.36865234375, 48.480194091796875, -592.8699340820312)	
					wait(1)
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-6502.29736328125, 83.18614959716797, -124.08943939208984)	
					v82:Toggle(false)

				elseif TISLANDSele == "Awakeing Room { Word 2 }" then
					game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(239.78811645507812, 1.3600505590438843, 1824.4163818359375)	
					game.Players.LocalPlayer.Character.Head:Destroy();	
					repeat
						wait()
					until game.Players.LocalPlayer.Character.Humanoid.Health > 0 
					wait(1)
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(239.78811645507812, 1.3600505590438843, 1824.4163818359375)	
					v82:Toggle(false)

				elseif TISLANDSele == "Hot Land" then
					game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-5427.330078125, 15.951759338378906, -5220.34814453125)	
					game.Players.LocalPlayer.Character.Head:Destroy();	
					repeat
						wait()
					until game.Players.LocalPlayer.Character.Humanoid.Health > 0 
					v82:Toggle(false)

				elseif TISLANDSele == "Cold Land" then
					game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-6023.80224609375, 15.951759338378906, -5071.09521484375)	
					game.Players.LocalPlayer.Character.Head:Destroy();	
					repeat
						wait()
					until game.Players.LocalPlayer.Character.Humanoid.Health > 0 
					v82:Toggle(false)

				elseif TISLANDSele == "Snow Moutain" then
					game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(577.0983276367188, 401.42193603515625, -5371.005859375)	
					game.Players.LocalPlayer.Character.Head:Destroy();	
					repeat
						wait()
					until game.Players.LocalPlayer.Character.Humanoid.Health > 0 
					v82:Toggle(false)

				elseif TISLANDSele == "Gravetard Island" then
					game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-5529.05859375, 96.53802490234375, -760.3163452148438)	
					game.Players.LocalPlayer.Character.Head:Destroy();	
					repeat
						wait()
					until game.Players.LocalPlayer.Character.Humanoid.Health > 0 
					v82:Toggle(false)

				elseif TISLANDSele == "Gravetard Island Mon" then
					game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-5529.05859375, 96.53802490234375, -760.3163452148438)	
					game.Players.LocalPlayer.Character.Head:Destroy();	
					repeat
						wait()
					until game.Players.LocalPlayer.Character.Humanoid.Health > 0 
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-5840.12841796875, 4.4117865562438965, -1097.8883056640625)	
					v82:Toggle(false)

				elseif TISLANDSele == "Factory" then
					game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-380.9781188964844, 88.43508911132812, 292.3891296386719)	
					game.Players.LocalPlayer.Character.Head:Destroy();	
					repeat
						wait()
					until game.Players.LocalPlayer.Character.Humanoid.Health > 0 
					wait(1)
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(290.94976806640625, 74.42233276367188, -295.5749816894531)
					wait()
					v82:Toggle(false)

				elseif TISLANDSele == "Cafe" then
					game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-380.9781188964844, 88.43508911132812, 292.3891296386719)	
					game.Players.LocalPlayer.Character.Head:Destroy();	
					repeat
						wait()
					until game.Players.LocalPlayer.Character.Humanoid.Health > 0 
					v82:Toggle(false)				
				elseif TISLANDSele == "Dark Arena" then
					local TweenService = game:GetService("TweenService")
					v72:Toggle(false)
					repeat
						wait()
						if _G.DisDark < 2800 then
							local Tw = TweenService:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(6, Enum.EasingStyle.Linear, Enum.EasingDirection.Out,0,false,0), 
								{CFrame = CFrame.new(3311.24, 12.5281, -3272.89)}):Play()
						elseif _G.DisDark < 1500 then
							local Tw = TweenService:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(5, Enum.EasingStyle.Linear, Enum.EasingDirection.Out,0,false,0), 
								{CFrame = CFrame.new(3311.24, 12.5281, -3272.89)}):Play()
						elseif _G.DisDark < 1100  then
							local Tw = TweenService:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(3, Enum.EasingStyle.Linear, Enum.EasingDirection.Out,0,false,0), 
								{CFrame = CFrame.new(3311.24, 12.5281, -3272.89)}):Play()
						elseif _G.DisDark < 950   then
							local Tw = TweenService:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(2, Enum.EasingStyle.Linear, Enum.EasingDirection.Out,0,false,0), 
								{CFrame = CFrame.new(3311.24, 12.5281, -3272.89)}):Play()	
						elseif _G.DisDark < 820  then
							local Tw = TweenService:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0.5, Enum.EasingStyle.Linear, Enum.EasingDirection.Out,0,false,0), 
								{CFrame = CFrame.new(3311.24, 12.5281, -3272.89)}):Play()	
						elseif _G.DisDark < 790  then
							local Tw = TweenService:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.Out,0,false,0), 
								{CFrame = CFrame.new(3311.24, 12.5281, -3272.89)}):Play()		
						elseif _G.DisDark <  420  then
							local Tw = TweenService:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Linear, Enum.EasingDirection.Out,0,false,0), 
								{CFrame = CFrame.new(3311.24, 12.5281, -3272.89)}):Play()
						else
							local Tw = TweenService:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(15, Enum.EasingStyle.Linear, Enum.EasingDirection.Out,0,false,0), 
								{CFrame = CFrame.new(3311.24, 12.5281, -3272.89)}):Play() 
						end
					until _G.DisDark < 420
					local Tw = TweenService:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Linear, Enum.EasingDirection.Out,0,false,0), 
						{CFrame = CFrame.new(3311.24, 12.5281, -3272.89)}):Play()
					wait()
					v72:Toggle(true)

					v82:Toggle(false)

				elseif TISLANDSele == "Marine Starter" then -- World 1
					game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2591.75, 6.88882, 2085.11)	
					game.Players.LocalPlayer.Character.Head:Destroy();	
					repeat
						wait()
					until game.Players.LocalPlayer.Character.Humanoid.Health > 0 
					v82:Toggle(false)
				elseif TISLANDSele == "Pirabe Starter" then
					game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(981.669, 16.5166, 1427.7)	

					game.Players.LocalPlayer.Character.Head:Destroy();	
					repeat
						wait()
					until game.Players.LocalPlayer.Character.Humanoid.Health > 0 
					v82:Toggle(false)
				elseif TISLANDSele == "Whirl Pool" then
					game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(3902.34, 11.7083, -1937.3)	
					game.Players.LocalPlayer.Character.Head:Destroy();			
					repeat
						wait()
					until game.Players.LocalPlayer.Character.Humanoid.Health > 0 
					v82:Toggle(false)
				elseif TISLANDSele == "Jungle" then
					game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1442.27, 61.852, -28.7423)	

					game.Players.LocalPlayer.Character.Head:Destroy();	
					repeat
						wait()
					until game.Players.LocalPlayer.Character.Humanoid.Health > 0 
					v82:Toggle(false)
				elseif TISLANDSele == "Middle Town" then
					game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-690.079, 15.2263, 1583.58)

					game.Players.LocalPlayer.Character.Head:Destroy();	
					repeat
						wait()
					until game.Players.LocalPlayer.Character.Humanoid.Health > 0 
					v82:Toggle(false)
				elseif TISLANDSele == "Pirate Village" then
					game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1148.77, 44.752, 3848.53)	

					game.Players.LocalPlayer.Character.Head:Destroy();	
					repeat
						wait()
					until game.Players.LocalPlayer.Character.Humanoid.Health > 0 
					v82:Toggle(false)
				elseif TISLANDSele == "Desert" then
					game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1133.78, 29.9399, 4339.18)	

					game.Players.LocalPlayer.Character.Head:Destroy();	
					repeat
						wait()
					until game.Players.LocalPlayer.Character.Humanoid.Health > 0 
					v82:Toggle(false)

				elseif TISLANDSele == "Fountain City" then
					game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(5280.90869140625, 54.08751678466797, 4105.1337890625)	

					game.Players.LocalPlayer.Character.Head:Destroy();		
					repeat
						wait()
					until game.Players.LocalPlayer.Character.Humanoid.Health > 0 
					v82:Toggle(false)

				elseif TISLANDSele == "Prison" then
					game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(4878.75830078125, 64.65208435058594, 734.720947265625)
					game.Players.LocalPlayer.Character.Head:Destroy();		
					repeat
						wait()
					until game.Players.LocalPlayer.Character.Humanoid.Health > 0 
					v82:Toggle(false)

				elseif TISLANDSele == "Frozen Village" then
					game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1398.63, 109.14, -1345.43)	

					game.Players.LocalPlayer.Character.Head:Destroy();	
					repeat
						wait()
					until game.Players.LocalPlayer.Character.Humanoid.Health > 0 
					v82:Toggle(false)

				elseif TISLANDSele == "Sky land 1" then
					game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-4792.97, 736.763, -2621.44)	

					game.Players.LocalPlayer.Character.Head:Destroy();	
					repeat
						wait()
					until game.Players.LocalPlayer.Character.Humanoid.Health > 0 
					v82:Toggle(false)

				elseif TISLANDSele == "Sky land 2" then
					game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-7878.08, 5545.58, -376.224)
					game.Players.LocalPlayer.Character.Head:Destroy();	

					repeat
						wait()
					until game.Players.LocalPlayer.Character.Humanoid.Health > 0 
					v82:Toggle(false)

				elseif TISLANDSele == "Marine Fortress" then
					game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-4929.85400390625, 194.82676696777344, 4319.73876953125)	

					game.Players.LocalPlayer.Character.Head:Destroy();	
					repeat
						wait()
					until game.Players.LocalPlayer.Character.Humanoid.Health > 0 

					v82:Toggle(false)
				elseif TISLANDSele == "Magma Village" then
					game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-5406.6220703125, 11.172664642333984, 8448.28125)
					game.Players.LocalPlayer.Character.Head:Destroy();		
					repeat
						wait()
					until game.Players.LocalPlayer.Character.Humanoid.Health > 0 
					v82:Toggle(false)
				elseif TISLANDSele == "Colosseum" then
					game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1724.2384033203125, 150.3317413330078, -3179.2734375)	
					game.Players.LocalPlayer.Character.Head:Destroy();	
					repeat
						wait()
					until game.Players.LocalPlayer.Character.Humanoid.Health > 0 
					v82:Toggle(false)

				elseif TISLANDSele == "Castle on the Sea" then -- world 3
					repeat
						wait()
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-5068.984375, 314.5155029296875, -3152.97607421875)
					until game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame == CFrame.new(-5068.984375, 314.5155029296875, -3152.97607421875)
					wait()
					v82:Toggle(false)

				elseif TISLANDSele == "Mansion" then
					repeat
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-12469.9638671875, 374.91455078125, -7547.5810546875)
						wait()
					until game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame == CFrame.new(-12469.9639, 374.914551, -7547.58105, 1, 0, 0, 0, 1, 0, 0, 0, 1)
					wait()
					v82:Toggle(false)

				elseif TISLANDSele == "Hydra Island" then	
					repeat
						wait()
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(5749.30810546875, 610.4240112304688, -267.0454406738281)
					until game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame == CFrame.new(5749.30810546875, 610.4240112304688, -267.0454406738281)
					wait()
					v82:Toggle(false)

				elseif TISLANDSele == "Port Town" then
					game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-288.03460693359375, 29.412803649902344, 5389.33447265625)	
					game.Players.LocalPlayer.Character.Head:Destroy();	
					repeat
						wait()
					until game.Players.LocalPlayer.Character.Humanoid.Health > 0 
					wait()
					v82:Toggle(false)

				elseif TISLANDSele == "Great Tree" then
					game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2375.13671875, 36.2883186340332, -6577.03125)	
					game.Players.LocalPlayer.Character.Head:Destroy();	
					repeat
						wait()
					until game.Players.LocalPlayer.Character.Humanoid.Health > 0 
					wait()
					v82:Toggle(false)

				elseif TISLANDSele == "Floating Turtle" then
					game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-11521.8251953125, 481.5546875, -10397.9140625)	
					game.Players.LocalPlayer.Character.Head:Destroy();	
					repeat
						wait()
					until game.Players.LocalPlayer.Character.Humanoid.Health > 0 
					wait()
					v82:Toggle(false)
				elseif TISLANDSele == "Sea of Treats" then
					game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1890.8038330078125, 94.94306945800781, -12043.25)	
					game.Players.LocalPlayer.Character.Head:Destroy();	
					repeat
						wait()
					until game.Players.LocalPlayer.Character.Humanoid.Health > 0 
					wait()
					v82:Toggle(false)
				elseif TISLANDSele == "Awakeing Room { Word 3 }" then
					local TweenService = game:GetService("TweenService")
					repeat
						wait()
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-12469.9638671875, 374.91455078125, -7547.5810546875)
					until game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame == CFrame.new(-12469.9639, 374.914551, -7547.58105, 1, 0, 0, 0, 1, 0, 0, 0, 1)
					wait(2)
					Tp_AM = false
					if _G.DisDark < 500 then
						local Tw = TweenService:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(0, Enum.EasingStyle.Linear, Enum.EasingDirection.Out,0,false,0), 
							{CFrame = CFrame.new(-11560.421875, 49.172672271728516, -7582.57177734375)}):Play() 
					else
						local Tw = TweenService:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(5, Enum.EasingStyle.Linear, Enum.EasingDirection.Out,0,false,0), 
							{CFrame = CFrame.new(-11560.421875, 49.172672271728516, -7582.57177734375)}):Play() 
					end	
				elseif TISLANDSele == "Temple of Time" then
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286.35546875, 14896.5078125, 102.62469482421875)	
					wait(1)
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286.35546875, 14896.5078125, 102.62469482421875)	
					wait(1)
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286.35546875, 14896.5078125, 102.62469482421875)	
					wait()
					v82:Toggle(false)
				elseif TISLANDSele == "Cyborg Door" then
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286.35546875, 14896.5078125, 102.62469482421875)	
					wait(1)
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286.35546875, 14896.5078125, 102.62469482421875)	
					wait(1)
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286.35546875, 14896.5078125, 102.62469482421875)	
					wait(1)
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28505.638671875, 14895.6328125, -422.7278747558594)	
					wait()
					v82:Toggle(false)
				elseif TISLANDSele == "Mink Door" then
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286.35546875, 14896.5078125, 102.62469482421875)	
					wait(1)
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286.35546875, 14896.5078125, 102.62469482421875)	
					wait(1)
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286.35546875, 14896.5078125, 102.62469482421875)	
					wait(1)
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28998.30859375, 14890.6328125, -379.8742370605469)	
					wait()
					v82:Toggle(false)
				elseif TISLANDSele == "Sky Door" then	
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286.35546875, 14896.5078125, 102.62469482421875)	
					wait(1)
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286.35546875, 14896.5078125, 102.62469482421875)	
					wait(1)
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286.35546875, 14896.5078125, 102.62469482421875)	
					wait(1)
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28952.525390625, 14919.28125, 234.52769470214844)	
					wait()
					v82:Toggle(false)
				elseif TISLANDSele == "Fish Door" then		
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286.35546875, 14896.5078125, 102.62469482421875)	
					wait(1)
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286.35546875, 14896.5078125, 102.62469482421875)	
					wait(1)
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286.35546875, 14896.5078125, 102.62469482421875)	
					wait(1)
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28236.2578125, 14890.6328125, -211.78807067871094)	
					wait()
					v82:Toggle(false)
				elseif TISLANDSele == "Ghoul Door" then	
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286.35546875, 14896.5078125, 102.62469482421875)	
					wait(1)
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286.35546875, 14896.5078125, 102.62469482421875)	
					wait(1)
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286.35546875, 14896.5078125, 102.62469482421875)	
					wait(1)
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28672.66015625, 14890.333984375, 440.2044372558594)	
					wait()
					v82:Toggle(false)
				elseif TISLANDSele == "Human Door" then	
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286.35546875, 14896.5078125, 102.62469482421875)	
					wait(1)
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286.35546875, 14896.5078125, 102.62469482421875)	
					wait(1)
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28286.35546875, 14896.5078125, 102.62469482421875)	
					wait()
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28843.333984375, 14889.6328125, -208.32882690429688)	
					wait(1)
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28555.568359375, 14890.5078125, -88.94073486328125)	
					wait(1)
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(29222.8046875, 14890.6328125, -206.65357971191406)	
					wait()
					v82:Toggle(false)
				end
			end
		end
	end
end)


spawn(function()
	game:GetService("RunService").Heartbeat:Connect(function()
		if _G.Teleport then
			if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid") then
				setfflag("HumanoidParallelRemoveNoPhysics", "False");
				setfflag("HumanoidParallelRemoveNoPhysicsNoSimulate2", "False");
				game:GetService("Players").LocalPlayer.Character.Humanoid:ChangeState(11);
			end
		end
	end);
end);


_G.BoatTurnSoeed = false
_G.BoatTurnSoeed_Value = 1
local v83 = v40:Separator(" BoatSpeed Change ");
v40:Slider({Text=" Speed : [value] ",Default=120,Min=0,Max=500,Float=1,Flag="Speed Boat Value",Callback=function(v78)
	_G.BoatSped = v78;
end});
v40:Slider({Text=" BoatPos - Y : [value] ",Default=100,Min=0,Max=500,Float=1,Flag="Boat Set Pos",Callback=function(v78)
	_G.FigPos = v78
end});

v40:Slider({Text=" TurnSoeed : [value] ",Default=10000,Min=0,Max=10000,Float=100,Flag="TurnSpeed Baot",Callback=function(v78)
	_G.BoatTurnSoeed_Value = v78;
end});

local v84 = v40:Toggle({Name=" BoatTurnSpeed ",Flag="BoatSpeed_Turn",Default=false,Callback=function(v52)
	_G.BoatTurnSoeed = v52
end});

local v84 = v40:Toggle({Name=" BoatSpeed ",Flag="BoatSpeed_multiply",Default=false,Callback=function(v52)
	pcall(function()
		if v52 then
			local function v286()
				local v325 = Instance.new("LocalScript", v12);
				v325.Name = "BoatSpeedUp";
				while wait() do
					for v385, v386 in pairs(game:GetService("Workspace").Boats:GetChildren()) do
						v386.VehicleSeat.MaxSpeed = _G.BoatSped;
						if _G.BoatTurnSoeed  then
							v386.VehicleSeat.TurnSpeed =  _G.BoatTurnSoeed_Value;
						end
					end
				end
			end
			coroutine.wrap(v286)();
		else
			game:GetService("Workspace").SaveSpeedBoat.BoatSpeedUp:Destroy();
		end
	end);
end});
v40:Button({Name="Change BoatPos",Callback=function()
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
end});
v40:Button({Name="Fix BoatSpeed ( Bug ) ",Callback=function()
	if game:GetService("Workspace").SaveSpeedBoat.BoatSpeedUp then
		game:GetService("Workspace").SaveSpeedBoat.BoatSpeedUp:Destroy();
		wait();
		local function v231()
			local v287 = Instance.new("LocalScript", v12);
			v287.Name = "BoatSpeedUp";
			while wait() do
				for v365, v366 in pairs(game:GetService("Workspace").Boats:GetChildren()) do
					v366.VehicleSeat.MaxSpeed = _G.BoatSped;
					if _G.BoatTurnSoeed  then
						v366.VehicleSeat.TurnSpeed =  _G.BoatTurnSoeed_Value;
					end
				end
			end
		end
		coroutine.wrap(v231)();
	else
	end
end});

local v8336 = v32233:Label(" Earmed Bounty : ??? ");
local v86 = v32233:Label(" Silent aim : OFF ");
local v87 = v32233:Label(" LockPlayer : ??? ");
local v88 = v32233:Label(" Hp player : ??? ");
V4EndNaGe = " Wait Player "
v425 = " Wait Player "
_G.Namelock = ""
v426 = " Wait Player "
FovAim = 50;
ColorAim = Color3.fromRGB(0, 0, 0);
ShowFov = true;
RaceLock = " Wait Player "
_G.lockP = false;
_G.Opening_Silent = nil;
_G.Reset_Silent = nil;
_G.PL = "";
_G.SpeedTP = 100;
v32233:Slider({Text="Fov : [value]",Default=50,Min=10,Max=500,Float=1,Flag="Slider 1",Callback=function(v78)
	FovAim = v78;
end});
local v90 = v32233:ColorPicker({Name=" ColorAim ",Default=Color3.fromRGB(0, 255, 0),Flag="ColorAim",Callback=function(v89)
	ColorAim = v89;
end});
local v93 = v32233:Keybind({Name=" Opening Silent aim ",Default=Enum.KeyCode.L,Blacklist={Enum.UserInputType.MouseButton1,Enum.UserInputType.MouseButton2},Flag="Keybind 1",Callback=function(v91, v92)
	_G.Opening_Silent = v91;
	if v92 then
	else
	end
end});
local v93 = v32233:Keybind({Name=" Reset Silent aim ",Default=Enum.KeyCode.P,Blacklist={Enum.UserInputType.MouseButton1,Enum.UserInputType.MouseButton2},Flag="Keybind 1",Callback=function(v91, v92)
	_G.Reset_Silent = v91;
end});
local v84 = v32233:Toggle({Name=" ShowFov ",Flag="ShowFov",Default=true,Callback=function(v52)
	ShowFov = v52;
end});
local v84 = v32233:Toggle({Name=" Walk On Water ",Flag="WalkOnWater",Default=true,Callback=function(v52)
	_G.WalkOnWater = v52;
end});
local v84 = v32233:Toggle({Name=" Semi No Stun ",Flag="NOstun",Default=true,Callback=function(v52)
	_G.SemiNostun = v52;
end});
local v84 = v32233:Toggle({Name=" Inf Observation ",Flag="INF_OBF",Default=true,Callback=function(v52)

	if v52 then
		writefile("Manake Hub Premium script/Save_Old_VisionRadius_"..game.Players.LocalPlayer.Name..".txt", game:GetService("Players")["minecftno_1"].VisionRadius.Value)
		wait()
		game:GetService("Players")["minecftno_1"].VisionRadius.Value = math.huge
	else
		game:GetService("Players")["minecftno_1"].VisionRadius.Value = readfile("Manake Hub Premium script/Save_Old_VisionRadius_"..game.Players.LocalPlayer.Name)

	end
end});
v32233:Button({Name="Aimbot",Callback=function()
	local v177 = Drawing.new("Circle");
	updateCircle = function(v178, v179 ,FovShowigg)
		if v177.__OBJECT_EXISTS then
			v177.Transparency = 1;
			v177.Visible = FovShowigg;
			v177.Thickness = 2;
			v177.Color = v179;
			v177.NumSides = 100;
			v177.Radius = (v178 * 6) / 2;
			v177.Filled = false;
			v177.Position = Vector2.new(v6.X, v6.Y + v7.GetGuiInset(v7).Y);
		end
	end;
	spawn(function()
		game.GetService(game, "RunService").RenderStepped:Connect(function()
			pcall(function()
				updateCircle(getgenv().setting['Fov'], getgenv().setting['Color'], ShowFov);
			end);
		end);
	end);

	spawn(function()
		pcall(function()
			while wait() do
				for v327, v328 in pairs(v8.GetPlayers(v8)) do
					if (game.Workspace.Characters:FindFirstChild(v328.Name) or game.Workspace.Characters:FindFirstChild(v328.DisplayName)) then
						if v328.Character:FindFirstChild("HumanoidRootPart") then
							local v404 = v10.WorldToViewportPoint(v10, v328.Character.HumanoidRootPart.Position);
							local v405 = (Vector2.new(v404.X, v404.Y) - Vector2.new(v6.X, v6.Y)).magnitude;
							if (v405 < (((getgenv().setting['Fov'] * 6) - 8) / 2)) then
								if (v405 < math.huge) then
									if ((v328.Character.HumanoidRootPart.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 500) then
										if (v328.Name ~= game.Players.LocalPlayer.Name) then
											if (_G.lockP == true) then
												Playersaimbot = v328.Name;
												PlayersPosition = v328.Character.HumanoidRootPart.Position;
												v328.Character.HumanoidRootPart.Size = Vector3.new(10, 10, 10);
											end
										else
											Playersaimbot = nil;
											PlayersPosition = nil;
											v87:Set(" LockPlayer | ??? ");
											v88:Set(" Hp player | ??? ");
											v425 = "???";
											v426= "???";
											_G.Namelock = "???"
											RaceLock = "???"
											V4EndNaGe = "???"
										end
									end
								end
							end
						end
					end
				end
			end
		end);
	end);

	spawn(function()
		game.GetService(game, "RunService").RenderStepped:Connect(function()
			if (Playersaimbot ~= nil) then
				for v368, v369 in pairs(game.Players:GetChildren()) do
					if (v369.Name == Playersaimbot) then
						if game.Workspace.Characters:FindFirstChild(v369.Name) then
							pcall(function  ()
								v87:Set(" LockPlayer | " .. v369.Name);
								v88:Set(" Hp player | " .. math.floor(v369.Character.Humanoid.Health) .. "/" .. v369.Character.Humanoid.MaxHealth);
								v425 = v369.Name;
								v426 = math.floor(v369.Character.Humanoid.Health) .. "/" .. v369.Character.Humanoid.MaxHealth;
								RaceLock = game:GetService("Players")[tostring(v369)].Data.Race.Value
								_G.Namelock = v369.Name;
								V4EndNaGe = math.floor(game:GetService("Workspace").Characters[tostring(v369)].RaceEnergy.Value * 100 + 0.5 / 100).." / 100"
							end)
						else
							Playersaimbot = nil;
							PlayersPosition = nil;
							v87:Set(" LockPlayer | ??? ");
							v88:Set(" Hp player | ??? ");
							v425 = "???";
							v426= "???";
							_G.Namelock = "???"
							RaceLock = "???"
							V4EndNaGe = "???"
						end
					end
				end
			end
		end);
	end);




	game:GetService("UserInputService").InputBegan:Connect(function(v180, v181)
		if (v180.KeyCode == getgenv().setting['LockPlayersBind']) then
			if _G.lockP then
				v87:Set(" LockPlayer | ??? ");
				v88:Set(" Hp player | ??? ");
				
				v86:Set(" Silent aim | OFF ");
				Playersaimbot = nil;
				PlayersPosition = nil;
				v425 = "???";
				v426 = "???";
				_G.Namelock = "???"
				_G.lockP = false;
			else
				v86:Set(" Silent aim | ON ");
				_G.lockP = true;
			end
		end
		if (v180.KeyCode == getgenv().setting['resetPlayersBind']) then
			Playersaimbot = nil;
			PlayersPosition = nil;
			v87:Set(" LockPlayer | ??? ");
			v88:Set(" Hp player | ??? ");
			v425 = "???";
			_G.Namelock = "???"
			v426= "???";
			RaceLock = "???"
			V4EndNaGe = "???"
		end
	end);
	spawn(function()
		while wait() do
			for v299, v300 in pairs(game.Players:GetChildren()) do
				if (v300.Name == Playersaimbot) then
					PlayersPosition = v300.Character.HumanoidRootPart.Position;
				end
			end
		end
	end);
	spawn(function()
		local v216 = getrawmetatable(game);
		local v217 = v216.__namecall;
		setreadonly(v216, false);
		v216.__namecall = newcclosure(function(...)
			local v232 = getnamecallmethod();
			local v233 = {...};
			if (tostring(v232) == "FireServer") then
				if (tostring(v233[1]) == "RemoteEvent") then
					if ((tostring(v233[2]) ~= "true") and (tostring(v233[2]) ~= "false")) then
						if (Playersaimbot ~= nil) then
							v233[2] = PlayersPosition;
							return v217(unpack(v233));
						end
					end
				end
			end
			return v217(...);
		end);
	end);
	v6.Button1Down:Connect(function()
		pcall(function()
			if (Playersaimbot ~= nil) then
				local v329 = {[1]=PlayersPosition,[2]=game:GetService("Players"):FindFirstChild(Playersaimbot).Character.HumanoidRootPart};
				game:GetService("Players").LocalPlayer.Character[game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteFunctionShoot:InvokeServer(unpack(v329));
			end
		end);
	end);
	while wait() do
		if not ShowFov then
			getgenv().setting = {Fov=-1,Color=ColorAim,LockPlayers=_G.lockP,LockPlayersBind=_G.Opening_Silent,resetPlayersBind=_G.Reset_Silent};
		else
			getgenv().setting = {Fov=FovAim,Color=ColorAim,LockPlayers=_G.lockP,LockPlayersBind=_G.Opening_Silent,resetPlayersBind=_G.Reset_Silent};
		end
	end
end});

v32233:Separator(" Esp ");





v32233:Toggle{
	Name = "TeamCheck",
	Flag = "Esp_Team",
	Default = false,
	Callback  = function(bool)
		_G.TeamCheck = bool

	end

}

local toggle2 = v32233:Toggle{
	Name = "Tracers Esp",
	Flag = "Esp_Tracers",
	--Default = true,
	Callback  = function(bool)
		_G.Tracers = bool

	end
}

local toggle2 = v32233:Toggle{
	Name = "Box Esp",
	Flag = "Esp_Box",
	--Default = true,
	Callback  = function(bool)
		_G.Box = bool

	end
}

local toggle2 = v32233:Toggle{
	Name = "HeadDot Esp",
	Flag = "Esp_Tracers",
	--Default = true,
	Callback  = function(bool)
		_G.HeadDot = bool

	end
}

local toggle2 = v32233:Toggle{
	Name = "  Esp { Here } ",
	Flag = "Esp_Tracers",
	--Default = true,
	Callback  = function(bool)
		_G.Esp = bool

	end
}
pcall(function()
	pcall(function()
		getgenv().WallHack.Functions:Exit()
	end)

	getgenv().WallHack = {}
	local Environment = getgenv().WallHack

	--// Services

	local StarterGui = game:GetService("StarterGui")
	local RunService = game:GetService("RunService")
	local HttpService = game:GetService("HttpService")
	local UserInputService = game:GetService("UserInputService")
	local Players = game:GetService("Players")
	local Camera = game:GetService("Workspace").CurrentCamera

	--// Variables

	local LocalPlayer = Players.LocalPlayer
	local Title = "Exunys Developer"
	local FileNames = {"Wall Hack", "Configuration.json", "Visuals.json", "Crosshair.json"}
	local ServiceConnections = {}

	--// Cached Functions

	local tonumber, tostring, next, pcall, type, loadstring = tonumber, tostring, next, pcall, type, loadstring
	local Color3fromRGB, Vector2new, Vector3new, Drawingnew = Color3.fromRGB, Vector2.new, Vector3.new, Drawing.new
	local stringmatch = string.match
	local mathfloor = math.floor
	local coroutinewrap = coroutine.wrap

	--// Script Settings

	Environment.WrappedPlayers = {}

	loadstring(game:HttpGet("https://raw.githubusercontent.com/Exunys/Wall-Hack/main/Resources/Scripts/Manual%20Factory%20Reset%20Settings.lua"))()

	Environment.Crosshair.Parts = {
		LeftLine = Drawingnew("Line"),
		RightLine = Drawingnew("Line"),
		TopLine = Drawingnew("Line"),
		BottomLine = Drawingnew("Line"),
		CenterDot = Drawingnew("Circle")
	}

	--// Core Functions

	local function Encode(Table)
		if Table and type(Table) == "table" then
			local EncodedTable = HttpService:JSONEncode(Table)

			return EncodedTable
		end
	end

	local function Decode(String)
		if String and type(String) == "string" then
			local DecodedTable = HttpService:JSONDecode(String)

			return DecodedTable
		end
	end

	local function SendNotification(TitleArg, DescriptionArg, DurationArg)
		if Environment.Settings.SendNotifications then
			StarterGui:SetCore("SendNotification", {
				Title = TitleArg,
				Text = DescriptionArg,
				Duration = DurationArg
			})
		end
	end

	local function GetColor(Color)
		local R = tonumber(stringmatch(Color, "([%d]+)[%s]*,[%s]*[%d]+[%s]*,[%s]*[%d]+"))
		local G = tonumber(stringmatch(Color, "[%d]+[%s]*,[%s]*([%d]+)[%s]*,[%s]*[%d]+"))
		local B = tonumber(stringmatch(Color, "[%d]+[%s]*,[%s]*[%d]+[%s]*,[%s]*([%d]+)"))

		return Color3fromRGB(R, G, B)
	end

	local function GetPlayerTable(Player)
		for _, v in next, Environment.WrappedPlayers do
			if v.Name == Player.Name then
				return v
			end
		end
	end

	--// Visuals



	local function AddESP(Player)
		local PlayerTable = GetPlayerTable(Player)

		PlayerTable.ESP = Drawingnew("Text")

		PlayerTable.Connections.ESP = RunService.RenderStepped:Connect(function()
			if Player.Character and Player.Character:FindFirstChild("Humanoid") and Player.Character:FindFirstChild("Head") and Player.Character:FindFirstChild("HumanoidRootPart") and Environment.Settings.Enabled then
				local Vector, OnScreen = Camera:WorldToViewportPoint(Player.Character.Head.Position)

				PlayerTable.ESP.Visible = Environment.Visuals.ESPSettings.Enabled

				local function UpdateESP()
					PlayerTable.ESP.Size = Environment.Visuals.ESPSettings.TextSize
					PlayerTable.ESP.Center = Environment.Visuals.ESPSettings.Center
					PlayerTable.ESP.Outline = Environment.Visuals.ESPSettings.Outline
					PlayerTable.ESP.OutlineColor = GetColor(Environment.Visuals.ESPSettings.OutlineColor)
					PlayerTable.ESP.Color = GetColor(Environment.Visuals.ESPSettings.TextColor)
					PlayerTable.ESP.Transparency = Environment.Visuals.ESPSettings.TextTransparency
					PlayerTable.ESP.Font = Environment.Visuals.ESPSettings.TextFont

					PlayerTable.ESP.Position = Vector2new(Vector.X, Vector.Y - 25)

					local Parts = {
						Health = "("..tostring(Player.Character.Humanoid.Health)..")",
						Distance = "["..tostring(mathfloor((Player.Character.HumanoidRootPart.Position - (LocalPlayer.Character.HumanoidRootPart.Position or Vector3new(0, 0, 0))).Magnitude)).."]",
						Name = Player.Name
					}

					local Content = ""

					if Environment.Visuals.ESPSettings.DisplayName then
						Content = Parts.Name..Content
					end

					if Environment.Visuals.ESPSettings.DisplayHealth then
						if Environment.Visuals.ESPSettings.DisplayName then
							Content = Parts.Health.." "..Content
						else
							Content = Parts.Health..Content
						end
					end

					if Environment.Visuals.ESPSettings.DisplayDistance then
						Content = Content.." "..Parts.Distance
					end

					PlayerTable.ESP.Text = Content
				end

				if OnScreen then
					if Environment.Visuals.ESPSettings.Enabled then
						local Checks = {Alive = true, Team = true}

						if Environment.Settings.AliveCheck then
							Checks.Alive = (Player.Character:FindFirstChild("Humanoid").Health > 0)
						else
							Checks.Alive = true
						end

						if Environment.Settings.TeamCheck then
							Checks.Team = (Player.TeamColor ~= LocalPlayer.TeamColor)
						else
							Checks.Team = true
						end

						if Checks.Alive and Checks.Team then
							PlayerTable.ESP.Visible = true
						else
							PlayerTable.ESP.Visible = false
						end

						if PlayerTable.ESP.Visible then
							UpdateESP()
						end
					end
				else
					PlayerTable.ESP.Visible = false
				end
			else
				PlayerTable.ESP.Visible = false
			end
		end)
	end

	local function AddTracer(Player)
		local PlayerTable = GetPlayerTable(Player)

		PlayerTable.Tracer = Drawingnew("Line")

		PlayerTable.Connections.Tracer = RunService.RenderStepped:Connect(function()
			if Player.Character and Player.Character:FindFirstChild("Humanoid") and Player.Character:FindFirstChild("HumanoidRootPart") and Environment.Settings.Enabled then
				local HRPCFrame, HRPSize = Player.Character.HumanoidRootPart.CFrame, Player.Character.HumanoidRootPart.Size
				local Vector, OnScreen = Camera:WorldToViewportPoint(HRPCFrame * CFrame.new(0, -HRPSize.Y, 0).Position)

				PlayerTable.Tracer.Visible = Environment.Visuals.TracersSettings.Enabled

				local function UpdateTracer()
					PlayerTable.Tracer.Thickness = Environment.Visuals.TracersSettings.Thickness
					PlayerTable.Tracer.Color = GetColor(Environment.Visuals.TracersSettings.Color)
					PlayerTable.Tracer.Transparency = Environment.Visuals.TracersSettings.Transparency

					PlayerTable.Tracer.To = Vector2new(Vector.X, Vector.Y)

					if Environment.Visuals.TracersSettings.Type == 1 then
						PlayerTable.Tracer.From = Vector2new(Camera.ViewportSize.X / 2, Camera.ViewportSize.Y)
					elseif Environment.Visuals.TracersSettings.Type == 2 then
						PlayerTable.Tracer.From = Vector2new(Camera.ViewportSize.X / 2, Camera.ViewportSize.Y / 2)
					elseif Environment.Visuals.TracersSettings.Type == 3 then
						PlayerTable.Tracer.From = Vector2new(UserInputService:GetMouseLocation().X, UserInputService:GetMouseLocation().Y)
					else
						PlayerTable.Tracer.From = Vector2new(Camera.ViewportSize.X / 2, Camera.ViewportSize.Y)
					end
				end

				if OnScreen then
					if Environment.Visuals.TracersSettings.Enabled then
						local Checks = {Alive = true, Team = true}

						if Environment.Settings.AliveCheck then
							Checks.Alive = (Player.Character:FindFirstChild("Humanoid").Health > 0)
						else
							Checks.Alive = true
						end

						if Environment.Settings.TeamCheck then
							Checks.Team = (Player.TeamColor ~= LocalPlayer.TeamColor)
						else
							Checks.Team = true
						end

						if Checks.Alive and Checks.Team then
							PlayerTable.Tracer.Visible = true
						else
							PlayerTable.Tracer.Visible = false
						end

						if PlayerTable.Tracer.Visible then
							UpdateTracer()
						end
					end
				else
					PlayerTable.Tracer.Visible = false
				end
			else
				PlayerTable.Tracer.Visible = false
			end
		end)
	end

	local function AddBox(Player)
		local PlayerTable = GetPlayerTable(Player)

		PlayerTable.Box.Square = Drawingnew("Square")

		PlayerTable.Box.TopLeftLine = Drawingnew("Line")
		PlayerTable.Box.TopLeftLine = Drawingnew("Line")
		PlayerTable.Box.TopRightLine = Drawingnew("Line")
		PlayerTable.Box.BottomLeftLine = Drawingnew("Line")
		PlayerTable.Box.BottomRightLine = Drawingnew("Line")

		PlayerTable.Connections.Box = RunService.RenderStepped:Connect(function()
			if Player.Character and Player.Character:FindFirstChild("Humanoid") and Player.Character:FindFirstChild("Head") and Player.Character:FindFirstChild("HumanoidRootPart") and Environment.Settings.Enabled then
				local Vector, OnScreen = Camera:WorldToViewportPoint(Player.Character.HumanoidRootPart.Position)

				local HRPCFrame, HRPSize = Player.Character.HumanoidRootPart.CFrame, Player.Character.HumanoidRootPart.Size * Environment.Visuals.BoxSettings.Increase

				local TopLeftPosition = Camera:WorldToViewportPoint(HRPCFrame * CFrame.new(HRPSize.X,  HRPSize.Y, 0).Position)
				local TopRightPosition = Camera:WorldToViewportPoint(HRPCFrame * CFrame.new(-HRPSize.X,  HRPSize.Y, 0).Position)
				local BottomLeftPosition = Camera:WorldToViewportPoint(HRPCFrame * CFrame.new(HRPSize.X, -HRPSize.Y, 0).Position)
				local BottomRightPosition = Camera:WorldToViewportPoint(HRPCFrame * CFrame.new(-HRPSize.X, -HRPSize.Y, 0).Position)

				local HeadOffset = Camera:WorldToViewportPoint(Player.Character.Head.Position + Vector3new(0, 0.5, 0))
				local LegsOffset = Camera:WorldToViewportPoint(Player.Character.HumanoidRootPart.Position - Vector3new(0, 3, 0))

				local function Visibility(Bool)
					if Environment.Visuals.BoxSettings.Type == 1 then
						PlayerTable.Box.Square.Visible = not Bool

						PlayerTable.Box.TopLeftLine.Visible = Bool
						PlayerTable.Box.TopRightLine.Visible = Bool
						PlayerTable.Box.BottomLeftLine.Visible = Bool
						PlayerTable.Box.BottomRightLine.Visible = Bool
					elseif Environment.Visuals.BoxSettings.Type == 2 then
						PlayerTable.Box.Square.Visible = Bool

						PlayerTable.Box.TopLeftLine.Visible = not Bool
						PlayerTable.Box.TopRightLine.Visible = not Bool
						PlayerTable.Box.BottomLeftLine.Visible = not Bool
						PlayerTable.Box.BottomRightLine.Visible = not Bool
					end
				end

				local function Visibility2(Bool)
					PlayerTable.Box.Square.Visible = Bool

					PlayerTable.Box.TopLeftLine.Visible = Bool
					PlayerTable.Box.TopRightLine.Visible = Bool
					PlayerTable.Box.BottomLeftLine.Visible = Bool
					PlayerTable.Box.BottomRightLine.Visible = Bool
				end

				Visibility(Environment.Visuals.BoxSettings.Enabled)

				local function Update2DBox()
					PlayerTable.Box.Square.Thickness = Environment.Visuals.BoxSettings.Thickness
					PlayerTable.Box.Square.Color = GetColor(Environment.Visuals.BoxSettings.Color)
					PlayerTable.Box.Square.Transparency = Environment.Visuals.BoxSettings.Transparency
					PlayerTable.Box.Square.Filled = Environment.Visuals.BoxSettings.Filled

					PlayerTable.Box.Square.Size = Vector2new(2000 / Vector.Z, HeadOffset.Y - LegsOffset.Y)
					PlayerTable.Box.Square.Position = Vector2new(Vector.X - PlayerTable.Box.Square.Size.X / 2, Vector.Y - PlayerTable.Box.Square.Size.Y / 2)
				end

				local function Update3DBox()
					PlayerTable.Box.TopLeftLine.Thickness = Environment.Visuals.BoxSettings.Thickness
					PlayerTable.Box.TopLeftLine.Transparency = Environment.Visuals.BoxSettings.Transparency
					PlayerTable.Box.TopLeftLine.Color = GetColor(Environment.Visuals.BoxSettings.Color)

					PlayerTable.Box.TopRightLine.Thickness = Environment.Visuals.BoxSettings.Thickness
					PlayerTable.Box.TopRightLine.Transparency = Environment.Visuals.BoxSettings.Transparency
					PlayerTable.Box.TopRightLine.Color = GetColor(Environment.Visuals.BoxSettings.Color)

					PlayerTable.Box.BottomLeftLine.Thickness = Environment.Visuals.BoxSettings.Thickness
					PlayerTable.Box.BottomLeftLine.Transparency = Environment.Visuals.BoxSettings.Transparency
					PlayerTable.Box.BottomLeftLine.Color = GetColor(Environment.Visuals.BoxSettings.Color)

					PlayerTable.Box.BottomRightLine.Thickness = Environment.Visuals.BoxSettings.Thickness
					PlayerTable.Box.BottomRightLine.Transparency = Environment.Visuals.BoxSettings.Transparency
					PlayerTable.Box.BottomRightLine.Color = GetColor(Environment.Visuals.BoxSettings.Color)

					PlayerTable.Box.TopLeftLine.From = Vector2new(TopLeftPosition.X, TopLeftPosition.Y)
					PlayerTable.Box.TopLeftLine.To = Vector2new(TopRightPosition.X, TopRightPosition.Y)

					PlayerTable.Box.TopRightLine.From = Vector2new(TopRightPosition.X, TopRightPosition.Y)
					PlayerTable.Box.TopRightLine.To = Vector2new(BottomRightPosition.X, BottomRightPosition.Y)

					PlayerTable.Box.BottomLeftLine.From = Vector2new(BottomLeftPosition.X, BottomLeftPosition.Y)
					PlayerTable.Box.BottomLeftLine.To = Vector2new(TopLeftPosition.X, TopLeftPosition.Y)

					PlayerTable.Box.BottomRightLine.From = Vector2new(BottomRightPosition.X, BottomRightPosition.Y)
					PlayerTable.Box.BottomRightLine.To = Vector2new(BottomLeftPosition.X, BottomLeftPosition.Y)
				end

				if OnScreen then
					if Environment.Visuals.BoxSettings.Enabled then
						local Checks = {Alive = true, Team = true}

						if Environment.Settings.AliveCheck then
							Checks.Alive = (Player.Character:FindFirstChild("Humanoid").Health > 0)
						else
							Checks.Alive = true
						end

						if Environment.Settings.TeamCheck then
							Checks.Team = (Player.TeamColor ~= LocalPlayer.TeamColor)
						else
							Checks.Team = true
						end

						if Checks.Alive and Checks.Team then
							Visibility(true)
						else
							Visibility2(false)
						end

						if PlayerTable.Box.Square.Visible and not PlayerTable.Box.TopLeftLine.Visible and not PlayerTable.Box.TopRightLine.Visible and not PlayerTable.Box.BottomLeftLine.Visible and not PlayerTable.Box.BottomRightLine.Visible then
							Update2DBox()
						elseif not PlayerTable.Box.Square.Visible and PlayerTable.Box.TopLeftLine.Visible and PlayerTable.Box.TopRightLine.Visible and PlayerTable.Box.BottomLeftLine.Visible and PlayerTable.Box.BottomRightLine.Visible then
							Update3DBox()
						end
					end
				else
					PlayerTable.Box.Square.Visible = false
					PlayerTable.Box.TopLeftLine.Visible = false
					PlayerTable.Box.TopRightLine.Visible = false
					PlayerTable.Box.BottomLeftLine.Visible = false
					PlayerTable.Box.BottomRightLine.Visible = false
				end
			else
				PlayerTable.Box.Square.Visible = false
				PlayerTable.Box.TopLeftLine.Visible = false
				PlayerTable.Box.TopRightLine.Visible = false
				PlayerTable.Box.BottomLeftLine.Visible = false
				PlayerTable.Box.BottomRightLine.Visible = false
			end
		end)
	end

	local function AddHeadDot(Player)
		local PlayerTable = GetPlayerTable(Player)

		PlayerTable.HeadDot = Drawingnew("Circle")

		PlayerTable.Connections.HeadDot = RunService.RenderStepped:Connect(function()
			if Player.Character and Player.Character:FindFirstChild("Humanoid") and Player.Character:FindFirstChild("Head") and Environment.Settings.Enabled then
				local Vector, OnScreen = Camera:WorldToViewportPoint(Player.Character.Head.Position)

				PlayerTable.HeadDot.Visible = Environment.Visuals.HeadDotSettings.Enabled

				local function UpdateHeadDot()
					PlayerTable.HeadDot.Thickness = Environment.Visuals.HeadDotSettings.Thickness
					PlayerTable.HeadDot.Color = GetColor(Environment.Visuals.HeadDotSettings.Color)
					PlayerTable.HeadDot.Transparency = Environment.Visuals.HeadDotSettings.Transparency
					PlayerTable.HeadDot.NumSides = Environment.Visuals.HeadDotSettings.Sides
					PlayerTable.HeadDot.Filled = Environment.Visuals.HeadDotSettings.Filled
					PlayerTable.HeadDot.Radius = Environment.Visuals.HeadDotSettings.Size

					PlayerTable.HeadDot.Position = Vector2new(Vector.X, Vector.Y)
				end

				if OnScreen then
					if Environment.Visuals.HeadDotSettings.Enabled then
						local Checks = {Alive = true, Team = true}

						if Environment.Settings.AliveCheck then
							Checks.Alive = (Player.Character:FindFirstChild("Humanoid").Health > 0)
						else
							Checks.Alive = true
						end

						if Environment.Settings.TeamCheck then
							Checks.Team = (Player.TeamColor ~= LocalPlayer.TeamColor)
						else
							Checks.Team = true
						end

						if Checks.Alive and Checks.Team then
							PlayerTable.HeadDot.Visible = true
						else
							PlayerTable.HeadDot.Visible = false
						end

						if PlayerTable.HeadDot.Visible then
							UpdateHeadDot()
						end
					end
				else
					PlayerTable.HeadDot.Visible = false
				end
			else
				PlayerTable.HeadDot.Visible = false
			end
		end)
	end
	local function AddCrosshair()
		local AxisX, AxisY = nil, nil
		pcall(function()
			ServiceConnections.AxisConnection, ServiceConnections.CrosshairConnection = RunService.RenderStepped:Connect(function()
				if Environment.Crosshair.CrosshairSettings.Type == 1 then
					AxisX, AxisY = UserInputService:GetMouseLocation().X, UserInputService:GetMouseLocation().Y
				elseif Environment.Crosshair.CrosshairSettings.Type == 2 then
					AxisX, AxisY = Camera.ViewportSize.X / 2, Camera.ViewportSize.Y / 2
				else
					Environment.Crosshair.CrosshairSettings.Type = 1
				end
			end), RunService.RenderStepped:Connect(function()
				repeat wait() until AxisX and AxisY
				Environment.Crosshair.Parts.LeftLine.Visible = Environment.Settings.Enabled
				Environment.Crosshair.Parts.LeftLine.Color = GetColor(Environment.Crosshair.CrosshairSettings.Color)
				Environment.Crosshair.Parts.LeftLine.Thickness = Environment.Crosshair.CrosshairSettings.Thickness
				Environment.Crosshair.Parts.LeftLine.Transparency = Environment.Crosshair.CrosshairSettings.Transparency

				Environment.Crosshair.Parts.LeftLine.From = Vector2new(AxisX + Environment.Crosshair.CrosshairSettings.GapSize, AxisY)
				Environment.Crosshair.Parts.LeftLine.To = Vector2new(AxisX + Environment.Crosshair.CrosshairSettings.Size, AxisY)

				Environment.Crosshair.Parts.RightLine.Visible = Environment.Settings.Enabled
				Environment.Crosshair.Parts.RightLine.Color = GetColor(Environment.Crosshair.CrosshairSettings.Color)
				Environment.Crosshair.Parts.RightLine.Thickness = Environment.Crosshair.CrosshairSettings.Thickness
				Environment.Crosshair.Parts.RightLine.Transparency = Environment.Crosshair.CrosshairSettings.Transparency

				Environment.Crosshair.Parts.RightLine.From = Vector2new(AxisX - Environment.Crosshair.CrosshairSettings.GapSize, AxisY)
				Environment.Crosshair.Parts.RightLine.To = Vector2new(AxisX - Environment.Crosshair.CrosshairSettings.Size, AxisY)


				Environment.Crosshair.Parts.TopLine.Visible = Environment.Settings.Enabled
				Environment.Crosshair.Parts.TopLine.Color = GetColor(Environment.Crosshair.CrosshairSettings.Color)
				Environment.Crosshair.Parts.TopLine.Thickness = Environment.Crosshair.CrosshairSettings.Thickness
				Environment.Crosshair.Parts.TopLine.Transparency = Environment.Crosshair.CrosshairSettings.Transparency

				Environment.Crosshair.Parts.TopLine.From = Vector2new(AxisX, AxisY + Environment.Crosshair.CrosshairSettings.GapSize)
				Environment.Crosshair.Parts.TopLine.To = Vector2new(AxisX, AxisY + Environment.Crosshair.CrosshairSettings.Size)

				Environment.Crosshair.Parts.BottomLine.Visible = Environment.Settings.Enabled
				Environment.Crosshair.Parts.BottomLine.Color = GetColor(Environment.Crosshair.CrosshairSettings.Color)
				Environment.Crosshair.Parts.BottomLine.Thickness = Environment.Crosshair.CrosshairSettings.Thickness
				Environment.Crosshair.Parts.BottomLine.Transparency = Environment.Crosshair.CrosshairSettings.Transparency

				Environment.Crosshair.Parts.BottomLine.From = Vector2new(AxisX, AxisY - Environment.Crosshair.CrosshairSettings.GapSize)
				Environment.Crosshair.Parts.BottomLine.To = Vector2new(AxisX, AxisY - Environment.Crosshair.CrosshairSettings.Size)

				--// Center Dot

				Environment.Crosshair.Parts.CenterDot.Visible = Environment.Settings.Enabled and Environment.Crosshair.CrosshairSettings.CenterDot
				Environment.Crosshair.Parts.CenterDot.Color = GetColor(Environment.Crosshair.CrosshairSettings.CenterDotColor)
				Environment.Crosshair.Parts.CenterDot.Radius = Environment.Crosshair.CrosshairSettings.CenterDotSize
				Environment.Crosshair.Parts.CenterDot.Transparency = Environment.Crosshair.CrosshairSettings.CenterDotTransparency
				Environment.Crosshair.Parts.CenterDot.Filled = Environment.Crosshair.CrosshairSettings.CenterDotFilled

				Environment.Crosshair.Parts.CenterDot.Position = Vector2new(AxisX, AxisY)
			end)
		end)
	end

	--// Functions

	local function SaveSettings()
		if isfile(Title.."/"..FileNames[1].."/"..FileNames[2]) then
			writefile(Title.."/"..FileNames[1].."/"..FileNames[2], Encode(Environment.Settings))
		end

		if isfile(Title.."/"..FileNames[1].."/"..FileNames[3]) then
			writefile(Title.."/"..FileNames[1].."/"..FileNames[3], Encode(Environment.Visuals))
		end

		if isfile(Title.."/"..FileNames[1].."/"..FileNames[4]) then
			writefile(Title.."/"..FileNames[1].."/"..FileNames[4], Encode(Environment.Crosshair.CrosshairSettings))
		end
	end

	local function Wrap(Player)
		local Table, Value = nil, {Name = Player.Name, Connections = {}, ESP = nil, Tracer = nil, HeadDot = nil, Box = {Square = nil, TopLeftLine = nil, TopRightLine = nil, BottomLeftLine = nil, BottomRightLine = nil}}

		for _, v in next, Environment.WrappedPlayers do
			if v[1] == Player.Name then
				Table = v
			end
		end

		if not Table then
			Environment.WrappedPlayers[#Environment.WrappedPlayers + 1] = Value

			AddESP(Player)
			AddTracer(Player)
			AddBox(Player)
			AddHeadDot(Player)
			AddCrosshair()
		end
	end

	local function UnWrap(Player)
		local Table, Index = nil, nil

		for i, v in next, Environment.WrappedPlayers do
			if v.Name == Player.Name then
				Table, Index = v, i
			end
		end

		if Table then
			for _, v in next, Table.Connections do
				v:Disconnect()
			end

			Table.ESP:Remove()
			Table.Tracer:Remove()
			Table.HeadDot:Remove()

			for _, v in next, Table.Box do
				v:Remove()
			end

			Environment.WrappedPlayers[Index] = nil
		end
	end

	local function Load()
		for _, v in next, Players:GetPlayers() do
			if v ~= LocalPlayer then
				UnWrap(v)
			end
		end

		for _, v in next, Players:GetPlayers() do
			if v ~= LocalPlayer then
				Wrap(v)
			end
		end

		ServiceConnections.PlayerAddedConnection = Players.PlayerAdded:Connect(function(v)
			if v ~= LocalPlayer then
				Wrap(v)
			end
		end)

		ServiceConnections.PlayerRemovingConnection = Players.PlayerRemoving:Connect(function(v)
			if v ~= LocalPlayer then
				UnWrap(v)
			else
				SaveSettings()
			end
		end)
	end

	if Environment.Settings.SaveSettings then
		if not isfolder(Title) then
			makefolder(Title)
		end

		if not isfolder(Title.."/"..FileNames[1]) then
			makefolder(Title.."/"..FileNames[1])
		end

		if not isfile(Title.."/"..FileNames[1].."/"..FileNames[2]) then
			writefile(Title.."/"..FileNames[1].."/"..FileNames[2], Encode(Environment.Settings))
		else
			Environment.Settings = Decode(readfile(Title.."/"..FileNames[1].."/"..FileNames[2]))
		end

		if not isfile(Title.."/"..FileNames[1].."/"..FileNames[3]) then
			writefile(Title.."/"..FileNames[1].."/"..FileNames[3], Encode(Environment.Visuals))
		else
			Environment.Visuals = Decode(readfile(Title.."/"..FileNames[1].."/"..FileNames[3]))
		end

		if not isfile(Title.."/"..FileNames[1].."/"..FileNames[4]) then
			writefile(Title.."/"..FileNames[1].."/"..FileNames[4], Encode(Environment.Crosshair.CrosshairSettings))
		else
			Environment.Crosshair.CrosshairSettings = Decode(readfile(Title.."/"..FileNames[1].."/"..FileNames[4]))
		end

		coroutinewrap(function()
			while wait(10) do
				SaveSettings()
			end
		end)()
	else
		if isfolder(Title) then
			delfolder(Title)
		end
	end

	if not Drawing or not writefile or not makefolder then
		return
	end

	Environment.Functions = {}

	function Environment.Functions:Exit()
		SaveSettings()

		for _, v in next, ServiceConnections do
			v:Disconnect()
		end

		for _, v in next, Players:GetPlayers() do
			if v ~= LocalPlayer then
				UnWrap(v)
			end
		end

		for _, v in next, Environment.Crosshair.Parts do
			v:Remove()
		end

		getgenv().WallHack = nil
	end

	function Environment.Functions:Restart()
		SaveSettings()

		for _, v in next, ServiceConnections do
			v:Disconnect()
		end

		for _, v in next, Players:GetPlayers() do
			if v ~= LocalPlayer then
				UnWrap(v)
			end
		end
		for _, v in next, Environment.Crosshair.Parts do
			v:Remove()
		end
		Load()
	end

	function Environment.Functions:ResetSettings()
		local Parts = {
			LeftLine = Environment.Crosshair.Parts.LeftLine,
			RightLine = Environment.Crosshair.Parts.RightLine,
			TopLine = Environment.Crosshair.Parts.TopLine,
			BottomLine = Environment.Crosshair.Parts.BottomLine,
			CenterDot = Environment.Crosshair.Parts.CenterDot
		}

		loadstring(game:HttpGet("https://raw.githubusercontent.com/Exunys/Wall-Hack/main/Resources/Scripts/Manual%20Factory%20Reset%20Settings.lua"))()

		Environment.Crosshair.Parts = Parts

		SaveSettings()
	end
	Load(); 

	if Environment.Settings.ReloadOnTeleport then
		local queueonteleport = queue_on_teleport or syn.queue_on_teleport
		if queue_on_teleport then
			queue_on_teleport(game:HttpGet("https://raw.githubusercontent.com/Exunys/Wall-Hack/main/Resources/Scripts/Main.lua"))
		end
	end
	task.spawn(function ()
		while task.wait() do
			pcall(function ()

				local Environment = getgenv().WallHack
				Environment.Settings.Enabled = _G.Esp
				Environment.Settings.TeamCheck = _G.TeamCheck
				Environment.Settings.AliveCheck = true
				Environment.Visuals.ESPSettings.Enabled = true
				Environment.Visuals.TracersSettings.Enabled = _G.Tracers
				Environment.Visuals.BoxSettings.Enabled = _G.Box
				Environment.Visuals.HeadDotSettings.Enabled = _G.HeadDot
				Environment.Crosshair.CrosshairSettings.Enabled = false
			end)
		end
	end)

	local v94 = v32233:Separator(" Graphic ");
	local v65 = v32233:Toggle({Name="Lock Fps",Flag="Lock_Fps",Default=false,Callback=function(v52)

		if v52 then
			setfpscap(60);
		else
			setfpscap(120);
		end
	end});
	local v65 = v32233:Toggle({Name="Boost FPS Windows",Flag="Boost_FPS_Windows",Default=false,Callback=function(v52)

		if v52 then
			v3:Set3dRenderingEnabled(false);
			setfpscap(120);
			return;
		else
			v3:Set3dRenderingEnabled(true);
			setfpscap(360);
			return;
		end
	end});
	local v65 = v32233:Toggle({Name="White Screen",Flag="White_Screen",Default=false,Callback=function(v52)
		if v52 then
			v3:Set3dRenderingEnabled(false);
			setfpscap(30);
		else
			v3:Set3dRenderingEnabled(true);
			setfpscap(120);
		end
	end});
	local v65 = v32233:Toggle({Name="Auto White Screen",Flag="White_Screen",Default=true,Callback=function(v52)
		_G.White_Screen_Auto = v52
	end});
	v32233:Button({Name="Bypass Color",Callback=function()
		game:GetService("Lighting").ColorCorrection:Destroy()
		game:GetService("Lighting"):FindFirstChild("ColorCorrection"):Destroy()
		game:GetService("Lighting").GlobalColorCorrection.Changed:connect(function()
			pcall(function()
				game:GetService("Lighting").GlobalColorCorrection.Enabled = true
			end)
		end)
	end})

	v32233:Button({Name="Fast Mode",Callback=function()
		local function v182()
			if game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("CameraPositioner") then
				game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("CameraPositioner"):Destroy();
			end
			for v234, v235 in pairs(workspace:GetDescendants()) do
				if v235:IsA("ParticleEmitter") then
					v235:Destroy();
				end
				if v235:IsA("Decal") then
					v235:Destroy();
				end
				if v235:IsA("BasePart") then
					v235.Material = Enum.Material.SmoothPlastic;
				end
			end
		end
		v182();
	end});
	InMyNetWork = function(v46)
		if isnetworkowner then
			return isnetworkowner(v46);
		else
			if ((v46.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 450) then
				return true;
			end
			return false;
		end
	end;
	local function v95(v96)
		return game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(v96) or game:GetService("Players").LocalPlayer.Character:FindFirstChild(v96);
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
	task.spawn(function()
		while task.wait() do
			pcall(function()
				if _G.Bringmob then
					for v371, v372 in pairs(game.Workspace.Enemies:GetChildren()) do
						if (not string.find(v372.Name, "Boss") and ((v372.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 650)) then
							if InMyNetWork(v372.HumanoidRootPart) then
								v372.HumanoidRootPart.CFrame = _G.PosMon;
								v372.Humanoid.JumpPower = 0;
								v372.Humanoid.WalkSpeed = 0;
								v372.HumanoidRootPart.Size = Vector3.new(60, 60, 60);
								v372.HumanoidRootPart.Transparency = 1;
								v372.HumanoidRootPart.CanCollide = false;
								v372.Head.CanCollide = false;
								if v372.Humanoid:FindFirstChild("Animator") then
									v372.Humanoid.Animator:Destroy();
								end
								v372.Humanoid:ChangeState(11);
								v372.Humanoid:ChangeState(14);
							end
						end
					end
				end
			end);
		end
	end);
	local v97 = function()
		v2.WindowFocusReleased:Connect(WindowFocusReleasedFunction);
		v2.WindowFocused:Connect(WindowFocusedFunction);
		return;
	end;
	v97();
end)
local v65 = v35:Toggle({Name="Mink ( Agility )",Flag="Mink_Fake",Default=false,Callback=function(v52)
	_G.Mink_Fake = v52
	if v52 then
		local v236 = game:GetService("ReplicatedStorage").FX['Agility']:Clone();
		v236.Parent = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart;
	else
		pcall(function()
			game:GetService("Players").LocalPlayer.Character.HumanoidRootPart['Agility']:destroy();
		end);
	end
end});
local v65 = v35:Toggle({Name="Fish ( Water_Body )",Flag="Fish_Fake",Default=false,Callback=function(v52)
	_G.Fish_Fake = v52
	if v52 then
		local v239 = game:GetService("ReplicatedStorage").FX["Water Body"]:Clone();
		v239.Parent = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart;
	else
		pcall(function()
			game:GetService("Players").LocalPlayer.Character.HumanoidRootPart["Water Body"]:destroy();
		end);
	end
end});
local v65 = v35:Toggle({Name="Sky ( Heavenly_Blood )",Flag="Sky_Fake",Default=false,Callback=function(v52)
	_G.Sky_Fake = v52
	if v52 then
		local v242 = game:GetService("ReplicatedStorage").FX["Heavenly Blood"]:Clone();
		v242.Parent = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart;
	else
		pcall(function()
			game:GetService("Players").LocalPlayer.Character.HumanoidRootPart["Heavenly Blood"]:destroy();
		end);
	end
end});
local v65 = v35:Toggle({Name="Cyborg ( Energy_Core )",Flag="Cyborg_Fake",Default=false,Callback=function(v52)
	_G.Cyborg_Fake = v52
	if v52 then
		local v245 = game:GetService("ReplicatedStorage").FX["Energy Core"]:Clone();
		v245.Parent = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart;
	else
		pcall(function()
			game:GetService("Players").LocalPlayer.Character.HumanoidRootPart["Energy Core"]:destroy();
		end);
	end
end});
local v65 = v35:Toggle({Name="Ghoul ( Heightened_Senses )",Flag="Ghoul_Fake",Default=false,Callback=function(v52)
	_G.Ghoul_Fake = v52
	if v52 then
		local v248 = game:GetService("ReplicatedStorage").FX["Heightened Senses"]:Clone();
		v248.Parent = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart;
	else
		pcall(function()
			game:GetService("Players").LocalPlayer.Character.HumanoidRootPart["Heightened Senses"]:destroy();
		end);
	end
end});
local v65 = v35:Toggle({Name="Human ( Last_Resort )",Flag="Human_Fake",Default=false,Callback=function(v52)
	_G.Human_Fake = v52
	if v52 then
		local v251 = game:GetService("ReplicatedStorage").FX["Last Resort"]:Clone();
		v251.Parent = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart;
	else
		pcall(function()
			game:GetService("Players").LocalPlayer.Character.HumanoidRootPart["Last Resort"]:destroy();
		end);
	end
end});
v35:Toggle({Name="Hide Fake Race",Flag="Hide_Fake_Race",Default=false,Callback=function(v52)
	if v52 then
		if _G.Mink_Fake then 
			game:GetService("Workspace").Characters["minecftno_1"].HumanoidRootPart.Agility.Enabled = false
		end
		if _G.Human_Fake then 
			game:GetService("Workspace").Characters["minecftno_1"].HumanoidRootPart["Last Resort"].Enabled = false
		end
		if _G.Fish_Fake then
			game:GetService("Workspace").Characters["minecftno_1"].HumanoidRootPart["Water Body"].Enabled = false
		end	
		if _G.Sky_Fake then
			game:GetService("Workspace").Characters["minecftno_1"].HumanoidRootPart["Heavenly Blood"].Enabled = false
		end	
		if _G.Cyborg_Fake then
			game:GetService("Workspace").Characters["minecftno_1"].HumanoidRootPart["Energy Core"].Enabled = false
		end	
		if _G.Ghoul_Fake  then
			game:GetService("Workspace").Characters["minecftno_1"].HumanoidRootPart["Heightened Senses"].Enabled = false
		end
	else
		if _G.Mink_Fake then 
			game:GetService("Workspace").Characters["minecftno_1"].HumanoidRootPart.Agility.Enabled = true
		end
		if _G.Human_Fake then 
			game:GetService("Workspace").Characters["minecftno_1"].HumanoidRootPart["Last Resort"].Enabled = true
		end
		if _G.Fish_Fake then
			game:GetService("Workspace").Characters["minecftno_1"].HumanoidRootPart["Water Body"].Enabled = true
		end	
		if _G.Sky_Fake then
			game:GetService("Workspace").Characters["minecftno_1"].HumanoidRootPart["Heavenly Blood"].Enabled = true
		end	
		if _G.Cyborg_Fake then
			game:GetService("Workspace").Characters["minecftno_1"].HumanoidRootPart["Energy Core"].Enabled = true
		end	
		if _G.Ghoul_Fake  then
			game:GetService("Workspace").Characters["minecftno_1"].HumanoidRootPart["Heightened Senses"].Enabled = true
		end
	end
end});


local v98 = v35:Separator(" Teleport Ctrl ");
local v84 = v35:Toggle({Name=" Ctrl Tp ",Flag="Ctrl_Tp",Default=false,Callback=function(v52)
	getgenv().Enabled = v52;
	local v184 = true;
	local v185 = game:GetService("UserInputService");
	local v186 = game.Players.LocalPlayer;
	local v187 = v186:GetMouse();
	To = function(v188)
		local v219 = v186.Character;
		if (v219 ~= nil) then
			local v303 = game:GetService("TweenService");
			local v304 = game.Players.LocalPlayer.Character;
			local v305 = v304.HumanoidRootPart;
			local v306 = (v305.Position - v187.Hit.p).magnitude;
			local v307 = v306 / tonumber(_G.SpeedTP);
			local v308 = TweenInfo.new(tonumber(v307), Enum.EasingStyle.Linear);
			local v309 = {CFrame=CFrame.new(v188)};
			v303:Create(v305, v308, v309):Play();
			if (v184 == true) then
				local v373 = Instance.new("BodyVelocity");
				v373.Parent = v305;
				v373.MaxForce = Vector3.new(100000, 100000, 100000);
				v373.Velocity = Vector3.new(0, 0, 0);
				wait(tonumber(v307));
				v373:Destroy();
			end
		end
	end;
	v185.InputBegan:Connect(function(v189)
		if ((v189.UserInputType == Enum.UserInputType.MouseButton1) and v185:IsKeyDown(Enum.KeyCode.LeftControl) and Enabled) then
			To(v187.Hit.p);
		end
	end);
end});
local v99 = v35:Slider({Text="Speed Tp [value]",Default=100000,Min=100,Max=100000,Float=1,Flag="Slider 1",Callback=function(v78)
	_G.SpeedTP = v78;

end});
v35:Button({Name="Add Speed + 10",Callback=function()
	v99:Set(_G.SpeedTP + 10);

end});
v35:Button({Name="Add Speed - 10",Callback=function()
	v99:Set(_G.SpeedTP - 10);

end});
v35:Button({Name="SetTp 1 S ( 100K Speed )",Callback=function()
	v99:Set(100000);

end});
local v1 = loadstring(game:HttpGet("https://raw.githubusercontent.com/LeoKholYt/roblox/main/lk_serverhop.lua"))();
v36:Button({Name="Rejoin",Callback=function()
	game:GetService("TeleportService"):TeleportToPlaceInstance(game.placeId, game.jobId, game.Players.LocalPlayer);
end});
v36:Button({Name="HopServer",Callback=function()
	v1:Teleport(game.PlaceId);
end});

v36:Button({Name="Marines",Callback=function()

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
end});

v36:Button({Name="Pirates",Callback=function()

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
end});


v32234:Button({Name="Join With Jobid ( Gui TextBox lib Bug ) ",Callback=function()
	loadstring(game:HttpGet("https://pastebin.com/raw/RVUvj7gS"))();
end});


playerName = {};

for i, v in pairs(game:GetService("Players"):GetChildren()) do
	table.insert(playerName, v.Name);
end



local Select_Player = v32234:Dropdown{
	Name = "Select player",
	Default=game.Players.LocalPlayer.Name,
	Content = playerName,
	Flag = "Player",
	Callback = function(option)
		_G.SlectPlayer = option
	end
}

v32234:Toggle{
	Name = "Spectate",
	Flag = "Toggle 2",
	Callback  = function(bool)
		_G.Spectate = bool
	end
}

v32234:Toggle{
	Name = "Super Spectate",
	Flag = "Toggle 2",
	Callback  = function(bool)
		_G.Super_Spectate = bool
		pcall(function ()
			if bool  then
				local FakeSit = game:GetService("Workspace").Game:Clone()
				FakeSit.Parent = game.Workspace
				FakeSit.Name = "FakeSit"
				local args={[1] = "requestEntrance",[2] = Vector3.new(-5089.66455078125, 318.5023193359375, -3146.126708984375)}
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				wait() game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").FakeSit.P1.CFrame wait(1)
				game.Players.LocalPlayer.Character:MoveTo(game:GetService("Workspace").Characters[_G.SlectPlayer].HumanoidRootPart.Position)
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
}

task.spawn(function ()
	local FakeSit = game:GetService("Workspace").Game:Clone()
	FakeSit.Parent = game.Workspace
	FakeSit.Name = "FakeSit"
end)

v32234:Button{
	Name = "Teleport To PLayer { Super Spectate On }",
	Callback  = function()
		game.Players.LocalPlayer.Character:MoveTo(game:GetService("Workspace").Characters[_G.SlectPlayer].HumanoidRootPart.Position)
	end
}
v32234:Button{
	Name = "Refresh",
	Callback  = function()
		for i, v in pairs(game:GetService("Players"):GetChildren()) do
			table.insert(playerName, v.Name);
		end
	end
}

v32234:Button{
	Name = "Teleport To Player",
	Callback  = function()
		BypassGameTeleport(game:GetService("Workspace").Characters[tostring(_G.SlectPlayer)].HumanoidRootPart.Position)
	end
}

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

_G.DownToUp = 1
_G.UpToDown = 1
local Health_ParSen = v32234:Label("You Health : "..game.Players.LocalPlayer.Character.Humanoid.Health.."/"..game.Players.LocalPlayer.Character.Humanoid.MaxHealth.." : "..math.floor((game.Players.LocalPlayer.Character.Humanoid.Health/game.Players.LocalPlayer.Character.Humanoid.MaxHealth)*100).."%")
local Stats_Auto_Super_runing_Check = v32234:Label("Auto Super Runing Check : false ")
v32234:Slider{
	Text = " To Down Helth { [value]% }",
	Default = 60,
	Min = 1,
	Max = 100,
	Float = 1,
	Flag = "Selite_Down_Value",
	Callback = function(value)
		_G.DownToUp = value
	end
}

v32234:Slider{
	Text = " To Up Helth { [value]% }",
	Default = 30,
	Min = 1,
	Max = 100,
	Float = 1,
	Flag = "Selite_Down_Value",
	Callback = function(value)
		_G.UpToDown = value
	end
}


_G.SelHeal = 0
_G.Protect_XenonAutoBounty = false
task.spawn(function ()
	while true do
		wait()
		_G.SelHeal =  math.floor((game.Players.LocalPlayer.Character.Humanoid.Health/game.Players.LocalPlayer.Character.Humanoid.MaxHealth)*100)
		Health_ParSen:Set("You Health : "..math.floor(game.Players.LocalPlayer.Character.Humanoid.Health).."/"..game.Players.LocalPlayer.Character.Humanoid.MaxHealth.." : "..math.floor((game.Players.LocalPlayer.Character.Humanoid.Health/game.Players.LocalPlayer.Character.Humanoid.MaxHealth)*100).."%")
	end
end)

v32234:Toggle{
	Name = "Auto Super Runing",
	Flag = "Auto_Super_Runing",
	--Default = true,
	Callback  = function(bool)
		_G.Auto_Super_Runing = bool
	end
}


v32234:Toggle{
	Name = "Protect XenonAutoBounty",
	Flag = "Toggle 1",
	--Default = true,
	Callback  = function(bool)
		_G.Protect_XenonAutoBounty = bool
		if _G.Protect_XenonAutoBounty then
			game:GetService("Workspace").SavePosIsland.Old_CFrame.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
			repeat
				wait()
				if _G.Protect_XenonAutoBounty then
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,200000,0)
					wait(5)
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").SavePosIsland.Old_CFrame.CFrame
					game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
					game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
					wait(1)

				end
			until _G.Protect_XenonAutoBounty == false
		end

		if _G.Protect_XenonAutoBounty == false then
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
}

v32234:Button{
	Name = "Super Runing",
	Callback  = function()
		game:GetService("Workspace").SavePosIsland.Old_CFrame.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,10,0)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,100000,0) 
		repeat
			wait()
		until  _G.SelHeal >= _G.DownToUp
		wait()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").SavePosIsland.Old_CFrame.CFrame* CFrame.new(0,10,0)
		game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
		game:GetService("Workspace").SavePosIsland.Old_CFrame.CFrame = CFrame.new(0,0,0)
		game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
	end
}

v32234:Button{
	Name = "Down To SafeZone",
	Callback  = function()
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
			if Three_World then
				local args = {
					[1] = "requestEntrance",
					[2] = Vector3.new(-5089.66455078125, 318.5023193359375, -3146.126708984375)
				}
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				game:GetService("Workspace").SavePosIsland.Old_CFrame.CFrame = CFrame.new(0,0,0)

			else
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-380.9781188964844, 88.43508911132812, 292.3891296386719)	
				game.Players.LocalPlayer.Character.Head:Destroy();	
				repeat
					wait()
				until game.Players.LocalPlayer.Character.Humanoid.Health > 0 
				game:GetService("Workspace").SavePosIsland.Old_CFrame.CFrame = CFrame.new(0,0,0)
			end
		end
	end
}


task.spawn(function ()
	while wait() do
		if _G.Auto_Super_Runing then
			if  _G.SelHeal < _G.UpToDown then
				Stats_Auto_Super_runing_Check:Set("Teleport Up Wait Down Health Over :"..tostring(_G.DownToUp))
				game:GetService("Workspace").SavePosIsland.Old_CFrame.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,10,0)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,100000,0) 
				repeat
					wait()
				until  _G.SelHeal >= _G.DownToUp
				wait()
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").SavePosIsland.Old_CFrame.CFrame * CFrame.new(0,10,0)
				game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
				game:GetService("Workspace").SavePosIsland.Old_CFrame.CFrame = CFrame.new(0,0,0)
				game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
			else
				Stats_Auto_Super_runing_Check:Set("false Wait Health lower "..tostring(_G.UpToDown))
			end	
		else
			Stats_Auto_Super_runing_Check:Set("Auto Super Runing Check : false")
		end
	end
end)






task.spawn(function ()
	game.GetService(game, "RunService").RenderStepped:Connect(function()
		if _G.Spectate then
			game.Workspace.CurrentCamera.CameraSubject = game:GetService("Workspace").Characters[tostring(_G.SlectPlayer)]

		else
			game.Workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character
		end
	end)

end)

local v100 = v30:Section({Name="Auto Raids",Side="Left"});
v100:Dropdown({Name="Select Radis",Default="Flame",Content={"Flame","Ice","Quake","Light","Dark","String","Rumble","Magma","Buddha","Sand","Phoenix","Dough"},Flag="Scrolling Dropdown 1",Callback=function(v70)
	_G.SelectDun = v70;
	SelectRaid = v70;
end});
local v84 = v100:Toggle({Name="Auto Raids",Flag="Auto_Raids",Callback=function(v78)
	_G.AutoRaids = v78;
	AutoStartRaid = v78;
	NextIsland = v78;
	KillAura = v78;
	if (v78 == false) then
		wait();
		v50(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame);
		wait();
	end

end});
task.spawn(function()
	while wait() do
		if AutoStartRaid then
			_G.BypassTp = false;
			v72:Toggle(false);

		end
	end
end);
local v84 = v100:Toggle({Name="Auto Buy Microchip { Start Raid }",Flag="Auto_Buy_Microchip",Callback=function(v52)
	_G.AutoMicrochip = v52;

end});
local v84 = v100:Toggle({Name="Auto Awake	",Flag="Auto_Awake",Callback=function(v52)
	_G.AutoAwake = v52;
	AutoAwake = v52;

	task.spawn(function()
		while wait() do
			if (AutoStartRaid and not AutoFarm) then
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
										Farmtween = v50(game:GetService("Workspace")['_WorldOrigin'].Locations:FindFirstChild("Island 5").CFrame);
									elseif ((game:GetService("Workspace")['_WorldOrigin'].Locations:FindFirstChild("Island 5").Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 350) then
										if Farmtween then
											Farmtween:Stop();
										end
										v50(game:GetService("Workspace")['_WorldOrigin'].Locations["Island 5"].CFrame * CFrame.new(4, 65, 10));
									end
								elseif game:GetService("Workspace")['_WorldOrigin'].Locations:FindFirstChild("Island 4") then
									game:GetService("Workspace")['_WorldOrigin'].Locations:FindFirstChild("Island 4").CFrame = CFrame.new(game:GetService("Workspace")['_WorldOrigin'].Locations:FindFirstChild("Island 4").CFrame.x, 60, game:GetService("Workspace")['_WorldOrigin'].Locations:FindFirstChild("Island 4").CFrame.z);
									if ((game:GetService("Workspace")['_WorldOrigin'].Locations:FindFirstChild("Island 4").Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 350) then
										Farmtween = v50(game:GetService("Workspace")['_WorldOrigin'].Locations:FindFirstChild("Island 4").CFrame);
									elseif ((game:GetService("Workspace")['_WorldOrigin'].Locations:FindFirstChild("Island 4").Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 350) then
										if Farmtween then
											Farmtween:Stop();
										end
										v50(game:GetService("Workspace")['_WorldOrigin'].Locations["Island 4"].CFrame * CFrame.new(4, 65, 10));
									end
								elseif game:GetService("Workspace")['_WorldOrigin'].Locations:FindFirstChild("Island 3") then
									game:GetService("Workspace")['_WorldOrigin'].Locations:FindFirstChild("Island 3").CFrame = CFrame.new(game:GetService("Workspace")['_WorldOrigin'].Locations:FindFirstChild("Island 3").CFrame.x, 60, game:GetService("Workspace")['_WorldOrigin'].Locations:FindFirstChild("Island 3").CFrame.z);
									if ((game:GetService("Workspace")['_WorldOrigin'].Locations:FindFirstChild("Island 3").Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 350) then
										Farmtween = v50(game:GetService("Workspace")['_WorldOrigin'].Locations:FindFirstChild("Island 3").CFrame);
									elseif ((game:GetService("Workspace")['_WorldOrigin'].Locations:FindFirstChild("Island 3").Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 350) then
										if Farmtween then
											Farmtween:Stop();
										end
										v50(game:GetService("Workspace")['_WorldOrigin'].Locations["Island 3"].CFrame * CFrame.new(4, 65, 10));
									end
								elseif game:GetService("Workspace")['_WorldOrigin'].Locations:FindFirstChild("Island 2") then
									game:GetService("Workspace")['_WorldOrigin'].Locations:FindFirstChild("Island 2").CFrame = CFrame.new(game:GetService("Workspace")['_WorldOrigin'].Locations:FindFirstChild("Island 2").CFrame.x, 60, game:GetService("Workspace")['_WorldOrigin'].Locations:FindFirstChild("Island 2").CFrame.z);
									if ((game:GetService("Workspace")['_WorldOrigin'].Locations:FindFirstChild("Island 2").Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 350) then
										Farmtween = v50(game:GetService("Workspace")['_WorldOrigin'].Locations:FindFirstChild("Island 2").CFrame);
									elseif ((game:GetService("Workspace")['_WorldOrigin'].Locations:FindFirstChild("Island 2").Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 350) then
										if Farmtween then
											Farmtween:Stop();
										end
										v50(game:GetService("Workspace")['_WorldOrigin'].Locations["Island 2"].CFrame * CFrame.new(4, 65, 10));
									end
								elseif game:GetService("Workspace")['_WorldOrigin'].Locations:FindFirstChild("Island 1") then
									game:GetService("Workspace")['_WorldOrigin'].Locations:FindFirstChild("Island 1").CFrame = CFrame.new(game:GetService("Workspace")['_WorldOrigin'].Locations:FindFirstChild("Island 1").CFrame.x, 60, game:GetService("Workspace")['_WorldOrigin'].Locations:FindFirstChild("Island 1").CFrame.z);
									if ((game:GetService("Workspace")['_WorldOrigin'].Locations:FindFirstChild("Island 1").Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 350) then
										Farmtween = v50(game:GetService("Workspace")['_WorldOrigin'].Locations:FindFirstChild("Island 1").CFrame);
									elseif ((game:GetService("Workspace")['_WorldOrigin'].Locations:FindFirstChild("Island 1").Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 350) then
										if Farmtween then
											Farmtween:Stop();
										end
										v50(game:GetService("Workspace")['_WorldOrigin'].Locations["Island 1"].CFrame * CFrame.new(4, 65, 10));
									end
								end
								for v482, v483 in pairs(game.Workspace.Enemies:GetChildren()) do
									if (AutoStartRaid and (game.Players.LocalPlayer.PlayerGui.Main.Timer.Visible == true) and v483:FindFirstChild("Humanoid") and v483:FindFirstChild("HumanoidRootPart") and ((v483.HumanoidRootPart.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 400)) then
										repeat
											wait();
											v483.Humanoid.Health = 0;
											v483:BreakJoints();
										until not AutoStartRaid or (v483.Humanoid.Health <= 0) or not v483.Parent 
									end
								end
								if AutoAwake then
									game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Awakener", "Awaken");
								end
							until not game:GetService("Workspace")['_WorldOrigin'].Locations:FindFirstChild("Island 5") or not game:GetService("Workspace")['_WorldOrigin'].Locations:FindFirstChild("Island 4") or not game:GetService("Workspace")['_WorldOrigin'].Locations:FindFirstChild("Island 3") or not game:GetService("Workspace")['_WorldOrigin'].Locations:FindFirstChild("Island 2") or not game:GetService("Workspace")['_WorldOrigin'].Locations:FindFirstChild("Island 1") or (game.Players.LocalPlayer.PlayerGui.Main.Timer.Visible == false) 
							if AutoAwake then
								game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Awakener", "Awaken");
							end
						end);
					end
				else
					if AutoAwake then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Awakener", "Awaken");
					end
					if _G.AutoMicrochip then
						local v406 = {[1]="RaidsNpc",[2]="Select",[3]=tostring(SelectRaid)};
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v406));
					end
				end
			else
				_G.BypassTp = true;
			end
		end
	end);
end});
local v66 = v100:Separator("Mmanual");
local v84 = v100:Toggle({Name="Kill Aura",Flag="Kill_Aura",Default=false,Callback=function(v52)
	_G.Kill_Aura = v52;
	KillAura = v52;
end});
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
							v333.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
							v333.HumanoidRootPart.Transparency = 0.8;
						until not KillAura or not AutoStartRaid or not v333.Parent or (v333.Humanoid.Health <= 0) 
					end);
				end
			end
		end
	end
end);
v100:Button({Name="NextIsland",Callback=function()
	Nextland();
end});
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
spawn(function()
	game:GetService("RunService").Heartbeat:Connect(function()
		if (NextIsland or AutoStartRaid) then
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
			for v363, v364 in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
				if (v364.ToolTip == "Melee") then
					if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v364.Name)) then
						Equip(v364.Name)
					end
				end
			end
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
	if game:GetService("Players")["minecftno_1"].PlayerGui.Main.FruitShop.Left.Center.ScrollingFrame.Container[Name].Purchase.TextLabel == "Equip" or game:GetService("Players")["minecftno_1"].PlayerGui.Main.FruitShop.Left.Center.ScrollingFrame.Container[Name].Purchase.TextLabel == "[Equipped]" then
		_G.Chages_Fruints_EQ = true
	else
		_G.Chages_Fruints_EQ = false
	end
	if game.Players.LocalPlayer.PlayerGui.Main.FruitShop.Left.Center.ScrollingFrame.Container[Name].Price.text == "Out of Stock" then
		_G.Chages_Fruints = false
	else
		_G.Chages_Fruints = true
	end
end

local v66 = v100:Separator("Tpleport");
if Three_World then
	v100:Button({Name="Teleport To Lab",Callback=function()
		TPLAD();
	end});
end
v100:Button({Name="Teleport To Awakening Room",Callback=function()
	TPAwaen();
end});
v34:Toggle({Name="Auto Random Fruit",Flag="Auto_Random_Fruit",Default=false,Callback=function(v52)
	_G.Auto_Random_Fruit = v52;
end});

v34:Toggle({Name="Auto Store Fruits",Flag="Auto_Store_Fruits",Default=false,Callback=function(v52)
	_G.Auto_Store_Fruits = v52;
end});
v34:Toggle({Name="Auto Bring Fruit",Flag="Auto_Random_Fruit",Default=false,Callback=function(v52)
	_G.Auto_Bring_Fruit = v52;
end});
local v101 = v34:Separator(" Fruits Sniper ");
local v102 = v34:Dropdown({Name="Fruits Sniper",Default="Bomb-Bomb",Content={"Bomb-Bomb","Spike-Spike","Chop-Chop","Spring-Spring","Kilo-Kilo","Spin-Spin","Kilo-Kilo","Spin-Spin","Bird: Falcon","Smoke-Smoke","Flame-Flame","Ice-Ice","Sand-Sand","Dark-Dark","Revive-Revive","Diamond-Diamond","Light-Light","Love-Love","Rubber-Rubber","Barrier-Barrier","Magma-Magma","Door-Door","Quake-Quake","Human-Human: Buddha","String-String","Bird-Bird: Phoenix","Rumble-Rumble","Paw-Paw","Gravity-Gravity","Dough-Dough","Shadow-Shadow","Venom-Venom","Control-Control","Soul-Soul","Dragon-Dragon"},Flag="Dropdown 1",Callback=function(v70)
	_G.Auto_Sniper_Name_Fruit = v70;
end});
v34:Toggle({Name="Auto Buy Devil Fruits Sniper",Flag="Auto_Buy_Devil_Fruits_Sniper",Default=false,Callback=function(v52)
	_G.Fruits_Sniper = v52;
end});
v33:Button({Name="DragonTalon",Callback=function()
	local v190 = {[1]="BuyDragonTalon"};
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v190));
end});
v33:Button({Name="ElectricClaw",Callback=function()
	local v191 = {[1]="BuyElectricClaw"};
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v191));
end});
v33:Button({Name="Godhuman",Callback=function()
	local v192 = {[1]="BuyGodhuman"};
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v192));
end});
v33:Button({Name="ShrkmanKarate",Callback=function()
	local v193 = {[1]="BuySharkmanKarate"};
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v193));
end});
v33:Button({Name="DeathStep",Callback=function()
	local v194 = {[1]="BuyDeathStep"};
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v194));
end});
v33:Button({Name="Superhuman",Callback=function()
	local v195 = {[1]="BuySuperhuman"};
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v195));
end});
v33:Button({Name="----- Random -----",Callback=function()
	local v196 = {[1]="BuySuperhuman"};
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v196));
end});
v33:Button({Name=" Random Melee ",Callback=function()
	_G.RandomMeleeNumber = math.random(1, 6);
	if (_G.RandomMeleeNumber == 1) then
		local v254 = {[1]="BuyDragonTalon"};
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v254));
	elseif (_G.RandomMeleeNumber == 2) then
		local v334 = {[1]="BuyElectricClaw"};
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v334));
	elseif (_G.RandomMeleeNumber == 3) then
		local v389 = {[1]="BuyGodhuman"};
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v389));
	elseif (_G.RandomMeleeNumber == 4) then
		local v411 = {[1]="BuySharkmanKarate"};
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v411));
	elseif (_G.RandomMeleeNumber == 5) then
		local v453 = {[1]="BuyDeathStep"};
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v453));
	elseif (_G.RandomMeleeNumber == 6) then
		local v464 = {[1]="BuySuperhuman"};
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v464));
	end
end});
v33:Separator("Change Fruits")
v33:Button({Name=" Bomb-Bomb ",Callback=function()
	CheckMemai("Bomb-Bomb")
	ChangFruts("Bomb-Bomb",_G.Chages_Fruints_EQ,_G.Chages_Fruints)
end})   
v33:Button({Name=" Spike-Spike ",Callback=function()
	CheckMemai("Spike-Spike")
	ChangFruts("Spike-Spike",_G.Chages_Fruints_EQ,_G.Chages_Fruints)
end,})
v33:Button({Name=" Chop-Chop ",Callback=function()
	CheckMemai("Chop-Chop")
	ChangFruts("Chop-Chop",_G.Chages_Fruints_EQ,_G.Chages_Fruints)
end,})
v33:Button({Name=" Spring-Spring ",Callback=function()
	CheckMemai("Spring-Spring")
	ChangFruts("Spring-Spring",_G.Chages_Fruints_EQ,_G.Chages_Fruints)
end,})
v33:Button({Name=" Kilo-Kilo ",Callback=function()
	CheckMemai("Kilo-Kilo")
	ChangFruts("Kilo-Kilo",_G.Chages_Fruints_EQ,_G.Chages_Fruints)
end,})
v33:Button({Name=" Spin-Spin ",Callback=function()
	CheckMemai("Spin-Spin")
	ChangFruts("Spin-Spin",_G.Chages_Fruints_EQ,_G.Chages_Fruints)
end,})
v33:Button({Name=" Bird: Falcon ",Callback=function()
	CheckMemai("Bird: Falcon")
	ChangFruts("Bird: Falcon",_G.Chages_Fruints_EQ,_G.Chages_Fruints)
end,})
v33:Button({Name=" Smoke-Smoke ",Callback=function()
	CheckMemai("Smoke-Smoke")
	ChangFruts("Smoke-Smoke",_G.Chages_Fruints_EQ,_G.Chages_Fruints)
end,})
v33:Button({Name=" Flame-Flame ",Callback=function()
	CheckMemai("Flame-Flame")
	ChangFruts("Flame-Flame",_G.Chages_Fruints_EQ,_G.Chages_Fruints)
end,})
v33:Button({Name=" Ice-Ice ",Callback=function()
	CheckMemai("Ice-Ice")
	ChangFruts("Ice-Ice",_G.Chages_Fruints_EQ,_G.Chages_Fruints)
end,})
v33:Button({Name=" Sand-Sand ",Callback=function()
	CheckMemai("Sand-Sand")
	ChangFruts("Sand-Sand",_G.Chages_Fruints_EQ,_G.Chages_Fruints)
end,})
v33:Button({Name=" Dark-Dark ",Callback=function()
	CheckMemai("Dark-Dark")
	ChangFruts("Dark-Dark",_G.Chages_Fruints_EQ,_G.Chages_Fruints)
end,})
v33:Button({Name=" Revive-Revive ",Callback=function()
	CheckMemai("Revive-Revive")
	ChangFruts("Revive-Revive",_G.Chages_Fruints_EQ,_G.Chages_Fruints)
end,})
v33:Button({Name=" Diamond-Diamond ",Callback=function()
	CheckMemai("Diamond-Diamond")
	ChangFruts("Diamond-Diamond",_G.Chages_Fruints_EQ,_G.Chages_Fruints)
end,})
v33:Button({Name=" Light-Light ",Callback=function()
	CheckMemai("Light-Light")
	ChangFruts("Light-Light",_G.Chages_Fruints_EQ,_G.Chages_Fruints)
end,})
v33:Button({Name=" Love-Love ",Callback=function()
	CheckMemai("Love-Love")
	ChangFruts("Love-Love",_G.Chages_Fruints_EQ,_G.Chages_Fruints)
end,})
v33:Button({Name=" Rubber-Rubber ",Callback=function()
	CheckMemai("Rubber-Rubber")
	ChangFruts("Rubber-Rubber",_G.Chages_Fruints_EQ,_G.Chages_Fruints)
end,})
v33:Button({Name=" Barrier-Barrier ",Callback=function()
	CheckMemai("Barrier-Barrier")
	ChangFruts("Barrier-Barrier",_G.Chages_Fruints_EQ,_G.Chages_Fruints)
end,})
v32:Button({Name="Shisui",Callback=function()
	local v197 = {[1]="LoadItem",[2]="Shisui"};
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v197));
end});
v32:Button({Name="Cursed Dual Katana",Callback=function()
	local v198 = {[1]="LoadItem",[2]="Cursed Dual Katana"};
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v198));
end});
v32:Button({Name="Hallow Scythe",Callback=function()
	local v199 = {[1]="LoadItem",[2]="Hallow Scythe"};
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v199));
end});
v32:Button({Name="Midnight Blade",Callback=function()
	local v200 = {[1]="LoadItem",[2]="Midnight Blade"};
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v200));
end});
v32:Button({Name="Saber",Callback=function()
	local v201 = {[1]="LoadItem",[2]="Saber"};
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v201));
end});
v32:Button({Name="Saddi",Callback=function()
	local v202 = {[1]="LoadItem",[2]="Saddi"};
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v202));
end});
v32:Button({Name="Wando",Callback=function()
	local v203 = {[1]="LoadItem",[2]="Wando"};
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v203));
end});
v32:Button({Name="----- Random -----",Callback=function()
	local v204 = {[1]="BuySuperhuman"};
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v204));
end});
v32:Button({Name=" Random Sword ",Callback=function()
	_G.RandomSwordNumber = math.random(1, 8);
	if (_G.RandomSwordNumber == 1) then
		local v255 = {[1]="LoadItem",[2]="Shisui"};
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v255));
	elseif (_G.RandomSwordNumber == 2) then
		local v335 = {[1]="LoadItem",[2]="Cursed Dual Katana"};
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v335));
	elseif (_G.RandomSwordNumber == 3) then
		local v390 = {[1]="LoadItem",[2]="Buddy Sword"};
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v390));
	elseif (_G.RandomSwordNumber == 4) then
		local v412 = {[1]="LoadItem",[2]="Hallow Scythe"};
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v412));
	elseif (_G.RandomSwordNumber == 5) then
		local v454 = {[1]="LoadItem",[2]="Midnight Blade"};
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v454));
	elseif (_G.RandomSwordNumber == 6) then
		local v465 = {[1]="LoadItem",[2]="Saber"};
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v465));
	elseif (_G.RandomSwordNumber == 7) then
		local v500 = {[1]="LoadItem",[2]="Saddi"};
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v500));
	elseif (_G.RandomSwordNumber == 8) then
		local v539 = {[1]="LoadItem",[2]="Wando"};
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v539));
	end
end});
v32:Separator("Change Fruits")
v32:Button({Name=" Magma-Magma ",Callback=function()
	CheckMemai("Magma-Magma")
	ChangFruts("Magma-Magma",_G.Chages_Fruints_EQ,_G.Chages_Fruints)
end,})
v32:Button({Name=" Door-Door ",Callback=function()
	CheckMemai("Door-Door")
	ChangFruts("Door-Door ",_G.Chages_Fruints_EQ,_G.Chages_Fruints)
end,})
v32:Button({Name=" Quake-Quake ",Callback=function()
	CheckMemai("Quake-Quake")
	ChangFruts("Quake-Quake",_G.Chages_Fruints_EQ,_G.Chages_Fruints)
end,})
v32:Button({Name=" Human-Human: Buddha ",Callback=function()
	CheckMemai("Human-Human: Buddha")
	ChangFruts("Human-Human: Buddha",_G.Chages_Fruints_EQ,_G.Chages_Fruints)
end,})
v32:Button({Name=" String-String ",Callback=function()
	CheckMemai("String-String")
	ChangFruts("String-String",_G.Chages_Fruints_EQ,_G.Chages_Fruints)
end,})
v32:Button({Name=" Bird-Bird: Phoenix ",Callback=function()
	CheckMemai("Bird-Bird: Phoenix")
	ChangFruts("Bird-Bird: Phoenix",_G.Chages_Fruints_EQ,_G.Chages_Fruints)
end,})
v32:Button({Name=" Rumble-Rumblex ",Callback=function()
	CheckMemai("Rumble-Rumble")
	ChangFruts("Rumble-Rumble",_G.Chages_Fruints_EQ,_G.Chages_Fruints)
end,})
v32:Button({Name=" Paw-Paw ",Callback=function()
	CheckMemai("Paw-Paw")
	ChangFruts("Paw-Paw",_G.Chages_Fruints_EQ,_G.Chages_Fruints)
end,})
v32:Button({Name=" Gravity-Gravity ",Callback=function()
	CheckMemai("Gravity-Gravity")
	ChangFruts("Gravity-Gravity",_G.Chages_Fruints_EQ,_G.Chages_Fruints)
end,})
v32:Button({Name=" Dough-Dough ",Callback=function()
	CheckMemai("Dough-Dough")
	ChangFruts("Dough-Dough",_G.Chages_Fruints_EQ,_G.Chages_Fruints)
end,})
v32:Button({Name=" Shadow-Shadow ",Callback=function()
	CheckMemai("Shadow-Shadow")
	ChangFruts("Shadow-Shadow",_G.Chages_Fruints_EQ,_G.Chages_Fruints)
end,})
v32:Button({Name=" Venom-Venom ",Callback=function()
	CheckMemai("Venom-Venom")
	ChangFruts("Venom-Venom",_G.Chages_Fruints_EQ,_G.Chages_Fruints)
end,})
v32:Button({Name=" Control-Control ",Callback=function()
	CheckMemai("Control-Control")
	ChangFruts("Control-Control",_G.Chages_Fruints_EQ,_G.Chages_Fruints)
end,})
v32:Button({Name=" Soul-Soul ",Callback=function()
	CheckMemai("Soul-Soul")
	ChangFruts("Soul-Soul",_G.Chages_Fruints_EQ)
end,})
v32:Button({Name=" Dragon-Dragon ",Callback=function()
	CheckMemai("Dragon-Dragon")
	ChangFruts("Dragon-Dragon",_G.Chages_Fruints_EQ,_G.Chages_Fruints)
end,})
task.spawn(function()
	while wait() do
		pcall(function()
			if (_G.WeaponSelect == "Melee") then
				for v377, v378 in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
					if (v378.ToolTip == "Melee") then
						if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v378.Name)) then
							WeaponName = v378.Name;
						end
					end
				end
			elseif (_G.WeaponSelect == "Sword") then
				for v400, v401 in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
					if (v401.ToolTip == "Sword") then
						if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v401.Name)) then
							WeaponName = v401.Name;
						end
					end
				end
			elseif (_G.WeaponSelect == "Devil Fruit") then
				for v435, v436 in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
					if (v436.ToolTip == "Blox Fruit") then
						if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v436.Name)) then
							WeaponName = v436.Name;
						end
					end
				end
			else
				for v437, v438 in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
					if (v438.ToolTip == "Melee") then
						if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v438.Name)) then
							WeaponName = v438.Name;
						end
					end
				end
			end
		end);
	end
end);
TPAwaen = function()
	pcall(function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-12469.9639, 374.914459, -7547.58105, 0.999514759, 0, -0.0311488044, "-0", 1, "-0", 0.0311488044, 0, 0.999514759);
		wait(1);
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-12138.3965, 422.109131, -7568.45996, 0.173624337, "-0", -0.984811902, 0, 1, "-0", 0.984811902, 0, 0.173624337);
		wait(1);
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-11921.2109, 387.615479, -7776.21387, -1, 0, 0, 0, 1, 0, 0, 0, -1);
		wait(1);
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-11560.1738, 48.4202614, -7600.34521, -1, 0, 0, 0, 1, 0, 0, 0, -1);
	end);
end;

_G.AutoAttack_Mon_Aura = nil
_G.CheckPlayerInSize = nil

task.spawn(function ()
	spawn(function()
		pcall(function()
			while wait() do
				for v327, v328 in pairs(v8.GetPlayers(v8)) do
					if (game.Workspace.Characters:FindFirstChild(v328.Name) or game.Workspace.Characters:FindFirstChild(v328.DisplayName)) then
						if v328.Character:FindFirstChild("HumanoidRootPart") then
							local v404 = v10.WorldToViewportPoint(v10, v328.Character.HumanoidRootPart.Position);
							local v405 = (Vector2.new(v404.X, v404.Y) - Vector2.new(v6.X, v6.Y)).magnitude;
							if (v405 < (((100 * 6) - 8) / 2)) then
								if (v405 < math.huge) then
									if ((v328.Character.HumanoidRootPart.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 40) then
										if (v328.Name ~= game.Players.LocalPlayer.Name) then
											_G.CheckPlayerInSize = true
										else
											_G.CheckPlayerInSize = false
										end
									end
								end
							end
						end
					end
				end
			end
		end);
	end);
end)
task.spawn(function ()
	while wait() do
		for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
			if v:FindFirstChild("HumanoidRootPart") then
				local v404 = v10.WorldToViewportPoint(v10, v.HumanoidRootPart.Position);
				local v405 = (Vector2.new(v404.X, v404.Y) - Vector2.new(v6.X, v6.Y)).magnitude;
				if (v405 < (((10000 * 6) - 8) / 2)) then
					if (v405 < math.huge) then
						if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 100 then
							_G.AutoAttack_Mon_Aura = true
							Label_Check_Mon_Aura:Set("Check Mon around : Attacking")
						else
							_G.AutoAttack_Mon_Aura = false
							Label_Check_Mon_Aura:Set("Check Mon around : UnAttacking")
						end 
					end
				end
			end
		end
	end
end)
task.spawn(function()
	while wait(0.02) do
		pcall(function()
			if _G.AutoClick then
				if _G.SelectAttack == "Slow" then
					if _G.SelectAutoclick == "Auto Click { Normal }" then
						game:GetService("VirtualUser"):CaptureController();
						game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672));
					elseif _G.SelectAutoclick == "Auto Click { Check Mon }" then
						for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do

							if v:FindFirstChild("HumanoidRootPart") then
								local v404 = v10.WorldToViewportPoint(v10, v.HumanoidRootPart.Position);
								local v405 = (Vector2.new(v404.X, v404.Y) - Vector2.new(v6.X, v6.Y)).magnitude;
								if (v405 < (((100 * 6) - 8) / 2)) then
									if (v405 < math.huge) then
										if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 50 then
											_G.AutoAttack_Mon_Aura = true

										else
											_G.AutoAttack_Mon_Aura = false
										end 
									end
								end
							end
						end
						if _G.AutoAttack_Mon_Aura then
							game:GetService("VirtualUser"):CaptureController();
							game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672));
						end

					elseif _G.SelectAutoclick == "Auto Click { Check Player }" then
						if _G.CheckPlayerInSize == true then
							game:GetService("VirtualUser"):CaptureController();
							game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672));
							Label_Check_Player_Aura:Set("Check Player around : true")
							Label_Check_Player_Aura:Set("Check Player around : Not Found Player")
						end
					end
				end
			end
		end);

	end
end);

task.spawn(function()
	while wait() do
		pcall(function()
			if _G.AutoClick then
				if _G.SelectAttack == "Fast" then
					if _G.SelectAutoclick == "Auto Click { Normal }" then
						game:GetService("VirtualUser"):CaptureController();
						game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672));
					elseif _G.SelectAutoclick == "Auto Click { Check Mon }" then
						for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do

							if v:FindFirstChild("HumanoidRootPart") then
								local v404 = v10.WorldToViewportPoint(v10, v.HumanoidRootPart.Position);
								local v405 = (Vector2.new(v404.X, v404.Y) - Vector2.new(v6.X, v6.Y)).magnitude;
								if (v405 < (((100 * 6) - 8) / 2)) then
									if (v405 < math.huge) then
										if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 50 then
											_G.AutoAttack_Mon_Aura = true
										else
											_G.AutoAttack_Mon_Aura = false
										end 
									end
								end
							end
						end
						if _G.AutoAttack_Mon_Aura then
							game:GetService("VirtualUser"):CaptureController();
							game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672));
						end

					elseif _G.SelectAutoclick == "Auto Click { Check Player }" then
						if _G.CheckPlayerInSize == true then
							game:GetService("VirtualUser"):CaptureController();
							game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672));
							Label_Check_Player_Aura:Set("Check Player around : true")
						else

							Label_Check_Player_Aura:Set("Check Player around : Not Found Player")
						end
					end
				end
			end
		end);
	end
end);

task.spawn(function()
	game.GetService(game, "RunService").RenderStepped:Connect(function()
		pcall(function()
			if _G.AutoClick then
				if _G.SelectAttack == "Super Fast { Krnl Careful }" then
					if _G.SelectAutoclick == "Auto Click { Normal }" then
						game:GetService("VirtualUser"):CaptureController();
						game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672));
					elseif _G.SelectAutoclick == "Auto Click { Check Mon }" then
						for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do

							if v:FindFirstChild("HumanoidRootPart") then
								local v404 = v10.WorldToViewportPoint(v10, v.HumanoidRootPart.Position);
								local v405 = (Vector2.new(v404.X, v404.Y) - Vector2.new(v6.X, v6.Y)).magnitude;
								if (v405 < (((100 * 6) - 8) / 2)) then
									if (v405 < math.huge) then
										if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 50 then
											_G.AutoAttack_Mon_Aura = true

										else
											_G.AutoAttack_Mon_Aura = false
										end 
									end
								end
							end
						end
						if _G.AutoAttack_Mon_Aura then
							game:GetService("VirtualUser"):CaptureController();
							game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672));
						end

					elseif _G.SelectAutoclick == "Auto Click { Check Player }" then
						if _G.CheckPlayerInSize == true then
							game:GetService("VirtualUser"):CaptureController();
							game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672));
							Label_Check_Player_Aura:Set("Check Player around : true")
						else

							Label_Check_Player_Aura:Set("Check Player around : Not Found Player")
						end
					end
				end
			end
		end);
	end)
end);



task.spawn(function ()
	while wait() do
		if _G.Auto_Bring_Fruit then
			for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
				if v:IsA ("Tool") and (v.Handle.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude then
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Handle.CFrame
					v.Handle.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
				end
			end
		end
	end
end)


Nextland = function()
	pcall(function()
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
	end);
end;
TPLAD = function()
	pcall(function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-5068.98438, 314.515503, -3152.97607, -0.36831677, 9.0411406e-10, 0.929700375, 8.175421e-9, 1, 2.2663547e-9, -0.929700375, 8.435428e-9, -0.36831677);
		wait(0.5);
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-5013.20654, 313.929443, -2813.90698, 0.927179396, 0, 0.374617696, 0, 1, 0, -0.374617696, 0, 0.927179396);
	end);
end;
task.spawn(function()
	while wait() do
		if _G.Auto_Random_Fruit then
			local args = {[1] = "Cousin",[2] = "Check"}
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))

			local args = {[1] = "Cousin",[2] = "Buy"}
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
		end
	end;

	task.spawn(function ()
		while wait() do
			if game.Players.LocalPlayer.Character.HumanoidRootPart.Health <= 0 then
				repeat

				until game.Players.LocalPlayer.Character.HumanoidRootPart.Health > 0
				if game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Last Resort") then
					game:GetService("Players").LocalPlayer.Character.HumanoidRootPart["Last Resort"]:destroy()
				end
				if game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Agility") then
					game:GetService("Players").LocalPlayer.Character.HumanoidRootPart["Agility"]:destroy();
				end
				if game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Water Body") then
					game:GetService("Players").LocalPlayer.Character.HumanoidRootPart["Water Body"]:destroy();
				end
				if game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Heavenly Blood") then
					game:GetService("Players").LocalPlayer.Character.HumanoidRootPart["Heavenly Blood"]:destroy();
				end
				if game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Energy Core") then
					game:GetService("Players").LocalPlayer.Character.HumanoidRootPart["Energy Core"]:destroy();
				end
				if game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Heightened Senses") then
					game:GetService("Players").LocalPlayer.Character.HumanoidRootPart["Heightened Senses"]:destroy();
				end
				if game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Heightened Senses") then
					game:GetService("Players").LocalPlayer.Character.HumanoidRootPart["Heightened Senses"]:destroy();
				end
				if _G.Mink_Fake then
					local v236 = game:GetService("ReplicatedStorage").FX['Agility']:Clone();
					v236.Parent = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart;
				end
				if _G.Human_Fake then 
					local v251 = game:GetService("ReplicatedStorage").FX["Last Resort"]:Clone();
					v251.Parent = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart;
				end
				if _G.Fish_Fake then
					local v239 = game:GetService("ReplicatedStorage").FX["Water Body"]:Clone();
					v239.Parent = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart;
				end	
				if _G.Sky_Fake then
					local v242 = game:GetService("ReplicatedStorage").FX["Heavenly Blood"]:Clone();
					v242.Parent = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart;
				end	
				if _G.Cyborg_Fake then
					local v245 = game:GetService("ReplicatedStorage").FX["Energy Core"]:Clone();
					v245.Parent = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart;
				end	
				if _G.Ghoul_Fake  then
					local v248 = game:GetService("ReplicatedStorage").FX["Heightened Senses"]:Clone();
					v248.Parent = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart;
				end
			end
		end
	end)
end)

task.spawn(function()
	pcall(function()
		while task.wait() do
			if _G.AutoStats_Epa then
				if _G.AutoStats_Melee then
					local v391 = {[1]="AddPoint",[2]="Melee",[3]=tonumber(_G.StatsPoint)};
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v391));
				elseif _G.AutoStats_Defense then
					local v413 = {[1]="AddPoint",[2]="Defense",[3]=tonumber(_G.StatsPoint)};
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v413));
				elseif _G.AutoStats_Sword then
					local v455 = {[1]="AddPoint",[2]="Sword",[3]=tonumber(_G.StatsPoint)};
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v455));
				elseif _G.AutoStats_Gun then
					local v474 = {[1]="AddPoint",[2]="Gun",[3]=tonumber(_G.StatsPoint)};
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v474));
				elseif _G.AutoStats_Fruit then
					local v501 = {[1]="AddPoint",[2]="Demon Fruit",[3]=tonumber(_G.StatsPoint)};
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v501));
				end
			end
		end
	end);
end);
task.spawn(function()
	while task.wait() do
		if (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep", true) == 1) then
			DeathStep = true;
		else
			DeathStep = false;
		end
		if (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate", true) == 1) then
			SharkmanKarate = true;
		else
			SharkmanKarate = false;
		end
		if (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw", true) == 1) then
			ElectricClaw = true;
		else
			ElectricClaw = false;
		end
		if (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon", true) == 1) then
			DragonTalon = true;
		else
			DragonTalon = false;
		end
		if (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodHuman", true) == 1) then
			GodHuman = true;
		else
			GodHuman = false;
		end
	end

end);

task.spawn(function()
	if _G.Auto_Store_Fruits then
		while _G.Auto_Store_Fruits do
			task.wait(2);
			pcall(function()
				if _G.Auto_Store_Fruits then
					if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bomb Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bomb Fruit")) then
						Equip("Bomb Fruit");
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Bomb-Bomb", game:GetService("Players").LocalPlayer.Character["Bomb Fruit"]);
						wait(1);
					end
					if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spike Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spike Fruit")) then
						Equip("Spike Fruit");
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Spike-Spike", game:GetService("Players").LocalPlayer.Character["Spike Fruit"]);
						wait(1);
					end
					if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Chop Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Chop Fruit")) then
						Equip("Chop Fruit");
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Chop-Chop", game:GetService("Players").LocalPlayer.Character["Chop Fruit"]);
						wait(1);
					end
					if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spring Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spring Fruit")) then
						Equip("Spring Fruit");
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Spring-Spring", game:GetService("Players").LocalPlayer.Character["Spring Fruit"]);
						wait(1);
					end
					if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Kilo Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Kilo Fruit")) then
						Equip("Kilo Fruit");
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Kilo-Kilo", game:GetService("Players").LocalPlayer.Character["Kilo Fruit"]);
						wait(1);
					end
					if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Smoke Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Smoke Fruit")) then
						Equip("Smoke Fruit");
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Smoke-Smoke", game:GetService("Players").LocalPlayer.Character["Smoke Fruit"]);
						wait(1);
					end
					if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spin Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spin Fruit")) then
						Equip("Spin Fruit");
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Spin-Spin", game:GetService("Players").LocalPlayer.Character["Spin Fruit"]);
						wait(1);
					end
					if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flame Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flame Fruit")) then
						Equip("Flame Fruit");
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Flame-Flame", game:GetService("Players").LocalPlayer.Character["Flame Fruit"]);
						wait(1);
					end
					if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bird: Falcon Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bird: Falcon Fruit")) then
						Equip("Bird: Falcon Fruit");
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Bird-Bird: Falcon", game:GetService("Players").LocalPlayer.Character["Bird: Falcon Fruit"]);
						wait(1);
					end
					if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Ice Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Ice Fruit")) then
						Equip("Ice Fruit");
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Ice-Ice", game:GetService("Players").LocalPlayer.Character["Ice Fruit"]);
						wait(1);
					end
					if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Sand Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Sand Fruit")) then
						Equip("Sand Fruit");
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Sand-Sand", game:GetService("Players").LocalPlayer.Character["Sand Fruit"]);
						wait(1);
					end
					if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dark Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dark Fruit")) then
						Equip("Dark Fruit");
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Dark-Dark", game:GetService("Players").LocalPlayer.Character["Dark Fruit"]);
						wait(1);
					end
					if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Revive Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Revive Fruit")) then
						Equip("Revive Fruit");
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Revive-Revive", game:GetService("Players").LocalPlayer.Character["Revive Fruit"]);
						wait(1);
					end
					if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Diamond Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Diamond Fruit")) then
						Equip("Diamond Fruit");
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Diamond-Diamond", game:GetService("Players").LocalPlayer.Character["Diamond Fruit"]);
						wait(1);
					end
					if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Light Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Light Fruit")) then
						Equip("Light Fruit");
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Light-Light", game:GetService("Players").LocalPlayer.Character["Light Fruit"]);
						wait(1);
					end
					if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Love Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Love Fruit")) then
						Equip("Love Fruit");
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Love-Love", game:GetService("Players").LocalPlayer.Character["Love Fruit"]);
						wait(1);
					end
					if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Rubber Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Rubber Fruit")) then
						Equip("Rubber Fruit");
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Rubber-Rubber", game:GetService("Players").LocalPlayer.Character["Rubber Fruit"]);
						wait(1);
					end
					if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Barrier Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Barrier Fruit")) then
						Equip("Barrier Fruit");
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Barrier-Barrier", game:GetService("Players").LocalPlayer.Character["Barrier Fruit"]);
						wait(1);
					end
					if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Magma Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Magma Fruit")) then
						Equip("Magma Fruit");
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Magma-Magma", game:GetService("Players").LocalPlayer.Character["Magma Fruit"]);
						wait(1);
					end
					if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Quake Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Quake Fruit")) then
						Equip("Quake Fruit");
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Quake-Quake", game:GetService("Players").LocalPlayer.Character["Quake Fruit"]);
						wait(1);
					end
					if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Human-Human: Buddha Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Human-Human: Buddha Fruit")) then
						Equip("Human-Human: Buddha Fruit");
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Human-Human: Buddha", game:GetService("Players").LocalPlayer.Character["Human-Human: Buddha Fruit"]);
						wait(1);
					end
					if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("String Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("String Fruit")) then
						Equip("String Fruit");
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "String-String", game:GetService("Players").LocalPlayer.Character["String Fruit"]);
						wait(1);
					end
					if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bird: Phoenix Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bird: Phoenix Fruit")) then
						Equip("Bird: Phoenix Fruit");
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Bird-Bird: Phoenix", game:GetService("Players").LocalPlayer.Character["Bird: Phoenix Fruit"]);
						wait(1);
					end
					if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Rumble Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Rumble Fruit")) then
						Equip("Rumble Fruit");
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Rumble-Rumble", game:GetService("Players").LocalPlayer.Character["Rumble Fruit"]);
						wait(1);
					end
					if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Paw Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Paw Fruit")) then
						Equip("Paw Fruit");
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Paw-Paw", game:GetService("Players").LocalPlayer.Character["Paw Fruit"]);
						wait(1);
					end
					if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Gravity Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Gravity Fruit")) then
						Equip("Gravity Fruit");
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Gravity-Gravity", game:GetService("Players").LocalPlayer.Character["Gravity Fruit"]);
						wait(1);
					end
					if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dough Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dough Fruit")) then
						Equip("Dough Fruit");
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Dough-Dough", game:GetService("Players").LocalPlayer.Character["Dough Fruit"]);
						wait(1);
					end
					if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Shadow Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Shadow Fruit")) then
						Equip("Shadow Fruit");
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Shadow-Shadow", game:GetService("Players").LocalPlayer.Character["Shadow Fruit"]);
						wait(1);
					end
					if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Venom Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Venom Fruit")) then
						Equip("Venom Fruit");
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Venom-Venom", game:GetService("Players").LocalPlayer.Character["Venom Fruit"]);
						wait(1);
					end
					if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Control Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Control Fruit")) then
						Equip("Control Fruit");
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Control-Control", game:GetService("Players").LocalPlayer.Character["Control Fruit"]);
						wait(1);
					end
					if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Fruit")) then
						Equip("Dragon Fruit");
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Dragon-Dragon", game:GetService("Players").LocalPlayer.Character["Dragon Fruit"]);
						wait(1);
					end
					if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spirit Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spirit Fruit")) then
						Equip("Spirit Fruit");
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Spirit-Spirit", game:GetService("Players").LocalPlayer.Character["Spirit Fruit"]);
						wait(1);
					end
					if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Portal Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Portal Fruit")) then
						Equip("Portal Fruit");
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Portal-Portal", game:GetService("Players").LocalPlayer.Character["Portal Fruit"]);
						wait(1);
					end
					if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Blizzard Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Blizzard Fruit")) then
						Equip("Blizzard Fruit");
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Blizzard-Blizzard", game:GetService("Players").LocalPlayer.Character["Blizzard Fruit"]);
						wait(1);
					end
				end
			end);
		end
	else
		_G.Auto_Random_Fruit = false;
	end
end);
task.spawn(function()
	while task.wait() do
		if _G.Fruits_Snipe then
			local v311 = {[1]="PurchaseRawFruit",[2]=tostring(_G.Auto_Sniper_Name_Fruit),[3]=false};
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v311));
		end
	end
end);



task.spawn(function()
	pcall(function()
		while wait() do
			local v257 = math.floor(workspace:GetRealPhysicsFPS());
			local v258 = math.floor(workspace.DistributedGameTime + 0.27322);
			local v259 = math.floor(v258 / (60 ^ 2)) % 24;
			local v260 = math.floor(v258 / (60 ^ 1)) % 60;
			local v261 = math.floor(v258 / (60 ^ 0)) % 60;
			if _G.lockP then
				if _G.AimbotWatermark then
					v25:Set("Manake Hub Premium script | " .. v257 .. "fps | Aimlock | ON   NamePlayer |  " .. tostring(v425) .. "  Health  |  " .. tostring(v426));
					if _G.AimbotRaceWatermark then
						v25:Set("Manake Hub Premium script | " .. v257 .. "fps | Aimlock | ON   NamePlayer |  " .. tostring(v425) .. "  Health  |  " .. tostring(v426).." | Race | "..tostring(RaceLock));
						if _G.AimbotEnergyV4Watermark then
							v25:Set("Manake Hub Premium script | " .. v257 .. "fps | Aimlock | ON   NamePlayer |  " .. tostring(v425) .. "  Health  |  " .. tostring(v426).." | Race | "..tostring(RaceLock).." | Energy { V4 } | "..tostring(V4EndNaGe));
						end
					elseif _G.AimbotEnergyV4Watermark then
						v25:Set("Manake Hub Premium script | " .. v257 .. "fps | Aimlock | ON   NamePlayer |  " .. tostring(v425) .. "  Health  |  " .. tostring(v426).." | Energy { V4 } | "..tostring(V4EndNaGe));
						if _G.AimbotRaceWatermark then
							v25:Set("Manake Hub Premium script | " .. v257 .. "fps | Aimlock | ON   NamePlayer |  " .. tostring(v425) .. "  Health  |  " .. tostring(v426).." | Race | "..tostring(RaceLock).." | Energy { V4 } | "..tostring(V4EndNaGe));
						end
					end
				else
					v25:Set("Manake Hub Premium script | " .. v257 .. "fps | " .. v259 .. " Hour(hr) " .. v260 .. " Minute(m) " .. v261 .. " Second(s)");
				end
			else
				v25:Set("Manake Hub Premium script | " .. v257 .. "fps | " .. v259 .. " Hour(hr) " .. v260 .. " Minute(m) " .. v261 .. " Second(s)");
			end
		end
	end);
end);


spawn(function ()
	local Test = Instance.new("Part")
	Test.Parent = game.Workspace.SavePosIsland
	Test.Size = Vector3.new(32,2,32)
	Test.CFrame = CFrame.new(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame.x,-5,game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame.z)
	Test.Anchored = true
	Test.Name = "WWN"
	Test.Transparency = 1
end)


task.spawn(function ()

	_G.WalkOnwalter_CF = CFrame.new(0,0,0)
	game.GetService(game, "RunService").RenderStepped:Connect(function()
		getgenv().WalkOnwalter = _G.WalkOnWater
		if getgenv().WalkOnwalter then
			game.Workspace.SavePosIsland.WWN.CFrame = CFrame.new(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame.x,-5,game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame.z)
		end
		if getgenv().WalkOnwalter == false then
			game.Workspace.SavePosIsland.WWN.CFrame = CFrame.new(0,10000,0)
		end
	end)
end)

task.spawn(function ()
	while wait() do
		if _G.SemiNostun then
			if game.Players.LocalPlayer.Character:FindFirstChild("Stun").Value >= 1 then
				game.Players.LocalPlayer.Character.Stun.Value = 0
			end
		end
	end
end)


task.spawn(function ()
	while wait() do
		v8336:Set(" Earned Bounty : "..tostring(game.Players.LocalPlayer.leaderstats["Bounty/Honor"].Value - tonumber(readfile("Manake Hub Premium script/KeepNowBounty_"..game.Players.LocalPlayer.Name..".txt"))))
		writefile("Manake Hub Premium script/Bountyadded_"..game.Players.LocalPlayer.Name..".txt" ,game.Players.LocalPlayer.leaderstats["Bounty/Honor"].Value - tonumber(readfile("Manake Hub Premium script/KeepNowBounty_"..game.Players.LocalPlayer.Name..".txt")))
	end
end)


task.spawn(function()
	pcall(function()
		while task.wait() do
			if _G.AutoStats_Epa then
				if _G.AutoStats_Melee then
					local v391 = {[1]="AddPoint",[2]="Melee",[3]=tonumber(_G.StatsPoint)};
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v391));
				elseif _G.AutoStats_Defense then
					local v413 = {[1]="AddPoint",[2]="Defense",[3]=tonumber(_G.StatsPoint)};
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v413));
				elseif _G.AutoStats_Sword then
					local v455 = {[1]="AddPoint",[2]="Sword",[3]=tonumber(_G.StatsPoint)};
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v455));
				elseif _G.AutoStats_Gun then
					local v474 = {[1]="AddPoint",[2]="Gun",[3]=tonumber(_G.StatsPoint)};
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v474));
				elseif _G.AutoStats_Fruit then
					local v501 = {[1]="AddPoint",[2]="Demon Fruit",[3]=tonumber(_G.StatsPoint)};
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v501));
				end
			end
		end
	end);
end);

task.spawn(function()
	while task.wait() do
		if (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep", true) == 1) then
			DeathStep = true;
		else
			DeathStep = false;
		end
		if (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate", true) == 1) then
			SharkmanKarate = true;
		else
			SharkmanKarate = false;
		end
		if (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw", true) == 1) then
			ElectricClaw = true;
		else
			ElectricClaw = false;
		end
		if (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon", true) == 1) then
			DragonTalon = true;
		else
			DragonTalon = false;
		end
		if (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodHuman", true) == 1) then
			GodHuman = true;
		else
			GodHuman = false;
		end
	end

end);

function BypassGameTeleport(Pos)
	local args = {[1] = "requestEntrance",[2] = Vector3.new(Pos1,Pos2,Pos3)}
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end

task.spawn(function()
	while task.wait() do
		pcall(function()
			for v312, v313 in pairs(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventoryWeapons")) do
				if (v313.Name == "Saber") then
					Saber = true;
				else
					Saber = false;
				end
				if (v313.Name == "Rengoku") then
					Rengoku = true;
				else
					Rengoku = true;
				end
				if (v313.Name == "Midnight Blade") then
					MidnightBlade = true;
				else
					MidnightBlade = false;
				end
				if (v313.Name == "Dragon Trident") then
					DragonTrident = true;
				else
					DragonTrident = false;
				end
				if (v313.Name == "Yama") then
					Yama = true;
				else
					Yama = false;
				end
				if (v313.Name == "Buddy Sword") then
					BuddySword = true;
				else
					BuddySword = false;
				end
				if (v313.Name == "Canvander") then
					Canvander = true;
				else
					Canvander = false;
				end
				if (v313.Name == "Twin Hooks") then
					TwinHooks = true;
				else
					TwinHooks = false;
				end
				if (v313.Name == "Spikey Trident") then
					SpikeyTrident = true;
				else
					SpikeyTrident = false;
				end
				if (v313.Name == "Hallow Scythe") then
					HallowScythe = true;
				else
					HallowScythe = false;
				end
				if (v313.Name == "Dark Dagger") then
					DarkDagger = true;
				else
					DarkDagger = false;
				end
				if (v313.Name == "Tushita") then
					Tushita = true;
				else
					Tushita = false;
				end
			end
		end);
	end
end);
local v103 = v27:Tab("Configuration");
local v104 = v103:Section({Name="Theme",Side="Left"});
local v105 = {};
local v106 = v104:Dropdown({Name="Theme",Default=v0.currenttheme,Content=v0:GetThemes(),Flag="Theme Dropdown",Callback=function(v70)
	if v70 then
		v0:SetTheme(v70);
		for v314, v315 in next, v105 do
			v315:Set(v0.theme[v314]);
		end
	end
end});
v0:ConfigIgnore("Theme Dropdown");
local v107 = v104:Box({Name="Custom Theme Name",Placeholder="Custom Theme",Flag="Custom Theme"});
v0:ConfigIgnore("Custom Theme");
v104:Button({Name="Save Custom Theme",Callback=function()
	if v0:SaveCustomTheme(v0.flags["Custom Theme"]) then
		v106:Refresh(v0:GetThemes());
		v106:Set(v0.flags["Custom Theme"]);
		v107:Set("");
	end
end});
local v108 = v103:Section({Name="Custom Theme",Side="Right"});
v105['Accent'] = v108:ColorPicker({Name="Accent",Default=v0.theme['Accent'],Flag="Accent",Callback=function(v89)
	v0:ChangeThemeOption("Accent", v89);
end});
v0:ConfigIgnore("Accent");
v105["Window Background"] = v108:ColorPicker({Name="Window Background",Default=v0.theme["Window Background"],Flag="Window Background",Callback=function(v89)
	v0:ChangeThemeOption("Window Background", v89);
end});
v0:ConfigIgnore("Window Background");
v105["Window Border"] = v108:ColorPicker({Name="Window Border",Default=v0.theme["Window Border"],Flag="Window Border",Callback=function(v89)
	v0:ChangeThemeOption("Window Border", v89);
end});
v0:ConfigIgnore("Window Border");
v105["Tab Background"] = v108:ColorPicker({Name="Tab Background",Default=v0.theme["Tab Background"],Flag="Tab Background",Callback=function(v89)
	v0:ChangeThemeOption("Tab Background", v89);
end});
v0:ConfigIgnore("Tab Background");
v105["Tab Border"] = v108:ColorPicker({Name="Tab Border",Default=v0.theme["Tab Border"],Flag="Tab Border",Callback=function(v89)
	v0:ChangeThemeOption("Tab Border", v89);
end});
v0:ConfigIgnore("Tab Border");
v105["Tab Toggle Background"] = v108:ColorPicker({Name="Tab Toggle Background",Default=v0.theme["Tab Toggle Background"],Flag="Tab Toggle Background",Callback=function(v89)
	v0:ChangeThemeOption("Tab Toggle Background", v89);
end});
v0:ConfigIgnore("Tab Toggle Background");
v105["Section Background"] = v108:ColorPicker({Name="Section Background",Default=v0.theme["Section Background"],Flag="Section Background",Callback=function(v89)
	v0:ChangeThemeOption("Section Background", v89);
end});
v0:ConfigIgnore("Section Background");
v105["Section Border"] = v108:ColorPicker({Name="Section Border",Default=v0.theme["Section Border"],Flag="Section Border",Callback=function(v89)
	v0:ChangeThemeOption("Section Border", v89);
end});
v0:ConfigIgnore("Section Border");
v105['Text'] = v108:ColorPicker({Name="Text",Default=v0.theme['Text'],Flag="Text",Callback=function(v89)
	v0:ChangeThemeOption("Text", v89);
end});
v0:ConfigIgnore("Text");
v105["Disabled Text"] = v108:ColorPicker({Name="Disabled Text",Default=v0.theme["Disabled Text"],Flag="Disabled Text",Callback=function(v89)
	v0:ChangeThemeOption("Disabled Text", v89);
end});
v0:ConfigIgnore("Disabled Text");
v105["Object Background"] = v108:ColorPicker({Name="Object Background",Default=v0.theme["Object Background"],Flag="Object Background",Callback=function(v89)
	v0:ChangeThemeOption("Object Background", v89);
end});
v0:ConfigIgnore("Object Background");
v105["Object Border"] = v108:ColorPicker({Name="Object Border",Default=v0.theme["Object Border"],Flag="Object Border",Callback=function(v89)
	v0:ChangeThemeOption("Object Border", v89);
end});
v0:ConfigIgnore("Object Border");
v105["Dropdown Option Background"] = v108:ColorPicker({Name="Dropdown Option Background",Default=v0.theme["Dropdown Option Background"],Flag="Dropdown Option Background",Callback=function(v89)
	v0:ChangeThemeOption("Dropdown Option Background", v89);
end});
v0:ConfigIgnore("Dropdown Option Background");
_G.Webhooks = "";
local v122 = v108:Separator("Discord WebHook");
v108:Button({Name=" Open Gui WebHook { Ui lib Textbox Bug } ",Callback=function()
	loadstring(game:HttpGet("https://pastebin.com/raw/c8LHhZyt"))();
end});
v108:Button({Name=" Test WebHook ",Callback=function()
	loadstring(game:HttpGet("https://pastebin.com/raw/VFeMBpmv"))();
end});
v108:Toggle({Name="Send WebHooks ( Normal )",Flag="Send_WebHooks",Default=false,Callback=function(v52)
	if v52 then
		local function v262()
			local v316 = Instance.new("LocalScript", v13);
			local v317 = nil;
			if (game.PlaceId == 2753915549) then
				v317 = 1;
			elseif (game.PlaceId == 4442272183) then
				v317 = 2;
			elseif (game.PlaceId == 7449423635) then
				v317 = 3;
			end
			comma_value = function(v318)
				local v336 = v318;
				while true do
					v336, k = string.gsub(v336, "^(-?%d+)(%d%d%d)", "%1,%2");
					if (k == 0) then
						break;
					end
				end
				return v336;
			end;
			while v52 do
				wait();
				request = http_request or request or HttpPost or syn.request;
				local v337 = {embeds={{title=("**User : " .. game.Players.LocalPlayer.Name .. " World :  " .. v317 .. "**"),description=("🌟 " .. game:GetService("Players").LocalPlayer.Data.Level.Value .. " Level\n⭐ " .. comma_value(game:GetService("Players").LocalPlayer.Data.Exp.Value) .. " Exp\n🏆 " .. comma_value(game:GetService("Players").LocalPlayer.leaderstats["Bounty/Honor"].Value) .. " Bounty\n\n⚡ " .. tostring(game:GetService("Players").LocalPlayer.Data.Race.Value) .. " Race\n\n💵 " .. comma_value(game:GetService("Players").LocalPlayer.Data.Beli.Value) .. " Belly\n💷 " .. comma_value(game:GetService("Players").LocalPlayer.Data.Fragments.Value) .. " Fragment"),type="rich",color=16776960},{title="**{ Stats  Up }**",description=("👊 " .. game:GetService("Players").LocalPlayer.Data.Stats.Melee.Level.Value .. " Melee\n🛡️ " .. game:GetService("Players").LocalPlayer.Data.Stats.Defense.Level.Value .. " Defense\n⚔️ " .. game:GetService("Players").LocalPlayer.Data.Stats.Sword.Level.Value .. " Sword\n🔫 " .. game:GetService("Players").LocalPlayer.Data.Stats.Gun.Level.Value .. " Gun\n🍏 " .. game:GetService("Players").LocalPlayer.Data.Stats["Demon Fruit"].Level.Value .. " Fruit"),type="rich",color=16776960}}};
				local v338 = game:GetService("HttpService"):JSONEncode(v337);
				local v339 = {["content-type"]="application/json"};
				local v340 = {Url=(getgenv()).url,Body=v338,Method="POST",Headers=v339};
				request(v340);
				wait(300);
			end
		end
		coroutine.wrap(v262)();
	else
		pcall(function()
			game:GetService("Workspace").Foder_WebHook.LocalScript:destroy();
		end);
	end
end});
v108:Toggle({Name="Send WebHooks ( Details )",Flag="Send_WebHooks_Details",Default=false,Callback=function(v52)
	if not game.Workspace.WebHook then
		local v263 = Instance.new("Folder");
		v263.Name = "WebHook";
		v263.Parent = game.Workspace;
	end
	if v52 then
		local function v267()
			local v319 = Instance.new("LocalScript", v13);
			local v320 = nil;
			if (game.PlaceId == 2753915549) then
				v320 = "Old World";
			elseif (game.PlaceId == 4442272183) then
				v320 = "New World";
			elseif (game.PlaceId == 7449423635) then
				v320 = "Three World";
			end
			comma_value = function(v321)
				local v341 = v321;
				while true do
					v341, k = string.gsub(v341, "^(-?%d+)(%d%d%d)", "%1,%2");
					if (k == 0) then
						break;
					end
				end
				return v341;
			end;
			while v52 do
				wait();
				request = http_request or request or HttpPost or syn.request;
				local v342 = {embeds={{title=("**WebHooks Manake Hub\n\n--" .. tostring(game.Players.LocalPlayer.Name) .. "--\n--" .. tostring(v320) .. "--**"),description=("Level : " .. game:GetService("Players")[game.Players.LocalPlayer.Name].Data.Level.Value .. " \nExp :" .. game:GetService("Players")[game.Players.LocalPlayer.Name].Data.Exp.Value .. "\nBelly : " .. game:GetService("Players")[game.Players.LocalPlayer.Name].Data.Beli.Value .. "\nFragment : " .. game:GetService("Players")[game.Players.LocalPlayer.Name].Data.Fragments.Value .. " \nBounty : " .. game:GetService("Players")[game.Players.LocalPlayer.Name].leaderstats["Bounty/Honor"].Value .. " \nRace : " .. game:GetService("Players")[game.Players.LocalPlayer.Name].Data.Race.Value),type="rich",color=12448529},{title="**--  Have Melee --**",description=("Death Step : " .. tostring(DeathStep) .. " \nSharkman Karate : " .. tostring(SharkmanKarate) .. " \nElectric Claw : " .. tostring(ElectricClaw) .. " \nDragon Talon : " .. tostring(DragonTalon) .. "\nGod Human : " .. tostring(GodHuman)),type="rich",color=12448529},{title="**--  Have Sword --**",description=("Saber : " .. tostring(Saber) .. " \nRengoku : " .. tostring(Rengoku) .. " \nMidnight Blade : " .. tostring(MidnightBlade) .. " \nDragon Trident : " .. tostring(DragonTrident) .. " \nYama : " .. tostring(Yama) .. " \nBuddy Sword : " .. tostring(BuddySword) .. " \nCanvander : " .. tostring(Canvander) .. " \nTwin Hooks : " .. tostring(TwinHooks) .. " \nSpikey Trident : " .. tostring(SpikeyTrident) .. " \nHallow Scythe : " .. tostring(HallowScythe) .. " \nDark Dagger : " .. tostring(DarkDagger) .. " \nTushita : " .. tostring(Tushita)),type="rich",color=12448529},{description=("Time : " .. os.date("%X") .. " \nDate : " .. os.date("%x")),type="rich",color=12448529}}};
				local v343 = game:GetService("HttpService"):JSONEncode(v342);
				local v344 = {["content-type"]="application/json"};
				local v345 = {Url=(getgenv()).url,Body=v343,Method="POST",Headers=v344};
				request(v345);
				wait(300)
			end
		end
		coroutine.wrap(v267)();
	else
		pcall(function()
			game:GetService("Workspace").Foder_WebHook.LocalScript:destroy();
		end);
	end
end});
local v123 = v103:Section({Name="Configs",Side="Left"});
local v124 = v123:Dropdown({Name="Configs",Content=v0:GetConfigs(),Flag="Config Dropdown"});
v0:ConfigIgnore("Config Dropdown");
local v125 = v123:Button({Name="Load Config",Callback=function()
	v0:LoadConfig(v0.flags["Config Dropdown"]);
end});
local v126 = v123:Button({Name="Delete Config",Callback=function()
	v0:DeleteConfig(v0.flags["Config Dropdown"]);
	v124:Refresh(v0:GetConfigs());
end});
local v127 = v123:Box({Name="Config Name",Placeholder="Config Name",Flag="Config Name"});
v0:ConfigIgnore("Config Name");
local v128 = v123:Button({Name="Save Config",Callback=function()
	v0:SaveConfig(v0.flags["Config Dropdown"] or v0.flags["Config Name"]);
	v124:Refresh(v0:GetConfigs());
end});
v123:Separator("Setting watermark")
v123:Toggle{
	Name = "Show watermark",
	Flag = "Toggle 1",
	Default = true,
	Callback  = function(bool)
		v25:Hide()
	end}
v123:Toggle{
	Name = "Aimbot watermark",
	Flag = "Aimbot watermark",
	Callback  = function(bool)
		_G.AimbotWatermark = bool
	end}
v123:Toggle{
	Name = "Aimbot watermark { Race } ",
	Flag = "Aimbot watermark { Race } ",
	Callback  = function(bool)
		_G.AimbotRaceWatermark = bool
	end}

v123:Toggle{
	Name = "Aimbot watermark { V4 Energy } ",
	Flag = "Aimbot watermark { V4 Energy }",
	Callback  = function(bool)
		_G.AimbotEnergyV4Watermark = bool
	end}
local v129 = v103:Section({Name="UI Toggle Keybind",Side="Left"});
v129:Button({Name="Unload",Callback=function()
	getgenv().setting = {Fov=FovAim,Color=ColorAim,LockPlayers=lockP,LockPlayersBind=Enum.KeyCode.L,resetPlayersBind=Enum.KeyCode.P};
	v0:Unload();
end});
v129:Keybind({Name="UI Toggle",Flag="UI Toggle",Default=Enum.KeyCode.RightControl,Blacklist={Enum.UserInputType.MouseButton1,Enum.UserInputType.MouseButton2,Enum.UserInputType.MouseButton3},Callback=function(v130, v92)
	if not v92 then
		v0:Close();
	end

end});
v129:Keybind({Name="Destroy UI",Flag="Unload UI",Default=Enum.KeyCode.End,Blacklist={Enum.UserInputType.MouseButton1,Enum.UserInputType.MouseButton2,Enum.UserInputType.MouseButton3},Callback=function(v130, v92)

	if not v92 then
		getgenv().setting = {Fov=FovAim,Color=ColorAim,LockPlayers=lockP,LockPlayersBind=Enum.KeyCode.L,resetPlayersBind=Enum.KeyCode.P};
		wait();
		v0:Unload();
	end
end});
v25:Hide()
game:GetService("Players")["minecftno_1"].PlayerGui.Main.FruitShop.Visble = true
wait()
game:GetService("Players")["minecftno_1"].PlayerGui.Main.FruitShop.Visble = false
repeat
	wait()
until game.Players.LocalPlayer.Character.Humanoid.Health > 0 
if isfile("Manake Hub Premium script/"..game.PlaceId.."/Last_Config.json") then
	_G.LastLoadCheck = true
end 
wait()
writefile("Check_Loading.txt","true")
repeat
	_G.LoadingLastConfigStart = false
until readfile("Check_Loading.txt") == "true"
wait()
_G.LoadingLastConfigStart = true
if _G.LastLoadCheck then
	v0:LoadConfig("Last_Config")
end

wait(3)
TextUpGame("Manake Hub Loading Successful","GM")
while _G.LoadingLastConfigStart do 
	wait()
	v0:SaveConfig("Last Config")
end
v3:Set3dRenderingEnabled(true)
wait(3)
game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
local player = game.Players.LocalPlayer
local mouse = player:GetMouse()
local UserInputService = game:GetService("UserInputService")
repeat
	wait()
	UserInputService.InputBegan:Connect(function(Input)
		if Input.UserInputType == Enum.UserInputType.MouseButton1 then
			if _G.lockP == false then
				mouse.Icon = "rbxassetid://13087346782"
				wait(0.2)
				mouse.Icon = "rbxassetid://13087327180"
			else
				while _G.lockP do
					if _G.lockP then
						wait()
						if _G.Namelock == "???" then
							mouse.Icon = "rbxassetid://13087465351"
						else
							mouse.Icon = "rbxassetid://13087458723"
						end
					end
				end
			end
		end
	end)
until mouse.Icon == "rbxassetid://13087346782" 
