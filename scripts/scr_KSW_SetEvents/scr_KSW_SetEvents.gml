///@description KSW - Set Events

function scr_KSW_SetEvents()
{
	#region Setup
	global.KSW_EventCount = 0;
	
	global.KSW_EventList = [];
	global.KSW_EventIDs = ds_map_create();
	#endregion
	
	#region Stages
	var anyStage = -1;
	var grassBeach = global.KSW_StageIDs[? "grassBeach"];
	var creamCrevasse = global.KSW_StageIDs[? "creamCrevasse"];
	var hallowReen = global.KSW_StageIDs[? "hallowReen"];
	var serranoSprings = global.KSW_StageIDs[? "serranoSprings"];
	var androidPort = global.KSW_StageIDs[? "androidPort"];
	var cloudyPark = global.KSW_StageIDs[? "cloudyPark"];
	#endregion
	
	#region Add Events Here
	#region November Rain
	scr_KSW_AddEvent("novemberRain","November Rain","#5BD8C1",#5BD8C1,anyStage,KSW_Phases.none,scr_KSW_Event_NovemberRain_Setup,scr_KSW_Event_NovemberRain_End);
	#endregion
	#endregion
}