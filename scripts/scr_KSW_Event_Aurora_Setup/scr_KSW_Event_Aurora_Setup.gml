///@description KSW - Event - Aurora - Setup

function scr_KSW_Event_Aurora_Setup()
{
	instance_create_layer(0,0,"Collision",obj_KSW_Event_Aurora_Background);
	
	with (obj_KSW_GameController)
	{
		catchInput_HasAllInputs = true;
		
		failBarBack = spr_KSW_Event_Aurora_FailBarBack;
		failBarTexture = spr_KSW_Event_Aurora_FailBarTexture;
	}
}