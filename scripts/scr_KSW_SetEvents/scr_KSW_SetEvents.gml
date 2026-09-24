///@description KSW - Set Events

function scr_KSW_SetEvents()
{
	#region Setup
	global.KSW_EventCount = 0;
	
	global.KSW_EventList = [];
	global.KSW_EventIDs = ds_map_create();
	#endregion
	
	#region Add Events Here
	#region November Rain
	scr_KSW_AddEvent("novemberRain","November Rain","#5BD8C1",scr_KSW_Event_NovemberRain_Setup,scr_KSW_Event_NovemberRain_End);
	#endregion
	#endregion
}