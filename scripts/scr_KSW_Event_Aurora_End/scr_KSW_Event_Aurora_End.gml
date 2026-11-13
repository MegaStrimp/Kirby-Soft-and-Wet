///@description KSW - Event - Aurora - End

function scr_KSW_Event_Aurora_End()
{
	with (obj_KSW_Event_Aurora_Background)
	{
		alphaTarget = 0;
	}
	
	with (obj_KSW_GameController)
	{
		catchInput_HasAllInputs = false;
		
		failBarBack = failBarBackDefault;
		failBarTexture = failBarTextureDefault;
	}
}