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
	#endregion
	
	#region Character Status
	global.KSW_UnlockedCharacterCount = 0;
	
	for (var i = 0; i < ds_map_size(global.KSW_CharacterIDs); i++)
	{
		var characterID = global.KSW_CharacterList[i].ID;
		
		var characterIsUnlocked = ini_read_real("characterStatus",string(characterID) + "_IsUnlocked",false);
		
		global.KSW_CharacterList[i].isUnlocked = characterIsUnlocked;
		
		if (characterIsUnlocked) global.KSW_UnlockedCharacterCount += 1;
		
		#region Spray Paint Status
		global.KSW_UnlockedSprayPaintCount = 0;
		
		for (var j = 0; j < ds_map_size(global.KSW_SprayPaintIDs); j++)
		{
			var sprayPaintID = global.KSW_CharacterList[i].sprayPaints[j].ID;
			
			var sprayPaintIsUnlocked = ini_read_real("sprayPaintStatus",string(characterID) + "_" + string(sprayPaintID) + "_IsUnlocked",false);
			
			global.KSW_CharacterList[i].sprayPaints[j].isUnlocked = sprayPaintIsUnlocked;
			
			if (sprayPaintIsUnlocked) global.KSW_UnlockedSprayPaintCount[j] += 1;
		}
		#endregion
		
		#region Hat Status
		global.KSW_UnlockedHatCount = 0;
		
		for (var j = 0; j < ds_map_size(global.KSW_HatIDs); j++)
		{
			var hatID = global.KSW_CharacterList[i].hats[j].ID;
			
			var hatIsUnlocked = ini_read_real("hatStatus",string(characterID) + "_" + string(hatID) + "_IsUnlocked",false);
			
			global.KSW_CharacterList[i].hats[j].isUnlocked = hatIsUnlocked;
			
			if (hatIsUnlocked) global.KSW_UnlockedHatCount[j] += 1;
		}
		#endregion
	}
	#endregion
	
	#region Bobber Status
	global.KSW_UnlockedBobberCount = 0;
	
	if (ds_exists(global.KSW_AvailableBobbers,ds_type_list)) ds_list_destroy(global.KSW_AvailableBobbers);
	global.KSW_AvailableBobbers = ds_list_create();
	
	for (var i = 0; i < ds_map_size(global.KSW_BobberIDs); i++)
	{
		var bobberID = global.KSW_BobberList[i].ID;
		
		var bobberIsUnlocked = ini_read_real("bobberStatus",string(bobberID) + "_IsUnlocked",false);
		if (global.KSW_BobberList[i].isDefault) bobberIsUnlocked = true;
		
		global.KSW_BobberList[i].isUnlocked = bobberIsUnlocked;
		
		if (bobberIsUnlocked)
		{
			ds_list_add(global.KSW_AvailableBobbers,i);
			global.KSW_UnlockedBobberCount += 1;
		}
	}
	#endregion
	
	#region Bait Status
	global.KSW_UnlockedBaitCount = 0;
	
	for (var i = 0; i < ds_map_size(global.KSW_BaitIDs); i++)
	{
		var baitID = global.KSW_BaitList[i].ID;
		
		var baitIsUnlocked = ini_read_real("baitStatus",string(baitID) + "_IsUnlocked",false);
		
		global.KSW_BaitList[i].isUnlocked = baitIsUnlocked;
		
		if (baitIsUnlocked) global.KSW_UnlockedBaitCount += 1;
	}
	#endregion
	
	#region Stage Status
	global.KSW_AvailableStageCount = 0;
	global.KSW_UnlockedStageCount = 0;
	
	for (var i = 0; i < ds_map_size(global.KSW_StageIDs); i++)
	{
		var stageID = global.KSW_StageList[i].ID;
		
		var stageIsAvailable = ini_read_real("stageStatus",string(stageID) + "_IsAvailable",false);
		var stageIsUnlocked = ini_read_real("stageStatus",string(stageID) + "_IsUnlocked",false);
		
		global.KSW_StageList[i].isAvailable = stageIsAvailable;
		global.KSW_StageList[i].isUnlocked = stageIsUnlocked;
		
		if (stageIsAvailable) global.KSW_AvailableStageCount += 1;
		if (stageIsUnlocked) global.KSW_UnlockedStageCount += 1;
	}
	#endregion
	
	#region Fish Status
	global.KSW_CaughtUniqueFishCount = 0;
	global.KSW_CaughtShinyFishCount = 0;
	
	for (var i = 0; i < ds_map_size(global.KSW_FishIDs); i++)
	{
		var fishTitle = global.KSW_FishList[i].name;
		
		var fishIsCaught = ini_read_real("fishStatus",string(fishTitle) + "_Caught",0);
		var fishIsCaughtShiny = ini_read_real("fishStatus",string(fishTitle) + "_CaughtShiny",0);
		
		global.KSW_FishList[i].isCaught = fishIsCaught;
		global.KSW_FishList[i].isCaughtShiny = fishIsCaughtShiny;
		
		if (fishIsCaught) global.KSW_CaughtUniqueFishCount += 1;
		if (fishIsCaughtShiny) global.KSW_CaughtShinyFishCount += 1;
	}
	#endregion
	
	#region Achievement Status
	global.KSW_ObtainedAchievementCount = 0;
	
	for (var i = 0; i < ds_map_size(global.KSW_AchievementIDs); i++)
	{
		var achievementID = global.KSW_AchievementList[i].id;
		
		var achievementIsObtained = ini_read_real("achievementStatus",string(achievementID) + "_Obtained",false);
		
		global.KSW_AchievementList[i].isObtained = achievementIsObtained;
		
		if (achievementIsObtained) global.KSW_ObtainedAchievementCount += 1;
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
		
		if (global.KSW_StealthTutorialList[i].isSavable != false)
		{
			global.KSW_StealthTutorialList[i].isObtained = ini_read_real("stealthTutorialStatus",string(stealthTutorialID) + "_Obtained",false);
		}
	}
	#endregion
	
	ini_close();
}