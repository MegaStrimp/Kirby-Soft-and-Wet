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
	scr_KSW_AddAchievement("catch5000","True Aqualiss","Catch 5000 Fish",spr_KSW_Achievement_Icon_TrueAqualiss,achievementUnlockMethod);
	#endregion
	
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
	scr_KSW_AddAchievement("catchDay1000","True Beach Boy","Catch 1000 Fish at Daytime",spr_KSW_Achievement_Icon_TrueBeachBoy,achievementUnlockMethod);
	#endregion
	
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
	scr_KSW_AddAchievement("catchAfternoon1000","True Romantic","Catch 1000 Fish at Afternoon",spr_KSW_Achievement_Icon_TrueRomantic,achievementUnlockMethod);
	#endregion
	
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
	scr_KSW_AddAchievement("catchNight1000","True Moonlight","Catch 1000 Fish at Midnight",spr_KSW_Achievement_Icon_TrueMoonlight,achievementUnlockMethod);
	#endregion
	
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
	scr_KSW_AddAchievement("combo100","True Hawkeye","Catch 100 Fish Without Failing",spr_KSW_Achievement_Icon_TrueHawkeye,achievementUnlockMethod);
	#endregion
	
	#region Collect 20 Unique Fish
	var achievementUnlockMethod = function()
	{
		return (global.KSW_CaughtUniqueFishCount >= 20);
	};
	scr_KSW_AddAchievement("catchUnique20","Hobbyist","Collect 20 Unique Fish",spr_KSW_Achievement_Icon_Hobbyist,achievementUnlockMethod);
	#endregion
	
	#region Collect 100 Unique Fish
	var achievementUnlockMethod = function()
	{
		return (global.KSW_CaughtUniqueFishCount >= 100);
	};
	scr_KSW_AddAchievement("catchUnique100","Collector","Collect 100 Unique Fish",spr_KSW_Achievement_Icon_Collector,achievementUnlockMethod);
	#endregion
	
	#region Collect All Unique Fishes
	var achievementUnlockMethod = function()
	{
		return (global.KSW_CaughtUniqueFishCount >= global.KSW_FishCount);
	};
	scr_KSW_AddAchievement("catchUniqueAll","Completionist","Collect All Unique Fish",spr_KSW_Achievement_Icon_Completionist,achievementUnlockMethod);
	#endregion
	
	#region Collect All Shinies
	var achievementUnlockMethod = function()
	{
		return (global.KSW_CaughtShinyFishCount >= global.KSW_FishCount);
	};
	scr_KSW_AddAchievement("catchShinyAll","True Omni","Collect All Shinies",spr_KSW_Achievement_Icon_TrueOmni,achievementUnlockMethod,true);
	#endregion
	
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
	scr_KSW_AddAchievement("grams10m","True Matter","Get 9999999 G Worth of Fish",spr_KSW_Achievement_Icon_TrueMatter,achievementUnlockMethod);
	#endregion
	
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
	scr_KSW_AddAchievement("playtime20","True Obsessive","Play for 20 Hours",spr_KSW_Achievement_Icon_TrueObsessive,achievementUnlockMethod);
	#endregion
	
	#region Catch an Anomaly
	var achievementUnlockMethod = function()
	{
		return (global.KSW_CaughtShinyFishCount >= 1);
	};
	scr_KSW_AddAchievement("catchShiny","Geiger Counter","Catch an Anomaly",spr_KSW_Achievement_Icon_GeigerCounter,achievementUnlockMethod);
	#endregion
	
	#region Obtain All Stars
	var achievementUnlockMethod = function()
	{
		var canObtain = true;
		
		for (var i = 0; i < ds_map_size(global.KSW_AchievementIDs); i++)
		{
			if ((!global.KSW_AchievementList[i].isObtained) and (global.KSW_AchievementList[i].id != "catchShiny") and (!global.KSW_AchievementList[i].isHidden))
			{
				canObtain = false;
				break;
			}
		}
		
		return canObtain;
	};
	scr_KSW_AddAchievement("getAllStars","Master's Crown","Obtain All Stars",spr_KSW_Achievement_Icon_MastersCrown,achievementUnlockMethod);
	#endregion
	
	#region Do Everything
	var achievementUnlockMethod = function()
	{
		var canObtain = true;
		
		for (var i = 0; i < ds_map_size(global.KSW_AchievementIDs); i++)
		{
			if ((!global.KSW_AchievementList[i].isObtained) and (global.KSW_AchievementList[i].id != "getAllStars"))
			{
				canObtain = false;
				break;
			}
		}
		
		return canObtain;
	};
	scr_KSW_AddAchievement("doEverything","Legend of the Night","Do Everything",spr_KSW_Achievement_Icon_LegendOfTheNight,achievementUnlockMethod,true);
	#endregion
	#endregion
}