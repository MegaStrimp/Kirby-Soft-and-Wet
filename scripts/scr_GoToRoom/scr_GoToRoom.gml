///@description Go To Room

function scr_GoToRoom(transitionTargetRoom,isPausable,targetActivateTimer = -1)
{
	var fade = -1;
	
	if (!instance_exists(obj_Transition))
	{
		fade = instance_create_depth(0,0,-999,obj_Transition);
		with (fade)
		{
			scr_Transition_Normal_Setup();
			
			targetRoom = transitionTargetRoom;
			pausable = isPausable;
			activateTimer = targetActivateTimer;
		}
	}
	
	return fade;
}