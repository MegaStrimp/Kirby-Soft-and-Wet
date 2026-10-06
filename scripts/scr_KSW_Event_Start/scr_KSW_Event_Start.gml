///@description KSW - Event - Start

function scr_KSW_Event_Start(targetEventID)
{
	scr_PlaySfx(snd_KSW_EventStart);
	scr_KSW_ParticleSet_EventStar(global.KSW_EventList[targetEventID].colorRaw)
	
	global.KSW_CurrentEvent = targetEventID;
	
	script_execute(global.KSW_EventList[targetEventID].setupScript);
	
	with (obj_KSW_GameController)
	{
		eventTimer = global.KSW_EventList[targetEventID].endTimer;
	}
}