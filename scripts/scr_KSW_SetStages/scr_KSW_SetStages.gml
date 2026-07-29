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
	var targetDayBackgrounds = [scr_KSW_SetBackground_GrassBeach_Day_1,
	scr_KSW_SetBackground_GrassBeach_Day_2,
	scr_KSW_SetBackground_GrassBeach_Day_3,
	scr_KSW_SetBackground_GrassBeach_Day_4,
	scr_KSW_SetBackground_GrassBeach_Day_5];
	
	var targetDayBgColors = [134,255,255,142,255,255];
	
	var targetAfternoonBackgrounds = [scr_KSW_SetBackground_GrassBeach_Afternoon_1,
	scr_KSW_SetBackground_GrassBeach_Afternoon_2,
	scr_KSW_SetBackground_GrassBeach_Afternoon_3,
	scr_KSW_SetBackground_GrassBeach_Afternoon_4,
	scr_KSW_SetBackground_GrassBeach_Afternoon_5];
	
	var targetAfternoonBgColors = [23,204,255,247,127,255];
	
	var targetNightBackgrounds = [scr_KSW_SetBackground_GrassBeach_Night_1,
	scr_KSW_SetBackground_GrassBeach_Night_2,
	scr_KSW_SetBackground_GrassBeach_Night_3,
	scr_KSW_SetBackground_GrassBeach_Night_4,
	scr_KSW_SetBackground_GrassBeach_Night_5];
	
	var targetNightBgColors = [161,255,102,205,191,140];
	
	scr_KSW_AddStage("grassBeach","Grass Beach",spr_KSW_UI_Customize_StageIcon_GrassBeach,spr_KSW_Layout_GrassBeach_Day,targetDayBackgrounds,targetDayBgColors,spr_KSW_Layout_GrassBeach_Afternoon,targetAfternoonBackgrounds,targetAfternoonBgColors,spr_KSW_Layout_GrassBeach_Night,targetNightBackgrounds,targetNightBgColors,0,true);
	#endregion
	
	#region Cream Crevasse
	var targetDayBackgrounds = [scr_KSW_SetBackground_CreamCrevasse_Day_1];
	
	var targetDayBgColors = [133,110,255,225,117,255];
	
	var targetAfternoonBackgrounds = [scr_KSW_SetBackground_CreamCrevasse_Afternoon_1];
	
	var targetAfternoonBgColors = [223,102,255,6,143,255];
	
	var targetNightBackgrounds = [scr_KSW_SetBackground_CreamCrevasse_Night_1];
	
	var targetNightBgColors = [146,255,196,114,178,206];
	
	scr_KSW_AddStage("creamCrevasse","Cream Crevasse",spr_KSW_UI_Customize_StageIcon_CreamCrevasse,spr_KSW_Layout_CreamCrevasse_Day,targetDayBackgrounds,targetDayBgColors,spr_KSW_Layout_CreamCrevasse_Afternoon,targetAfternoonBackgrounds,targetAfternoonBgColors,spr_KSW_Layout_CreamCrevasse_Night,targetNightBackgrounds,targetNightBgColors,500);
	#endregion
	
	#region Hallow Reen
	var targetDayBackgrounds = [scr_KSW_SetBackground_HallowReen_Day_1];
	
	var targetDayBgColors = [239,255,130,195,255,168];
	
	var targetAfternoonBackgrounds = [scr_KSW_SetBackground_HallowReen_Afternoon_1];
	
	var targetAfternoonBgColors = [141,120,69,58,107,48];
	
	var targetNightBackgrounds = [scr_KSW_SetBackground_HallowReen_Night_1,
	scr_KSW_SetBackground_HallowReen_Night_2];
	
	var targetNightBgColors = [0,0,0,0,255,209];
	
	scr_KSW_AddStage("hallowReen","Hallow Reen",spr_KSW_UI_Customize_StageIcon_HallowReen,spr_KSW_Layout_HallowReen_Day,targetDayBackgrounds,targetDayBgColors,spr_KSW_Layout_HallowReen_Afternoon,targetAfternoonBackgrounds,targetAfternoonBgColors,spr_KSW_Layout_HallowReen_Night,targetNightBackgrounds,targetNightBgColors,500);
	#endregion

	#region Serrano Springs
	var targetDayBackgrounds = [scr_KSW_SetBackground_SerranoSprings_Day_1];
	
	var targetDayBgColors = [24,255,255,255,147,0];
	
	var targetAfternoonBackgrounds = [scr_KSW_SetBackground_SerranoSprings_Afternoon_1];
	
	var targetAfternoonBgColors = [19,255,212,219,94,0];
	
	var targetNightBackgrounds = [scr_KSW_SetBackground_SerranoSprings_Night_1];
	
	var targetNightBgColors = [13,255,152,152,47,0];
	
	scr_KSW_AddStage("serranoSprings","Serrano Springs",spr_KSW_UI_Customize_StageIcon_SerranoSprings,spr_KSW_Layout_SerranoSprings_Day,targetDayBackgrounds,targetDayBgColors,spr_KSW_Layout_SerranoSprings_Afternoon,targetAfternoonBackgrounds,targetAfternoonBgColors,spr_KSW_Layout_SerranoSprings_Night,targetNightBackgrounds,targetNightBgColors,500);
	#endregion
	
	#region Android Port
	var targetDayBackgrounds = [scr_KSW_SetBackground_AndroidPort_Day_1];
	
	var targetDayBgColors = [239,255,130,195,255,168];
	
	var targetAfternoonBackgrounds = [scr_KSW_SetBackground_AndroidPort_Afternoon_1];
	
	var targetAfternoonBgColors = [141,120,69,58,107,48];
	
	var targetNightBackgrounds = [scr_KSW_SetBackground_AndroidPort_Night_1];
	
	var targetNightBgColors = [0,0,0,0,255,209];
	scr_KSW_AddStage("androidPort","Android Port",spr_KSW_UI_Customize_StageIcon_HallowReen,spr_KSW_Layout_AndroidPort_Day,targetDayBackgrounds,targetDayBgColors,spr_KSW_Layout_AndroidPort_Afternoon,targetAfternoonBackgrounds,targetAfternoonBgColors,spr_KSW_Layout_AndroidPort_Night,targetNightBackgrounds,targetNightBgColors,500);
	#endregion
	#endregion
}