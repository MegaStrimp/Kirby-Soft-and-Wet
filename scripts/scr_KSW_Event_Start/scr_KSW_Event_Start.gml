///@description KSW - Event - Start

function scr_KSW_Event_Start(targetEventID)
{
	global.KSW_CurrentEvent = targetEventID;
	
	script_execute(global.KSW_EventList[targetEventID].setupScript);
	
	with (obj_KSW_GameController)
	{
		eventTimer = global.KSW_EventList[targetEventID].endTimer;
	}
}