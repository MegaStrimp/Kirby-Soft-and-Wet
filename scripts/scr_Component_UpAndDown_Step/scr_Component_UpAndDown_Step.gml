///@description Component - Up and Down - Step

function scr_Component_UpAndDown_Step()
{
	#region Movement
	vsp += accel * dirY * speedMultFinal;
	
	var maxJumpspeed = jumpspeed * speedMultFinal;
	vsp = clamp(vsp,-maxJumpspeed,maxJumpspeed);
	#endregion
	
	#region Turn Timer
	if (upAndDownComponent_TurnTimer != -1)
	{
		upAndDownComponent_TurnTimer = max(upAndDownComponent_TurnTimer - speedMultFinal,0);
		if (upAndDownComponent_TurnTimer == 0)
		{
			dirY *= -1;
				
			upAndDownComponent_TurnTimer = upAndDownComponent_TurnTimerMax;
		}
	}
	#endregion
}