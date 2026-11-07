///@description KSW - Event - Start

function scr_KSW_Event_Start(targetEventID)
{
	scr_PlaySfx(snd_KSW_EventStart);
	scr_KSW_ParticleSet_EventStar(global.KSW_EventList[targetEventID].colorRaw);
	
	scr_KSW_UI_BackgroundOverlay_Create(10,layer_get_depth("Player") + 1,false,[c_white],,true).alpha = .2;
	
	scr_KSW_UI_EventTitle_Create("[" + global.KSW_EventList[targetEventID].color + "]" + string(global.KSW_EventList[targetEventID].name) + "[/color]",global.KSW_EventList[targetEventID].description,obj_KSW_GameController.depth - 1);
	
	global.KSW_CurrentEvent = targetEventID;
	
	script_execute(global.KSW_EventList[targetEventID].setupScript);
	
	with (obj_KSW_GameController)
	{
		eventTimer = global.KSW_EventList[targetEventID].endTimer;
	}
}