///@description KSW - Event - Blood Moon - End

function scr_KSW_Event_BloodMoon_End()
{
	with (obj_KSW_Event_BloodMoon_Background)
	{
		alphaTarget = 0;
	}
	
	with (obj_KSW_GameController)
	{
		shinyPityRateMult = 1;
		blockNewFish = false;
		
		scr_KSW_Game_SetPool(playerNum);
	}
}