///@description KSW - Event - Gambler - End

function scr_KSW_Event_Gambler_End()
{
	with (obj_KSW_Event_Gambler_Background)
	{
		alphaTarget = 0;
	}
	
	with (obj_KSW_GameController)
	{
		catchInput_HasRoulette = false;
		catchInput_HasInputCoins = false;
		
		failBarBack = failBarBackDefault;
		failBarTexture = failBarTextureDefault;
	}
}