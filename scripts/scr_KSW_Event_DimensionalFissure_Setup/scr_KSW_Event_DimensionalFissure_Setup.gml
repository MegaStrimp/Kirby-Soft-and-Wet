///@description KSW - Event - Dimensional Fissure - Setup

function scr_KSW_Event_DimensionalFissure_Setup()
{
	instance_create_layer(0,0,"Collision",obj_KSW_Event_DimensionalFissure_Background);
	
	with (obj_KSW_GameController)
	{
		passStageCheck = true;
	}
}