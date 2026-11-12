///@description KSW - Event - November Rain - Setup

function scr_KSW_Event_NovemberRain_Setup()
{
	instance_create_layer(0,0,"Environments",obj_KSW_Event_NovemberRain_Rain);
	
	with (obj_KSW_GameController)
	{
		findFishTimerMin = findFishTimerMinDefault;
		findFishTimerMax = floor(findFishTimerMinDefault * 3);
		
		failTimerMax = failTimerMaxDefault - 80;
		failTimerMin = failTimerMinDefault;
		failTimerOffset = floor(failTimerOffsetDefault / 2.25);
		
		failBarBack = spr_KSW_Event_NovemberRain_FailBarBack;
		failBarTexture = spr_KSW_Event_NovemberRain_FailBarTexture;
	}
}