///@description KSW - Load Full Save

function scr_KSW_LoadFullSave()
{
	#region Fish Status
	global.KSW_CaughtUniqueFishCount = 0;
	
	for (var i = 0; i < ds_map_size(global.KSW_FishIDs); i++)
	{
		global.KSW_CaughtUniqueFishCount += 1;
		global.KSW_FishList[i].isCaught = 1;
		global.KSW_FishList[i].isCaughtShiny = 1;
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
		global.KSW_NotifList[i].isObtained = true;
	}
	#endregion
	
	#region Stealth Tutorial Status
	for (var i = 0; i < ds_map_size(global.KSW_StealthTutorialIDs); i++)
	{
		global.KSW_StealthTutorialList[i].isObtained = true;
	}
	#endregion
}