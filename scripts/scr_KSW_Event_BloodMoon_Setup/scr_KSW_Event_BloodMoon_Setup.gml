///@description KSW - Event - Blood Moon - Setup

function scr_KSW_Event_BloodMoon_Setup()
{
	instance_create_layer(0,0,"Collision",obj_KSW_Event_BloodMoon_Background);
	
	with (obj_KSW_GameController)
	{
		shinyPityRateMult = 1.5;
		blockNewFish = true;
		
		scr_KSW_Game_SetPool(playerNum);
		
		failBarBack = spr_KSW_Event_BloodMoon_FailBarBack;
		failBarTexture = spr_KSW_Event_BloodMoon_FailBarTexture;
	}
}