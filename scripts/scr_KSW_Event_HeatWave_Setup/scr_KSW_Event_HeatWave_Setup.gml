///@description KSW - Event - Heat Wave - Setup

function scr_KSW_Event_HeatWave_Setup()
{
	instance_create_layer(0,0,"Collision",obj_KSW_Event_HeatWave_Background);
	
	with (obj_KSW_GameController)
	{
		catchInput_Mult = .5;
		coinMult = .5;
	}
}