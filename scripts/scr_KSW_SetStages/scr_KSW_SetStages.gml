///@description KSW - Set Stages

function scr_KSW_SetStages()
{
	#region Setup
	global.KSW_StageCount = 0;
	
	global.KSW_StageList = [];
	global.KSW_StageIDs = ds_map_create();
	#endregion
	
	#region Add Stages Here
	scr_KSW_AddStage("grassBeach","Grass Beach",spr_KSW_Layout_Day,spr_KSW_Layout_Afternoon,spr_KSW_Layout_Night);
	scr_KSW_AddStage("snow","Snow",spr_KSW_Layout_Day,spr_KSW_Layout_Afternoon,spr_KSW_Layout_Night,KSW_Phases.day);
	#endregion
}