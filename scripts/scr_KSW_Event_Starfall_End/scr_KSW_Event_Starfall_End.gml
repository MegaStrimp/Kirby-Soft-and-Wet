///@description KSW - Event - Starfall - End

function scr_KSW_Event_Starfall_End()
{
	with (obj_KSW_Event_Starfall_Background)
	{
		alphaTarget = 0;
	}
	
	with (obj_KSW_GameController)
	{
		pityRateMult = 1;
	}
}