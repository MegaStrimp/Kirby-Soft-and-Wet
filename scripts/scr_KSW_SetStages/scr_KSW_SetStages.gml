///@description KSW - Set Stages

function scr_KSW_SetStages()
{
	#region Setup
	global.KSW_StageCount = 0;
	
	global.KSW_StageList = [];
	global.KSW_StageIDs = ds_map_create();
	#endregion
	
	#region Add Stages Here
	#region Grass Beach
	var targetDayBackgrounds = [scr_KSW_SetBackground_Day_1,
	scr_KSW_SetBackground_Day_2,
	scr_KSW_SetBackground_Day_3,
	scr_KSW_SetBackground_Day_4,
	scr_KSW_SetBackground_Day_5];
	
	var targetAfternoonBackgrounds = [scr_KSW_SetBackground_Afternoon_1,
	scr_KSW_SetBackground_Afternoon_2,
	scr_KSW_SetBackground_Afternoon_3,
	scr_KSW_SetBackground_Afternoon_4,
	scr_KSW_SetBackground_Afternoon_5];
	
	var targetNightBackgrounds = [scr_KSW_SetBackground_Night_1,
	scr_KSW_SetBackground_Night_2,
	scr_KSW_SetBackground_Night_3,
	scr_KSW_SetBackground_Night_4,
	scr_KSW_SetBackground_Night_5];
	
	scr_KSW_AddStage("grassBeach","Grass Beach",spr_KSW_Layout_GrassBeach_Day,targetDayBackgrounds,spr_KSW_Layout_GrassBeach_Afternoon,targetAfternoonBackgrounds,spr_KSW_Layout_GrassBeach_Night,targetNightBackgrounds);
	#endregion
	
	#region Cream Crevasse
	var targetDayBackgrounds = [scr_KSW_SetBackground_Day_1,
	scr_KSW_SetBackground_Day_2,
	scr_KSW_SetBackground_Day_3,
	scr_KSW_SetBackground_Day_4,
	scr_KSW_SetBackground_Day_5];
	
	var targetAfternoonBackgrounds = [scr_KSW_SetBackground_Afternoon_1,
	scr_KSW_SetBackground_Afternoon_2,
	scr_KSW_SetBackground_Afternoon_3,
	scr_KSW_SetBackground_Afternoon_4,
	scr_KSW_SetBackground_Afternoon_5];
	
	var targetNightBackgrounds = [scr_KSW_SetBackground_Night_1,
	scr_KSW_SetBackground_Night_2,
	scr_KSW_SetBackground_Night_3,
	scr_KSW_SetBackground_Night_4,
	scr_KSW_SetBackground_Night_5];
	
	scr_KSW_AddStage("creamCrevasse","Cream Crevasse",spr_KSW_Layout_CreamCrevasse_Day,targetDayBackgrounds,spr_KSW_Layout_CreamCrevasse_Afternoon,targetAfternoonBackgrounds,spr_KSW_Layout_CreamCrevasse_Night,targetNightBackgrounds);
	#endregion
	#endregion
}