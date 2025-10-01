///@description KSW - Load Full Save

function scr_KSW_LoadFullSave()
{
	#region Character Status
	global.KSW_UnlockedCharacterCount = 0;
	global.KSW_UnlockedSprayPaintCount = 0;
	global.KSW_UnlockedHatCount = 0;
	
	for (var i = 0; i < ds_map_size(global.KSW_CharacterIDs); i++)
	{
		global.KSW_CharacterList[i].isUnlocked = true;
		
		global.KSW_UnlockedCharacterCount += 1;
		
		#region Spray Paint Status
		global.KSW_UnlockedSprayPaintCount[i] = 0;
		
		for (var j = 0; j < ds_map_size(global.KSW_SprayPaintIDs); j++)
		{
			global.KSW_CharacterList[i].sprayPaints[j].isUnlocked = true;
			
			global.KSW_UnlockedSprayPaintCount[i] += 1;
		}
		#endregion
		
		#region Hat Status
		global.KSW_UnlockedHatCount[i] = 0;
		
		for (var j = 0; j < ds_map_size(global.KSW_HatIDs); j++)
		{
			global.KSW_CharacterList[i].hats[j].isUnlocked = true;
			
			global.KSW_UnlockedHatCount[i] += 1;
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
		global.KSW_BobberList[i].isUnlocked = true;
		
		ds_list_add(global.KSW_AvailableBobbers,i);
		
		global.KSW_UnlockedBobberCount += 1;
	}
	#endregion
	
	#region Bait Status
	global.KSW_UnlockedBaitCount = 0;
	
	for (var i = 0; i < ds_map_size(global.KSW_BaitIDs); i++)
	{
		global.KSW_BaitList[i].isUnlocked = true;
		
		global.KSW_UnlockedBaitCount += 1;
	}
	#endregion
	
	#region Stage Status
	global.KSW_AvailableStageCount = 0;
	global.KSW_UnlockedStageCount = 0;
	
	for (var i = 0; i < ds_map_size(global.KSW_StageIDs); i++)
	{
		global.KSW_StageList[i].isAvailable = true;
		global.KSW_StageList[i].isUnlocked = true;
		
		global.KSW_AvailableStageCount += 1;
		global.KSW_UnlockedStageCount += 1;
	}
	#endregion
	
	#region Fish Status
	global.KSW_CaughtUniqueFishCount = 0;
	
	for (var i = 0; i < ds_map_size(global.KSW_FishIDs); i++)
	{
		global.KSW_FishList[i].isCaught = 1;
		global.KSW_FishList[i].isCaughtShiny = 1;
		
		global.KSW_CaughtUniqueFishCount += 1;
		global.KSW_CaughtShinyFishCount += 1;
	}
	#endregion
	
	#region Achievement Status
	global.KSW_ObtainedAchievementCount = 0;
	
	for (var i = 0; i < ds_map_size(global.KSW_AchievementIDs); i++)
	{
		global.KSW_ObtainedAchievementCount += 1;
		global.KSW_AchievementList[i].isObtained = true;
	}
	#endregion
	
	#region Notif Status
	for (var i = 0; i < ds_map_size(global.KSW_NotifIDs); i++)
	{
		if (global.KSW_NotifList[i].isSavable != false) global.KSW_NotifList[i].isObtained = true;
	}
	#endregion
	
	#region Stealth Tutorial Status
	for (var i = 0; i < ds_map_size(global.KSW_StealthTutorialIDs); i++)
	{
		if (global.KSW_StealthTutorialList[i].isSavable != false) global.KSW_StealthTutorialList[i].isObtained = true;
	}
	#endregion
}