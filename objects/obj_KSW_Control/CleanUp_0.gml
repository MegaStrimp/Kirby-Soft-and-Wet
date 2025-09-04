///@description Clean Up

#region Destroy Lists
ds_map_destroy(global.KSW_FishIDs);
ds_map_destroy(global.KSW_NotifIDs);
ds_map_destroy(global.KSW_StealthTutorialIDs);
ds_map_destroy(global.KSW_AchievementIDs);
ds_list_destroy(global.KSW_PopupQueue);
#endregion