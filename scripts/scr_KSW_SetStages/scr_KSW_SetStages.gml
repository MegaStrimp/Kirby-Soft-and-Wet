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
	
	var targetDayBgColors = [134,255,255,142,255,255];
	
	var targetAfternoonBackgrounds = [scr_KSW_SetBackground_Afternoon_1,
	scr_KSW_SetBackground_Afternoon_2,
	scr_KSW_SetBackground_Afternoon_3,
	scr_KSW_SetBackground_Afternoon_4,
	scr_KSW_SetBackground_Afternoon_5];
	
	var targetAfternoonBgColors = [23,204,255,247,127,255];
	
	var targetNightBackgrounds = [scr_KSW_SetBackground_Night_1,
	scr_KSW_SetBackground_Night_2,
	scr_KSW_SetBackground_Night_3,
	scr_KSW_SetBackground_Night_4,
	scr_KSW_SetBackground_Night_5];
	
	var targetNightBgColors = [161,255,102,205,191,140];
	
	scr_KSW_AddStage("grassBeach","Grass Beach",spr_KSW_UI_Customize_StageIcon_GrassBeach,spr_KSW_Layout_GrassBeach_Day,targetDayBackgrounds,targetDayBgColors,spr_KSW_Layout_GrassBeach_Afternoon,targetAfternoonBackgrounds,targetAfternoonBgColors,spr_KSW_Layout_GrassBeach_Night,targetNightBackgrounds,targetNightBgColors,0,true);
	#endregion
	
	#region Cream Crevasse
	var targetDayBackgrounds = [scr_KSW_SetBackground_Day_1,
	scr_KSW_SetBackground_Day_2,
	scr_KSW_SetBackground_Day_3,
	scr_KSW_SetBackground_Day_4,
	scr_KSW_SetBackground_Day_5];
	
	var targetDayBgColors = [133,110,255,225,117,255];
	
	var targetAfternoonBackgrounds = [scr_KSW_SetBackground_Afternoon_1,
	scr_KSW_SetBackground_Afternoon_2,
	scr_KSW_SetBackground_Afternoon_3,
	scr_KSW_SetBackground_Afternoon_4,
	scr_KSW_SetBackground_Afternoon_5];
	
	var targetAfternoonBgColors = [223,102,255,6,143,255];
	
	var targetNightBackgrounds = [scr_KSW_SetBackground_Night_1,
	scr_KSW_SetBackground_Night_2,
	scr_KSW_SetBackground_Night_3,
	scr_KSW_SetBackground_Night_4,
	scr_KSW_SetBackground_Night_5];
	
	var targetNightBgColors = [146,255,196,114,178,206];
	
	scr_KSW_AddStage("creamCrevasse","Cream Crevasse",spr_KSW_UI_Customize_StageIcon_CreamCrevasse,spr_KSW_Layout_CreamCrevasse_Day,targetDayBackgrounds,targetDayBgColors,spr_KSW_Layout_CreamCrevasse_Afternoon,targetAfternoonBackgrounds,targetAfternoonBgColors,spr_KSW_Layout_CreamCrevasse_Night,targetNightBackgrounds,targetNightBgColors,1000);
	#endregion
	#endregion
}