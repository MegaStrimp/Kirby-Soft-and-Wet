///@description KSW - Load Data

function scr_KSW_LoadData(file)
{
	var fileFinal = file;
	if (!global.isMobile) fileFinal = environment_get_variable("LOCALAPPDATA") + chr(92) + global.gameTitle + chr(92) + file;
	
	ini_open(fileFinal);
	
	#region Gameplay
	global.levelScoreCurrent = ini_read_real("gameplay","score",0);
	global.timePlayed_Seconds = ini_read_real("gameplay","timePlayed_Seconds",0);
	global.timePlayed_Minutes = ini_read_real("gameplay","timePlayed_Minutes",0);
	global.timePlayed_Hours = ini_read_real("gameplay","timePlayed_Hours",0);
	global.KSW_CaughtTotalFishCount = ini_read_real("gameplay","caughtTotalFishCount",0);
	global.KSW_CaughtTotalFishCount_Day = ini_read_real("gameplay","caughtTotalFishCount_Day",0);
	global.KSW_CaughtTotalFishCount_Afternoon = ini_read_real("gameplay","caughtTotalFishCount_Afternoon",0);
	global.KSW_CaughtTotalFishCount_Night = ini_read_real("gameplay","caughtTotalFishCount_Night",0);
	global.KSW_CaughtUniqueFishCount = ini_read_real("gameplay","caughtUniqueFishCount",0);
	global.KSW_CaughtShinyFishCount = ini_read_real("gameplay","caughtShinyFishCount",0);
	global.KSW_ObtainedAchievementCount = ini_read_real("gameplay","obtainedAchievementCount",0);
	#endregion
	
	#region Fish Status
	for (var i = 0; i < ds_map_size(global.KSW_FishIDs); i++)
	{
		var fishTitle = global.KSW_FishList[i].name;
		
		global.KSW_FishList[i].isCaught = ini_read_real("fishStatus",string(fishTitle) + "_Caught",0);
		global.KSW_FishList[i].isCaughtShiny = ini_read_real("fishStatus",string(fishTitle) + "_CaughtShiny",0);
	}
	#endregion
	
	#region Achievement Status
	for (var i = 0; i < ds_map_size(global.KSW_AchievementIDs); i++)
	{
		var achievementID = global.KSW_AchievementList[i].id;
		
		global.KSW_AchievementList[i].isObtained = ini_read_real("achievementStatus",string(achievementID) + "_Obtained",false);
	}
	#endregion
	
	#region Notif Status
	for (var i = 0; i < ds_map_size(global.KSW_NotifIDs); i++)
	{
		var notifID = global.KSW_NotifList[i].id;
		
		if (global.KSW_NotifList[i].isSavable != false)
		{
			global.KSW_NotifList[i].isObtained = ini_read_real("NotifStatus",string(notifID) + "_Obtained",false);
		}
	}
	#endregion
	
	#region Stealth Tutorial Status
	for (var i = 0; i < ds_map_size(global.KSW_StealthTutorialIDs); i++)
	{
		var stealthTutorialID = global.KSW_StealthTutorialList[i].id;
		
		if (global.KSW_StealthTutorialList[i].isSavable != false) global.KSW_StealthTutorialList[i].isObtained = ini_read_real("StealthTutorialStatus",string(stealthTutorialID) + "_Obtained",false);
	}
	#endregion
	
	ini_close();
}