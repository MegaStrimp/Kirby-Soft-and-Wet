///@description Clean Up

#region Destroy Lists
ds_map_destroy(global.KSW_CharacterIDs);
ds_map_destroy(global.KSW_BobberIDs);
ds_map_destroy(global.KSW_BaitIDs);
ds_map_destroy(global.KSW_HatIDs);
ds_map_destroy(global.KSW_SprayPaintIDs);
ds_map_destroy(global.KSW_StageIDs);
ds_map_destroy(global.KSW_FishIDs);
ds_map_destroy(global.KSW_AchievementIDs);
ds_map_destroy(global.KSW_NotifIDs);
ds_map_destroy(global.KSW_StealthTutorialIDs);
ds_map_destroy(global.KSW_MusicIDs);
ds_list_destroy(global.KSW_PopupQueue);
ds_list_destroy(global.KSW_AvailableBobbers);
#endregion