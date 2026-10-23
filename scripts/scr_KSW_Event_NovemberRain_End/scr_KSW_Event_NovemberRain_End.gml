///@description KSW - Event - November Rain - End

function scr_KSW_Event_NovemberRain_End()
{
	with (obj_KSW_Event_NovemberRain_Rain) instance_destroy();
	
	with (obj_KSW_GameController)
	{
		findFishTimerMin = findFishTimerMinDefault;
		findFishTimerMax = findFishTimerMaxDefault;
		
		failTimerMax = failTimerMaxDefault;
		failTimerMin = failTimerMinDefault;
		failTimerOffset = failTimerOffsetDefault;
		
		failBarBack = failBarBackDefault;
		failBarTexture = failBarTextureDefault;
	}
}