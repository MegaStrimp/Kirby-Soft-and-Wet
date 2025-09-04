///@description Transition - Normal - Step

function scr_Transition_Normal_Step()
{
	#region Go To Target Room
	if (alpha == 1)
	{
		if (global.gamePause_Leave)
		{
			with (obj_FrameworkControl)
			{
				gamePauseEndTimer = 0;
			}
			
			global.gamePause_Leave = false;
		}
		
		if (global.savePreviousRoom) global.roomPrevious = room;
	    room_goto(targetRoom);
	    fade = -1;
	}
	#endregion
	
	#region Set Alpha
	if (((pausable) and (!global.pauseFinal)) or (!pausable))
	{
		alpha = clamp(alpha + (fade * alphaSpd),0,1);
	}
	#endregion
	
	#region Destroy
	if ((alpha == 0) and (fade == -1))
	{
	    instance_destroy();
	}
	#endregion
}