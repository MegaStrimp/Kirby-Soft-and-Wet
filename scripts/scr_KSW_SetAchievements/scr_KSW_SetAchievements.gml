///@description KSW - Set Achievements

function scr_KSW_SetAchievements()
{
	#region Setup
	global.KSW_TotalAchievementCount = 0;
	global.KSW_VisibleAchievementCount = 0;
	
	global.KSW_AchievementList = [];
	global.KSW_AchievementIDs = ds_map_create();
	#endregion
	
	#region Add Achievements Here
	#region Catch Fish
	#region Catch 1 Fish
	var achievementUnlockMethod = function()
	{
		return (global.KSW_CaughtTotalFishCount >= 1);
	};
	scr_KSW_AddAchievement("catch1","Nice Catch!","Catch 1 Fish",spr_KSW_Achievement_Icon_NiceCatch,achievementUnlockMethod);
	#endregion
	
	#region Catch 50 Fish
	var achievementUnlockMethod = function()
	{
		return (global.KSW_CaughtTotalFishCount >= 50);
	};
	scr_KSW_AddAchievement("catch50","Getting Used","Catch 50 Fish",spr_KSW_Achievement_Icon_GettingUsed,achievementUnlockMethod);
	#endregion
	
	#region Catch 100 Fish
	var achievementUnlockMethod = function()
	{
		return (global.KSW_CaughtTotalFishCount >= 100);
	};
	scr_KSW_AddAchievement("catch100","Silly Angler","Catch 100 Fish",spr_KSW_Achievement_Icon_SillyAngler,achievementUnlockMethod);
	#endregion
	
	#region Catch 500 Fish
	var achievementUnlockMethod = function()
	{
		return (global.KSW_CaughtTotalFishCount >= 500);
	};
	scr_KSW_AddAchievement("catch500","Novice Fisher","Catch 500 Fish",spr_KSW_Achievement_Icon_NoviceFisher,achievementUnlockMethod);
	#endregion
	
	#region Catch 2500 Fish
	var achievementUnlockMethod = function()
	{
		return (global.KSW_CaughtTotalFishCount >= 2500);
	};
	scr_KSW_AddAchievement("catch2500","Master Captain","Catch 2500 Fish",spr_KSW_Achievement_Icon_MasterCaptain,achievementUnlockMethod);
	#endregion
	
	#region Catch 5000 Fish
	var achievementUnlockMethod = function()
	{
		return (global.KSW_CaughtTotalFishCount >= 5000);
	};
	scr_KSW_AddAchievement("catch5000","True Aqualiss","Catch 5000 Fish",spr_KSW_Achievement_Icon_TrueAqualiss,achievementUnlockMethod,global.KSW_BobberIDs[? "star"]);
	#endregion
	#endregion
	
	#region Catch Fish at Daytime
	#region Catch 100 Fish at Daytime
	var achievementUnlockMethod = function()
	{
		return (global.KSW_CaughtTotalFishCount_Day >= 100);
	};
	scr_KSW_AddAchievement("catchDay100","Sunny Side Up","Catch 100 Fish at Daytime",spr_KSW_Achievement_Icon_SunnySideUp,achievementUnlockMethod);
	#endregion
	
	#region Catch 1000 Fish at Daytime
	var achievementUnlockMethod = function()
	{
		return (global.KSW_CaughtTotalFishCount_Day >= 1000);
	};
	scr_KSW_AddAchievement("catchDay1000","True Beach Boy","Catch 1000 Fish at Daytime",spr_KSW_Achievement_Icon_TrueBeachBoy,achievementUnlockMethod,global.KSW_BobberIDs[? "darkMind"]);
	#endregion
	#endregion
	
	#region Catch Fish at Afternoon
	#region Catch 100 Fish at Afternoon
	var achievementUnlockMethod = function()
	{
		return (global.KSW_CaughtTotalFishCount_Afternoon >= 100);
	};
	scr_KSW_AddAchievement("catchAfternoon100","Sunset Haze","Catch 100 Fish at Afternoon",spr_KSW_Achievement_Icon_SunsetHaze,achievementUnlockMethod);
	#endregion
	
	#region Catch 1000 Fish at Afternoon
	var achievementUnlockMethod = function()
	{
		return (global.KSW_CaughtTotalFishCount_Afternoon >= 1000);
	};
	scr_KSW_AddAchievement("catchAfternoon1000","True Romantic","Catch 1000 Fish at Afternoon",spr_KSW_Achievement_Icon_TrueRomantic,achievementUnlockMethod,global.KSW_BobberIDs[? "starDream"]);
	#endregion
	#endregion
	
	#region Catch Fish at Midnight
	#region Catch 100 Fish at Midnight
	var achievementUnlockMethod = function()
	{
		return (global.KSW_CaughtTotalFishCount_Night >= 100);
	};
	scr_KSW_AddAchievement("catchNight100","Rises The Moon","Catch 100 Fish at Midnight",spr_KSW_Achievement_Icon_RisesTheMoon,achievementUnlockMethod);
	#endregion
	
	#region Catch 1000 Fish at Midnight
	var achievementUnlockMethod = function()
	{
		return (global.KSW_CaughtTotalFishCount_Night >= 1000);
	};
	scr_KSW_AddAchievement("catchNight1000","True Moonlight","Catch 1000 Fish at Midnight",spr_KSW_Achievement_Icon_TrueMoonlight,achievementUnlockMethod,global.KSW_BobberIDs[? "nightmareOrb"]);
	#endregion
	#endregion
	
	#region Catch Fish Without Failing
	#region Catch 25 Fish Without Failing
	var achievementUnlockMethod = function()
	{
		return (global.KSW_CurrentFishCombo >= 25);
	};
	scr_KSW_AddAchievement("combo25","Reflex Grinder","Catch 25 Fish Without Failing",spr_KSW_Achievement_Icon_ReflexGrinder,achievementUnlockMethod);
	#endregion
	
	#region Catch 50 Fish Without Failing
	var achievementUnlockMethod = function()
	{
		return (global.KSW_CurrentFishCombo >= 50);
	};
	scr_KSW_AddAchievement("combo50","Prey's Frenemy","Catch 50 Fish Without Failing",spr_KSW_Achievement_Icon_PreysFrenemy,achievementUnlockMethod);
	#endregion
	
	#region Catch 100 Fish Without Failing
	var achievementUnlockMethod = function()
	{
		return (global.KSW_CurrentFishCombo >= 100);
	};
	scr_KSW_AddAchievement("combo100","True Hawkeye","Catch 100 Fish Without Failing",spr_KSW_Achievement_Icon_TrueHawkeye,achievementUnlockMethod,global.KSW_BobberIDs[? "starry"]);
	#endregion
	#endregion
	
	#region Collect Unique Fish
	#region Collect 30 Percent of Unique Fish
	var achievementUnlockMethod = function()
	{
		return (global.KSW_CaughtUniqueFishCount >= floor(global.KSW_FishCount * .3));
	};
	scr_KSW_AddAchievement("catchUnique20","Hobbyist","Collect 30 Percent of Unique Fish",spr_KSW_Achievement_Icon_Hobbyist,achievementUnlockMethod);
	#endregion
	
	#region Collect 50 Percent of Unique Fish
	var achievementUnlockMethod = function()
	{
		return (global.KSW_CaughtUniqueFishCount >= floor(global.KSW_FishCount / 2));
	};
	scr_KSW_AddAchievement("catchUnique100","Collector","Collect 50 Percent of Unique Fish",spr_KSW_Achievement_Icon_Collector,achievementUnlockMethod);
	#endregion
	
	#region Collect All Unique Fishes
	var achievementUnlockMethod = function()
	{
		return (global.KSW_CaughtUniqueFishCount >= global.KSW_FishCount);
	};
	scr_KSW_AddAchievement("catchUniqueAll","Completionist","Collect All Unique Fishes",spr_KSW_Achievement_Icon_Completionist,achievementUnlockMethod,global.KSW_BobberIDs[? "rainbowDrop"]);
	#endregion
	#endregion
	
	#region Get Grams
	#region Get 10000 G
	var achievementUnlockMethod = function()
	{
		return (global.levelScoreCurrent >= 10000);
	};
	scr_KSW_AddAchievement("grams10k","Big Guy","Get 10000 G Worth of Fish",spr_KSW_Achievement_Icon_BigGuy,achievementUnlockMethod);
	#endregion
	
	#region Get 200000 G
	var achievementUnlockMethod = function()
	{
		return (global.levelScoreCurrent >= 200000);
	};
	scr_KSW_AddAchievement("grams200k","Mass Attack","Get 200000 G Worth of Fish",spr_KSW_Achievement_Icon_MassAttack,achievementUnlockMethod);
	#endregion
	
	#region Get 1000000 G
	var achievementUnlockMethod = function()
	{
		return (global.levelScoreCurrent >= 1000000);
	};
	scr_KSW_AddAchievement("grams1m","Millionth Puff","Get 1000000 G Worth of Fish",spr_KSW_Achievement_Icon_MillionthPuff,achievementUnlockMethod);
	#endregion
	
	#region Get 9999999 G
	var achievementUnlockMethod = function()
	{
		return (global.levelScoreCurrent >= 9999999);
	};
	scr_KSW_AddAchievement("grams10m","True Matter","Get 9999999 G Worth of Fish",spr_KSW_Achievement_Icon_TrueMatter,achievementUnlockMethod,global.KSW_BobberIDs[? "darkMatter"]);
	#endregion
	#endregion
	
	#region Earn Coins
	#region Earn 50 Coins
	var achievementUnlockMethod = function()
	{
		return (global.KSW_TotalCoins >= 50);
	};
	scr_KSW_AddAchievement("coins50","Pocket Change","Earn 50 Coins Total",spr_KSW_Achievement_Icon_Default,achievementUnlockMethod);
	#endregion
	
	#region Earn 200 Coins
	var achievementUnlockMethod = function()
	{
		return (global.KSW_TotalCoins >= 200);
	};
	scr_KSW_AddAchievement("coins200","Deep Pockets","Earn 200 Coins Total",spr_KSW_Achievement_Icon_Default,achievementUnlockMethod);
	#endregion
	
	#region Earn 3000 Coins
	var achievementUnlockMethod = function()
	{
		return (global.KSW_TotalCoins >= 3000);
	};
	scr_KSW_AddAchievement("coins3000","A Real Scrooge","Earn 3000 Coins Total",spr_KSW_Achievement_Icon_Default,achievementUnlockMethod);
	#endregion
	
	#region Earn 10000 Coins
	var achievementUnlockMethod = function()
	{
		return (global.KSW_TotalCoins >= 10000);
	};
	scr_KSW_AddAchievement("coins10000","Need Ways To Spend","Earn 10000 Coins Total",spr_KSW_Achievement_Icon_Default,achievementUnlockMethod);
	#endregion
	#endregion
	
	#region Catch Fish As Characters
	#region Kirby
	#region Catch 100 Fish As Kirby
	var achievementUnlockMethod = function()
	{
		return (global.KSW_CharacterList[global.KSW_CharacterIDs[? "kirby"]].caughtFishCount >= 100);
	};
	scr_KSW_AddAchievement("catch100Kirby","Kirby Fan","Catch 100 Fish As Kirby",spr_KSW_Achievement_Icon_Default,achievementUnlockMethod);
	#endregion
	
	#region Catch 1000 Fish As Kirby
	var achievementUnlockMethod = function()
	{
		return (global.KSW_CharacterList[global.KSW_CharacterIDs[? "kirby"]].caughtFishCount >= 1000);
	};
	scr_KSW_AddAchievement("catch1000Kirby","Kirby Lover","Catch 1000 Fish As Kirby",spr_KSW_Achievement_Icon_Default,achievementUnlockMethod);
	#endregion
	#endregion
	
	#region Gooey
	#region Catch 100 Fish As Gooey
	var achievementUnlockMethod = function()
	{
		return (global.KSW_CharacterList[global.KSW_CharacterIDs[? "gooey"]].caughtFishCount >= 100);
	};
	scr_KSW_AddAchievement("catch100Gooey","Gooey Fan","Catch 100 Fish As Gooey",spr_KSW_Achievement_Icon_Default,achievementUnlockMethod);
	#endregion
	
	#region Catch 1000 Fish As Gooey
	var achievementUnlockMethod = function()
	{
		return (global.KSW_CharacterList[global.KSW_CharacterIDs[? "gooey"]].caughtFishCount >= 1000);
	};
	scr_KSW_AddAchievement("catch1000Gooey","Gooey Lover","Catch 1000 Fish As Gooey",spr_KSW_Achievement_Icon_Default,achievementUnlockMethod);
	#endregion
	#endregion
	
	#region Elfilin
	#region Catch 100 Fish As Elfilin
	var achievementUnlockMethod = function()
	{
		return (global.KSW_CharacterList[global.KSW_CharacterIDs[? "elfilin"]].caughtFishCount >= 100);
	};
	scr_KSW_AddAchievement("catch100Elfilin","Elfilin Fan","Catch 100 Fish As Elfilin",spr_KSW_Achievement_Icon_Default,achievementUnlockMethod);
	#endregion
	
	#region Catch 1000 Fish As Elfilin
	var achievementUnlockMethod = function()
	{
		return (global.KSW_CharacterList[global.KSW_CharacterIDs[? "elfilin"]].caughtFishCount >= 1000);
	};
	scr_KSW_AddAchievement("catch1000Elfilin","Elfilin Lover","Catch 1000 Fish As Elfilin",spr_KSW_Achievement_Icon_Default,achievementUnlockMethod);
	#endregion
	#endregion
	
	#region Marx
	#region Catch 100 Fish As Marx
	var achievementUnlockMethod = function()
	{
		return (global.KSW_CharacterList[global.KSW_CharacterIDs[? "marx"]].caughtFishCount >= 100);
	};
	scr_KSW_AddAchievement("catch100Marx","Marx Fan","Catch 100 Fish As Marx",spr_KSW_Achievement_Icon_Default,achievementUnlockMethod);
	#endregion
	
	#region Catch 1000 Fish As Marx
	var achievementUnlockMethod = function()
	{
		return (global.KSW_CharacterList[global.KSW_CharacterIDs[? "marx"]].caughtFishCount >= 1000);
	};
	scr_KSW_AddAchievement("catch1000Marx","Marx Lover","Catch 1000 Fish As Marx",spr_KSW_Achievement_Icon_Default,achievementUnlockMethod);
	#endregion
	#endregion
	
	#region Waddle Dee
	#region Catch 100 Fish As Waddle Dee
	var achievementUnlockMethod = function()
	{
		return (global.KSW_CharacterList[global.KSW_CharacterIDs[? "waddleDee"]].caughtFishCount >= 100);
	};
	scr_KSW_AddAchievement("catch100WaddleDee","Waddle Dee Fan","Catch 100 Fish As Waddle Dee",spr_KSW_Achievement_Icon_Default,achievementUnlockMethod);
	#endregion
	
	#region Catch 1000 Fish As Waddle Dee
	var achievementUnlockMethod = function()
	{
		return (global.KSW_CharacterList[global.KSW_CharacterIDs[? "waddleDee"]].caughtFishCount >= 1000);
	};
	scr_KSW_AddAchievement("catch1000WaddleDee","Waddle Dee Lover","Catch 1000 Fish As Waddle Dee",spr_KSW_Achievement_Icon_Default,achievementUnlockMethod);
	#endregion
	#endregion
	
	#region Susie
	#region Catch 100 Fish As Susie
	var achievementUnlockMethod = function()
	{
		return (global.KSW_CharacterList[global.KSW_CharacterIDs[? "susie"]].caughtFishCount >= 100);
	};
	scr_KSW_AddAchievement("catch100Susie","Susie Fan","Catch 100 Fish As Susie",spr_KSW_Achievement_Icon_Default,achievementUnlockMethod);
	#endregion
	
	#region Catch 1000 Fish As Susie
	var achievementUnlockMethod = function()
	{
		return (global.KSW_CharacterList[global.KSW_CharacterIDs[? "susie"]].caughtFishCount >= 1000);
	};
	scr_KSW_AddAchievement("catch1000Susie","Susie Lover","Catch 1000 Fish As Susie",spr_KSW_Achievement_Icon_Default,achievementUnlockMethod);
	#endregion
	#endregion
	
	#region Ybrik
	#region Catch 100 Fish As Ybrik
	var achievementUnlockMethod = function()
	{
		return (global.KSW_CharacterList[global.KSW_CharacterIDs[? "ybrik"]].caughtFishCount >= 100);
	};
	scr_KSW_AddAchievement("catch100Ybrik","Ybrik Fan","Catch 100 Fish As Ybrik",spr_KSW_Achievement_Icon_Default,achievementUnlockMethod);
	#endregion
	
	#region Catch 1000 Fish As Ybrik
	var achievementUnlockMethod = function()
	{
		return (global.KSW_CharacterList[global.KSW_CharacterIDs[? "ybrik"]].caughtFishCount >= 1000);
	};
	scr_KSW_AddAchievement("catch1000Ybrik","Ybrik Lover","Catch 1000 Fish As Ybrik",spr_KSW_Achievement_Icon_Default,achievementUnlockMethod);
	#endregion
	#endregion
	
	#region Chip
	#region Catch 100 Fish As Chip
	var achievementUnlockMethod = function()
	{
		return (global.KSW_CharacterList[global.KSW_CharacterIDs[? "chip"]].caughtFishCount >= 100);
	};
	scr_KSW_AddAchievement("catch100Chip","Chip Fan","Catch 100 Fish As Chip",spr_KSW_Achievement_Icon_Default,achievementUnlockMethod);
	#endregion
	
	#region Catch 1000 Fish As Chip
	var achievementUnlockMethod = function()
	{
		return (global.KSW_CharacterList[global.KSW_CharacterIDs[? "chip"]].caughtFishCount >= 1000);
	};
	scr_KSW_AddAchievement("catch1000Chip","Chip Lover","Catch 1000 Fish As Chip",spr_KSW_Achievement_Icon_Default,achievementUnlockMethod);
	#endregion
	#endregion
	
	#region Kracko
	#region Catch 100 Fish As Kracko
	var achievementUnlockMethod = function()
	{
		return (global.KSW_CharacterList[global.KSW_CharacterIDs[? "kracko"]].caughtFishCount >= 100);
	};
	scr_KSW_AddAchievement("catch100Kracko","Kracko Fan","Catch 100 Fish As Kracko",spr_KSW_Achievement_Icon_Default,achievementUnlockMethod);
	#endregion
	
	#region Catch 1000 Fish As Kracko
	var achievementUnlockMethod = function()
	{
		return (global.KSW_CharacterList[global.KSW_CharacterIDs[? "kracko"]].caughtFishCount >= 1000);
	};
	scr_KSW_AddAchievement("catch1000Kracko","Kracko Lover","Catch 1000 Fish As Kracko",spr_KSW_Achievement_Icon_Default,achievementUnlockMethod);
	#endregion
	#endregion
	
	#region N-Z
	#region Catch 100 Fish As N-Z
	var achievementUnlockMethod = function()
	{
		return (global.KSW_CharacterList[global.KSW_CharacterIDs[? "nz"]].caughtFishCount >= 100);
	};
	scr_KSW_AddAchievement("catch100NZ","N-Z Fan","Catch 100 Fish As N-Z",spr_KSW_Achievement_Icon_Default,achievementUnlockMethod);
	#endregion
	
	#region Catch 1000 Fish As N-Z
	var achievementUnlockMethod = function()
	{
		return (global.KSW_CharacterList[global.KSW_CharacterIDs[? "nz"]].caughtFishCount >= 1000);
	};
	scr_KSW_AddAchievement("catch1000NZ","N-Z Lover","Catch 1000 Fish As N-Z",spr_KSW_Achievement_Icon_Default,achievementUnlockMethod);
	#endregion
	#endregion
	
	#region Kabula
	#region Catch 100 Fish As Kabula
	var achievementUnlockMethod = function()
	{
		return (global.KSW_CharacterList[global.KSW_CharacterIDs[? "kabula"]].caughtFishCount >= 100);
	};
	scr_KSW_AddAchievement("catch100Kabula","Kabula Fan","Catch 100 Fish As Kabula",spr_KSW_Achievement_Icon_Default,achievementUnlockMethod);
	#endregion
	
	#region Catch 1000 Fish As Kabula
	var achievementUnlockMethod = function()
	{
		return (global.KSW_CharacterList[global.KSW_CharacterIDs[? "kabula"]].caughtFishCount >= 1000);
	};
	scr_KSW_AddAchievement("catch1000Kabula","Kabula Lover","Catch 1000 Fish As Kabula",spr_KSW_Achievement_Icon_Default,achievementUnlockMethod);
	#endregion
	#endregion
	
	#region Starman
	#region Catch 100 Fish As Starman
	var achievementUnlockMethod = function()
	{
		return (global.KSW_CharacterList[global.KSW_CharacterIDs[? "starman"]].caughtFishCount >= 100);
	};
	scr_KSW_AddAchievement("catch100Starman","Starman Fan","Catch 100 Fish As Starman",spr_KSW_Achievement_Icon_Default,achievementUnlockMethod);
	#endregion
	
	#region Catch 1000 Fish As Starman
	var achievementUnlockMethod = function()
	{
		return (global.KSW_CharacterList[global.KSW_CharacterIDs[? "starman"]].caughtFishCount >= 1000);
	};
	scr_KSW_AddAchievement("catch1000Starman","Starman Lover","Catch 1000 Fish As Starman",spr_KSW_Achievement_Icon_Default,achievementUnlockMethod);
	#endregion
	#endregion
	
	#region Adventure Kirby
	#region Catch 100 Fish As Adventure Kirby
	var achievementUnlockMethod = function()
	{
		return (global.KSW_CharacterList[global.KSW_CharacterIDs[? "adventureKirby"]].caughtFishCount >= 100);
	};
	scr_KSW_AddAchievement("catch100AdventureKirby","Adventure Kirby Fan","Catch 100 Fish As Starman",spr_KSW_Achievement_Icon_Default,achievementUnlockMethod);
	#endregion
	
	#region Catch 1000 Fish As Adventure Kirby
	var achievementUnlockMethod = function()
	{
		return (global.KSW_CharacterList[global.KSW_CharacterIDs[? "adventureKirby"]].caughtFishCount >= 1000);
	};
	scr_KSW_AddAchievement("catch1000AdventureKirby","Adventure Kirby Lover","Catch 1000 Fish As Adventure Kirby",spr_KSW_Achievement_Icon_Default,achievementUnlockMethod);
	#endregion
	#endregion
	#endregion
	
	#region Collect Spray Paints
	#region Collect 1 Spray Paint
	var achievementUnlockMethod = function()
	{
		var isUnlocked = false;
		
		for (var i = 0; i < ds_map_size(global.KSW_CharacterIDs); i++)
		{
			for (var j = 0; j < array_length(global.KSW_CharacterList[i].sprayPaints); j++)
			{
				if ((!global.KSW_CharacterList[i].sprayPaints[j].isDefault) and (global.KSW_CharacterList[i].sprayPaints[j].isUnlocked))
				{
					isUnlocked = true;
					break;
				}
			}
		}
		
		return (isUnlocked);
	};
	scr_KSW_AddAchievement("collectSprayPaints1","Beginner Painter","Collect 1 Spray Paint",spr_KSW_Achievement_Icon_Default,achievementUnlockMethod);
	#endregion
	
	#region Collect 30 Percent of the Spray Paints
	var achievementUnlockMethod = function()
	{
		for (var i = 0; i < ds_map_size(global.KSW_CharacterIDs); i++)
		{
			var unlockedSorayPaintCount = 0;
			
			for (var j = 0; j < array_length(global.KSW_CharacterList[i].sprayPaints); j++) if (global.KSW_CharacterList[i].sprayPaints[j].isUnlocked) unlockedSorayPaintCount += 1;
		}
		
		return (unlockedSorayPaintCount >= floor(global.KSW_TotalSprayPaintCount * .3));
	};
	scr_KSW_AddAchievement("collectSprayPaints30","Graffiti Artist","Collect 30 Percent of Spray Paints",spr_KSW_Achievement_Icon_Default,achievementUnlockMethod);
	#endregion
	
	#region Collect 50 Percent of the Spray Paints
	var achievementUnlockMethod = function()
	{
		for (var i = 0; i < ds_map_size(global.KSW_CharacterIDs); i++)
		{
			var unlockedSorayPaintCount = 0;
			
			for (var j = 0; j < array_length(global.KSW_CharacterList[i].sprayPaints); j++) if (global.KSW_CharacterList[i].sprayPaints[j].isUnlocked) unlockedSorayPaintCount += 1;
		}
		
		return (unlockedSorayPaintCount >= floor(global.KSW_TotalSprayPaintCount / 2));
	};
	scr_KSW_AddAchievement("collectSprayPaints50","Color Theorist","Collect 50 Percent of Spray Paints",spr_KSW_Achievement_Icon_Default,achievementUnlockMethod);
	#endregion
	
	#region Collect All Spray Paints
	var achievementUnlockMethod = function()
	{
		for (var i = 0; i < ds_map_size(global.KSW_CharacterIDs); i++)
		{
			var unlockedSorayPaintCount = 0;
			
			for (var j = 0; j < array_length(global.KSW_CharacterList[i].sprayPaints); j++) if (global.KSW_CharacterList[i].sprayPaints[j].isUnlocked) unlockedSorayPaintCount += 1;
		}
		
		return (unlockedSorayPaintCount >= floor(global.KSW_TotalSprayPaintCount));
	};
	scr_KSW_AddAchievement("collectSprayPaintsAll","Artistic Connosieur","Collect All Spray Paints",spr_KSW_Achievement_Icon_Default,achievementUnlockMethod);
	#endregion
	#endregion
	
	#region Collect Hats
	#region Collect 1 Hat
	var achievementUnlockMethod = function()
	{
		var isUnlocked = false;
		
		for (var i = 0; i < ds_map_size(global.KSW_CharacterIDs); i++)
		{
			for (var j = 0; j < array_length(global.KSW_CharacterList[i].hats); j++)
			{
				if ((!global.KSW_CharacterList[i].hats[j].isDefault) and (global.KSW_CharacterList[i].hats[j].isUnlocked))
				{
					isUnlocked = true;
					break;
				}
			}
		}
		
		return (isUnlocked);
	};
	scr_KSW_AddAchievement("collectHats1","Nice Hat","Collect 1 Hat",spr_KSW_Achievement_Icon_Default,achievementUnlockMethod);
	#endregion
	
	#region Collect 30 Percent of the Hats
	var achievementUnlockMethod = function()
	{
		for (var i = 0; i < ds_map_size(global.KSW_CharacterIDs); i++)
		{
			var unlockedHatCount = 0;
			
			for (var j = 0; j < array_length(global.KSW_CharacterList[i].hats); j++) if (global.KSW_CharacterList[i].hats[j].isUnlocked) unlockedHatCount += 1;
		}
		
		return (unlockedHatCount >= floor(global.KSW_HatCount * .3));
	};
	scr_KSW_AddAchievement("collectHats30","Hat Rack","Collect 30 Percent of Hats",spr_KSW_Achievement_Icon_Default,achievementUnlockMethod);
	#endregion
	
	#region Collect 50 Percent of the Hats
	var achievementUnlockMethod = function()
	{
		for (var i = 0; i < ds_map_size(global.KSW_CharacterIDs); i++)
		{
			var unlockedHatCount = 0;
			
			for (var j = 0; j < array_length(global.KSW_CharacterList[i].hats); j++) if (global.KSW_CharacterList[i].hats[j].isUnlocked) unlockedHatCount += 1;
		}
		
		return (unlockedHatCount >= floor(global.KSW_HatCount / 2));
	};
	scr_KSW_AddAchievement("collectHats50","Hat Fanatic","Collect 50 Percent of Hats",spr_KSW_Achievement_Icon_Default,achievementUnlockMethod);
	#endregion
	
	#region Collect All Hats
	var achievementUnlockMethod = function()
	{
		for (var i = 0; i < ds_map_size(global.KSW_CharacterIDs); i++)
		{
			var unlockedHatCount = 0;
			
			for (var j = 0; j < array_length(global.KSW_CharacterList[i].hats); j++) if (global.KSW_CharacterList[i].hats[j].isUnlocked) unlockedHatCount += 1;
		}
		
		return (unlockedHatCount >= floor(global.KSW_HatCount));
	};
	scr_KSW_AddAchievement("collectHatsAll","Haberdashery","Collect All Hats",spr_KSW_Achievement_Icon_Default,achievementUnlockMethod);
	#endregion
	#endregion
	
	#region Collect Bobbers
	#region Collect 1 Bobber
	var achievementUnlockMethod = function()
	{
		var isUnlocked = 0;
		
		for (var i = 0; i < ds_map_size(global.KSW_BobberIDs); i++)
		{
			if ((!global.KSW_BobberList[i].isHidden) and (global.KSW_BobberList[i].isUnlocked) and (global.KSW_BobberList[i].tiedAchievementName == ""))
			{
				isUnlocked = true;
				break;
			}
		}
		
		return (isUnlocked);
	};
	scr_KSW_AddAchievement("collectBobbers1","Floater","Collect 1 Bobber",spr_KSW_Achievement_Icon_Default,achievementUnlockMethod);
	#endregion
	
	#region Collect 30 Percent of the Bobbers
	var achievementUnlockMethod = function()
	{
		var unlockedBobberCount = 0;
		
		for (var i = 0; i < ds_map_size(global.KSW_BobberIDs); i++)
		{
			if ((!global.KSW_BobberList[i].isHidden) and (global.KSW_BobberList[i].isUnlocked) and (global.KSW_BobberList[i].tiedAchievementName == "")) unlockedBobberCount += 1;
		}
		
		return (unlockedBobberCount >= floor(global.KSW_VisibleBobberCount * .3));
	};
	scr_KSW_AddAchievement("collectBobbers30","Lovely Trinkets","Collect 30 Percent of Bobbers",spr_KSW_Achievement_Icon_Default,achievementUnlockMethod);
	#endregion
	
	#region Collect 50 Percent of the Bobbers
	var achievementUnlockMethod = function()
	{
		var unlockedBobberCount = 0;
		
		for (var i = 0; i < ds_map_size(global.KSW_BobberIDs); i++)
		{
			if ((!global.KSW_BobberList[i].isHidden) and (global.KSW_BobberList[i].isUnlocked) and (global.KSW_BobberList[i].tiedAchievementName == "")) unlockedBobberCount += 1;
		}
		
		return (unlockedBobberCount >= floor(global.KSW_VisibleBobberCount / 2));
	};
	scr_KSW_AddAchievement("collectBobbers50","A Floating Collection","Collect 50 Percent of Bobbers",spr_KSW_Achievement_Icon_Default,achievementUnlockMethod);
	#endregion
	
	#region Collect All Bobbers
	var achievementUnlockMethod = function()
	{
		var unlockedBobberCount = 0;
		
		for (var i = 0; i < ds_map_size(global.KSW_BobberIDs); i++)
		{
			if ((!global.KSW_BobberList[i].isHidden) and (global.KSW_BobberList[i].isUnlocked) and (global.KSW_BobberList[i].tiedAchievementName == "")) unlockedBobberCount += 1;
		}
		
		return (unlockedBobberCount >= floor(global.KSW_VisibleBobberCount));
	};
	scr_KSW_AddAchievement("collectBobbersAll","Hook, Line, and Sinker","Collect All Bobbers",spr_KSW_Achievement_Icon_Default,achievementUnlockMethod);
	#endregion
	#endregion
	
	#region Collect Baits
	#region Collect 1 Bait
	var achievementUnlockMethod = function()
	{
		return (global.KSW_UnlockedBaitCount >= 1);
	};
	scr_KSW_AddAchievement("collectBait1","A Little Boost","Collect 1 Bait",spr_KSW_Achievement_Icon_Default,achievementUnlockMethod);
	#endregion
	
	#region Collect All Baits
	var achievementUnlockMethod = function()
	{
		return (global.KSW_UnlockedBaitCount >= global.KSW_BaitCount);
	};
	scr_KSW_AddAchievement("collectBaitAll","Buffet of Bait","Collect All Baits",spr_KSW_Achievement_Icon_Default,achievementUnlockMethod);
	#endregion
	#endregion
	
	#region Catch All Unique Fish In Stages
	#region Catch All Unique Fish In Grass Beach
	var achievementUnlockMethod = function()
	{
		return (global.KSW_StageList[? "grassBeach"].fishCount >= global.KSW_StageList[? "grassBeach"].fishCountMax);
	};
	scr_KSW_AddAchievement("catchUniqueGrassBeach","Ice Cream Islander","Catch All Unique Fish In Grass Beach",spr_KSW_Achievement_Icon_Default,achievementUnlockMethod);
	#endregion
	
	#region Catch All Unique Fish In Cream Crevasse
	var achievementUnlockMethod = function()
	{
		return (global.KSW_StageList[? "creamCrevasse"].fishCount >= global.KSW_StageList[? "creamCrevasse"].fishCountMax);
	};
	scr_KSW_AddAchievement("catchUniqueCreamCrevasse","Snowman's Land","Catch All Unique Fish In Cream Crevasse",spr_KSW_Achievement_Icon_Default,achievementUnlockMethod);
	#endregion
	
	#region Catch All Unique Fish In Hallow Reen
	var achievementUnlockMethod = function()
	{
		return (global.KSW_StageList[? "hallowReen"].fishCount >= global.KSW_StageList[? "hallowReen"].fishCountMax);
	};
	scr_KSW_AddAchievement("catchUniqueHallowReen","Scary Monster","Catch All Unique Fish In Hallow Reen",spr_KSW_Achievement_Icon_Default,achievementUnlockMethod);
	#endregion
	
	#region Catch All Unique Fish In Serrano Springs
	var achievementUnlockMethod = function()
	{
		return (global.KSW_StageList[? "serranoSprings"].fishCount >= global.KSW_StageList[? "serranoSprings"].fishCountMax);
	};
	scr_KSW_AddAchievement("catchUniqueSerranoSprings","Hotty Heaty Volcano","Catch All Unique Fish In Serrano Springs",spr_KSW_Achievement_Icon_Default,achievementUnlockMethod);
	#endregion
	
	#region Catch All Unique Fish In Android Port
	var achievementUnlockMethod = function()
	{
		return (global.KSW_StageList[? "androidPort"].fishCount >= global.KSW_StageList[? "androidPort"].fishCountMax);
	};
	scr_KSW_AddAchievement("catchUniqueAndroidPort","Level One of Robot Hell","Catch All Unique Fish In Android Port",spr_KSW_Achievement_Icon_Default,achievementUnlockMethod);
	#endregion
	#endregion
	
	#region Playtime
	#region Play for an Hour
	var achievementUnlockMethod = function()
	{
		return (global.timePlayed_Hours >= 1);
	};
	scr_KSW_AddAchievement("playtime1","Enjoyer","Play for an Hour",spr_KSW_Achievement_Icon_Enjoyer,achievementUnlockMethod);
	#endregion
	
	#region Play for 5 Hours
	var achievementUnlockMethod = function()
	{
		return (global.timePlayed_Hours >= 5);
	};
	scr_KSW_AddAchievement("playtime5","Fan","Play for 5 Hours",spr_KSW_Achievement_Icon_Fan,achievementUnlockMethod);
	#endregion
	
	#region Play for 20 Hours
	var achievementUnlockMethod = function()
	{
		return (global.timePlayed_Hours >= 20);
	};
	scr_KSW_AddAchievement("playtime20","True Obsessive","Play for 20 Hours",spr_KSW_Achievement_Icon_TrueObsessive,achievementUnlockMethod,global.KSW_BobberIDs[? "kirby"]);
	#endregion
	#endregion
	
	#region Secrets
	#region Catch an Anomaly
	var achievementUnlockMethod = function()
	{
		return (global.KSW_CaughtShinyFishCount >= 1);
	};
	scr_KSW_AddAchievement("catchShiny","Geiger Counter","Catch an Anomaly",spr_KSW_Achievement_Icon_GeigerCounter,achievementUnlockMethod,global.KSW_BobberIDs[? "zero"]);
	#endregion
	
	#region Catch All Shinies
	var achievementUnlockMethod = function()
	{
		return (global.KSW_CaughtShinyFishCount >= global.KSW_FishCount);
	};
	scr_KSW_AddAchievement("catchShinyAll","True Omni","Collect All Shinies",spr_KSW_Achievement_Icon_TrueOmni,achievementUnlockMethod,,true);
	#endregion
	
	#region Collect 1 Shiny Bobber
	var achievementUnlockMethod = function()
	{
		var isUnlocked = 0;
		
		for (var i = 0; i < ds_map_size(global.KSW_BobberIDs); i++)
		{
			if ((!global.KSW_BobberList[i].isHidden) and (global.KSW_BobberList[i].shinyIsUnlocked))
			{
				isUnlocked = true;
				break;
			}
		}
		
		return (isUnlocked);
	};
	scr_KSW_AddAchievement("collectShinyBobbers1","Floater","Collect 1 Bobber",spr_KSW_Achievement_Icon_Default,achievementUnlockMethod);
	#endregion
	
	#region Collect All Shiny Bobbers
	var achievementUnlockMethod = function()
	{
		var unlockedBobberCount = 0;
		
		for (var i = 0; i < ds_map_size(global.KSW_BobberIDs); i++)
		{
			if ((!global.KSW_BobberList[i].isHidden) and (global.KSW_BobberList[i].shinyIsUnlocked)) unlockedBobberCount += 1;
		}
		
		return (unlockedBobberCount >= floor(global.KSW_VisibleBobberCount));
	};
	scr_KSW_AddAchievement("collectShinyBobbersAll","Hook, Line, and Sinker","Collect All Bobbers",spr_KSW_Achievement_Icon_Default,achievementUnlockMethod);
	#endregion
	#endregion
	
	#region Completion
	#region Obtain All Stars
	var achievementUnlockMethod = function()
	{
		var canObtain = true;
		
		for (var i = 0; i < ds_map_size(global.KSW_AchievementIDs); i++)
		{
			if ((!global.KSW_AchievementList[i].isObtained) and (global.KSW_AchievementList[i].id != "getAllStars") and (!global.KSW_AchievementList[i].isHidden))
			{
				canObtain = false;
				break;
			}
		}
		
		return canObtain;
	};
	scr_KSW_AddAchievement("getAllStars","Master's Crown","Obtain All Stars",spr_KSW_Achievement_Icon_MastersCrown,achievementUnlockMethod,global.KSW_BobberIDs[? "masterCrown"]);
	#endregion
	
	#region Do Everything
	var achievementUnlockMethod = function()
	{
		var canObtain = true;
		
		for (var i = 0; i < ds_map_size(global.KSW_AchievementIDs); i++)
		{
			if ((!global.KSW_AchievementList[i].isObtained) and (global.KSW_AchievementList[i].id != "doEverything"))
			{
				canObtain = false;
				break;
			}
		}
		
		return canObtain;
	};
	scr_KSW_AddAchievement("doEverything","Legend of the Night","Do Everything",spr_KSW_Achievement_Icon_LegendOfTheNight,achievementUnlockMethod,global.KSW_BobberIDs[? "legend"],true);
	#endregion
	#endregion
	#endregion
}