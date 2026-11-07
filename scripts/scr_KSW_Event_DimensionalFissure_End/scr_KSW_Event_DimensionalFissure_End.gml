///@description KSW - Event - Dimensional Fissure - End

function scr_KSW_Event_DimensionalFissure_End()
{
	with (obj_KSW_Event_DimensionalFissure_Background)
	{
		alphaTarget = 0;
	}
	
	with (obj_KSW_GameController)
	{
		passStageCheck = false;
	}
}