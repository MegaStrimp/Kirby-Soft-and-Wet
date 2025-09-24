///@description KSW - Save Data

function scr_KSW_SaveData(file)
{
	var fileFinal = file;
	if (!global.isMobile) fileFinal = environment_get_variable("LOCALAPPDATA") + chr(92) + global.gameTitle + chr(92) + file;
	
	if (file_exists(fileFinal)) file_delete(fileFinal);
	
	ini_open(fileFinal);
	
	#region Gameplay
	if (global.levelScoreCurrent != 0) ini_write_real("gameplay","score",global.levelScoreCurrent);
	if (global.timePlayed_Seconds != 0) ini_write_real("gameplay","timePlayed_Seconds",global.timePlayed_Seconds);
	if (global.timePlayed_Minutes != 0) ini_write_real("gameplay","timePlayed_Minutes",global.timePlayed_Minutes);
	if (global.timePlayed_Hours != 0) ini_write_real("gameplay","timePlayed_Hours",global.timePlayed_Hours);
	if (global.KSW_CaughtTotalFishCount != 0) ini_write_real("gameplay","caughtTotalFishCount",global.KSW_CaughtTotalFishCount);
	if (global.KSW_CaughtTotalFishCount_Day != 0) ini_write_real("gameplay","caughtTotalFishCount_Day",global.KSW_CaughtTotalFishCount_Day);
	if (global.KSW_CaughtTotalFishCount_Afternoon != 0) ini_write_real("gameplay","caughtTotalFishCount_Afternoon",global.KSW_CaughtTotalFishCount_Afternoon);
	if (global.KSW_CaughtTotalFishCount_Night != 0) ini_write_real("gameplay","caughtTotalFishCount_Night",global.KSW_CaughtTotalFishCount_Night);
	if (global.KSW_CurrentFishCombo != 0) ini_write_real("gameplay","currentFishCombo",global.KSW_CurrentFishCombo);
	#endregion
	
	#region Character Status
	for (var i = 0; i < ds_map_size(global.KSW_CharacterIDs); i++)
	{
		var characterID = global.KSW_CharacterList[i].ID;
		
		if (global.KSW_CharacterList[i].isUnlocked != false) ini_write_real("characterStatus",string(characterID) + "_IsUnlocked",global.KSW_CharacterList[i].isUnlocked);
		
		#region Spray Paint Status
		for (var j = 0; j < ds_map_size(global.KSW_SprayPaintIDs); j++)
		{
			var sprayPaintID = global.KSW_CharacterList[i].sprayPaints[j].ID;
			
			if (global.KSW_CharacterList[i].sprayPaints[j].isUnlocked != false) ini_write_real("sprayPaintStatus",string(characterID) + "_" + string(sprayPaintID) + "_IsUnlocked",global.KSW_CharacterList[i].sprayPaints[j].isUnlocked);
		}
		#endregion
		
		#region Hat Status
		for (var j = 0; j < ds_map_size(global.KSW_HatIDs); j++)
		{
			var hatID = global.KSW_CharacterList[i].hats[j].ID;
		
			if (global.KSW_CharacterList[i].hats[j].isUnlocked != false) ini_write_real("hatStatus",string(characterID) + "_" + string(hatID) + "_IsUnlocked",global.KSW_CharacterList[i].hats[j].isUnlocked);
		}
		#endregion
	}
	#endregion
	
	#region Bobber Status
	for (var i = 0; i < ds_map_size(global.KSW_BobberIDs); i++)
	{
		var bobberID = global.KSW_BobberList[i].ID;
		
		if (global.KSW_BobberList[i].isUnlocked != false) ini_write_real("bobberStatus",string(bobberID) + "_IsUnlocked",global.KSW_BobberList[i].isUnlocked);
	}
	#endregion
	
	#region Bait Status
	for (var i = 0; i < ds_map_size(global.KSW_BaitIDs); i++)
	{
		var baitID = global.KSW_BaitList[i].ID;
		
		if (global.KSW_BaitList[i].isUnlocked != false) ini_write_real("baitStatus",string(baitID) + "_IsUnlocked",global.KSW_BaitList[i].isUnlocked);
	}
	#endregion
	
	#region Hat Status
	for (var i = 0; i < ds_map_size(global.KSW_HatIDs); i++)
	{
		var hatID = global.KSW_HatList[i].ID;
		
		if (global.KSW_HatList[i].isUnlocked != false) ini_write_real("hatStatus",string(hatID) + "_IsUnlocked",global.KSW_HatList[i].isUnlocked);
	}
	#endregion
	
	#region Stage Status
	for (var i = 0; i < ds_map_size(global.KSW_StageIDs); i++)
	{
		var stageID = global.KSW_StageList[i].ID;
		
		if (global.KSW_StageList[i].isAvailable != false) ini_write_real("stageStatus",string(stageID) + "_IsAvailable",global.KSW_StageList[i].isAvailable);
		if (global.KSW_StageList[i].isUnlocked != false) ini_write_real("stageStatus",string(stageID) + "_IsUnlocked",global.KSW_StageList[i].isUnlocked);
	}
	#endregion
	
	#region Fish Status
	for (var i = 0; i < ds_map_size(global.KSW_FishIDs); i++)
	{
		var fishTitle = global.KSW_FishList[i].name;
		
		if (global.KSW_FishList[i].isCaught != 0) ini_write_real("fishStatus",string(fishTitle) + "_Caught",global.KSW_FishList[i].isCaught);
		if (global.KSW_FishList[i].isCaughtShiny != 0) ini_write_real("fishStatus",string(fishTitle) + "_CaughtShiny",global.KSW_FishList[i].isCaughtShiny);
	}
	#endregion
	
	#region Achievement Status
	for (var i = 0; i < ds_map_size(global.KSW_AchievementIDs); i++)
	{
		var achievementID = global.KSW_AchievementList[i].id;
		
		if (global.KSW_AchievementList[i].isObtained != false) ini_write_real("achievementStatus",string(achievementID) + "_Obtained",global.KSW_AchievementList[i].isObtained);
	}
	#endregion
	
	#region Notif Status
	for (var i = 0; i < ds_map_size(global.KSW_NotifIDs); i++)
	{
		var notifID = global.KSW_NotifList[i].id;
		
		if ((global.KSW_NotifList[i].isSavable != false) and (global.KSW_NotifList[i].isObtained != false)) ini_write_real("NotifStatus",string(notifID) + "_Obtained",global.KSW_NotifList[i].isObtained);
	}
	#endregion
	
	#region Stealth Tutorial Status
	for (var i = 0; i < ds_map_size(global.KSW_StealthTutorialIDs); i++)
	{
		var stealthTutorialID = global.KSW_StealthTutorialList[i].id;
		
		if ((global.KSW_StealthTutorialList[i].isSavable != false) and (global.KSW_StealthTutorialList[i].isObtained != false)) ini_write_real("stealthTutorialStatus",string(stealthTutorialID) + "_Obtained",global.KSW_StealthTutorialList[i].isObtained);
	}
	#endregion
	
	ini_close();
}