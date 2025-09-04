///@description Go To Room - GameBoy

function scr_GoToRoom_GameBoy(transitionTargetRoom,isPausable,targetActivateTimer = -1,targetColor = 0)
{
	var fade = -1;
	
	if (!instance_exists(obj_Transition))
	{
		fade = instance_create_depth(0,0,-999,obj_Transition);
		with (fade)
		{
			scr_Transition_GameBoy_Setup();
			
			targetRoom = transitionTargetRoom;
			pausable = isPausable;
			activateTimer = targetActivateTimer;
			transitionStepArgument0 = targetColor;
		}
	}
	
	return fade;
}