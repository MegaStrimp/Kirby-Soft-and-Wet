///@description KSW - Event - End

function scr_KSW_Event_End()
{
	if (global.KSW_CurrentEvent != -1)
	{
		script_execute(global.KSW_EventList[global.KSW_CurrentEvent].setupScript);
	}
	
	global.KSW_CurrentEvent = -1;
}