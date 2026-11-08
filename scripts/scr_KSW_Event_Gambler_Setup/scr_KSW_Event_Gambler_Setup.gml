///@description KSW - Event - Gambler - Setup

function scr_KSW_Event_Gambler_Setup()
{
	instance_create_layer(0,0,"Collision",obj_KSW_Event_Gambler_Background);
	
	with (obj_KSW_GameController)
	{
		catchInput_HasRoulette = true;
		catchInput_HasInputCoins = true;
	}
}