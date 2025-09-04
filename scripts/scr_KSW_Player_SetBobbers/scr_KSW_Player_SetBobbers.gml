function scr_KSW_Player_SetBobbers()
{
	#region Create The List
	if ((bobberList != -1) and (ds_exists(bobberList,ds_type_list))) ds_list_destroy(bobberList);
	bobberList = ds_list_create();
	#endregion
	
	#region Stock
	ds_list_add(bobberList,spr_KSW_Player_Bobber_Red);
	ds_list_add(bobberList,spr_KSW_Player_Bobber_Blue);
	ds_list_add(bobberList,spr_KSW_Player_Bobber_Green);
	if (global.KSW_AchievementList[global.KSW_AchievementIDs[? "playtime20"]].isObtained) ds_list_add(bobberList,spr_KSW_Player_Bobber_Kirby);
	if (global.KSW_AchievementList[global.KSW_AchievementIDs[? "catch5000"]].isObtained) ds_list_add(bobberList,spr_KSW_Player_Bobber_Star);
	if (global.KSW_AchievementList[global.KSW_AchievementIDs[? "catchUniqueAll"]].isObtained) ds_list_add(bobberList,spr_KSW_Player_Bobber_RainbowDrop);
	if (global.KSW_AchievementList[global.KSW_AchievementIDs[? "grams10m"]].isObtained) ds_list_add(bobberList,spr_KSW_Player_Bobber_DarkMatter);
	if (global.KSW_AchievementList[global.KSW_AchievementIDs[? "combo100"]].isObtained) ds_list_add(bobberList,spr_KSW_Player_Bobber_Starry);
	if (global.KSW_AchievementList[global.KSW_AchievementIDs[? "doEverything"]].isObtained) ds_list_add(bobberList,spr_KSW_Player_Bobber_Legend);
	#endregion
	
	#region Mystery Treat - Deirdre
	if (global.KSW_MysteryTreat_DeirdreBobber)
	{
		ds_list_add(bobberList,spr_KSW_Player_Bobber_Hayuto);
		ds_list_add(bobberList,spr_KSW_Player_Bobber_Deirdre);
	}
	#endregion
	
	//#region Mystery Treat - Gooey's Quest
	//if (global.KSW_MysteryTreat_GooeyQuestBobber)
	//{
	//	ds_list_add(bobberList,spr_KSW_Player_Bobber_RogueMatter);
	//}
	//#endregion
}