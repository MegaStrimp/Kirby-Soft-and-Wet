///@description KSW - Event - Starfall - Setup

function scr_KSW_Event_Starfall_Setup()
{
	instance_create_layer(0,0,"Collision",obj_KSW_Event_Starfall_Background);
	
	with (obj_KSW_GameController)
	{
		pityRateMult = 2;
		
		failBarBack = spr_KSW_Event_Starfall_FailBarBack;
		failBarTexture = spr_KSW_Event_Starfall_FailBarTexture;
	}
}