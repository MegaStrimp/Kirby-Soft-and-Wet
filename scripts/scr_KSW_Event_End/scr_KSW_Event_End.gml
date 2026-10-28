///@description KSW - Event - End

function scr_KSW_Event_End()
{
	scr_KSW_UI_BackgroundOverlay_Create(10,layer_get_depth("Player") + 1,false,[c_white],,true).alpha = .2;
	
	if (global.KSW_CurrentEvent != -1)
	{
		script_execute(global.KSW_EventList[global.KSW_CurrentEvent].endScript);
	}
	
	global.KSW_CurrentEvent = -1;
}