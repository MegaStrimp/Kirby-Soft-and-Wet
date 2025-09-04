///@description Component - Walk and Turn - Step

function scr_Component_WalkAndTurn_Step()
{
	#region Movement
	hsp += accel * dirX * speedMultFinal;
	
	var maxMovespeed = movespeed * speedMultFinal;
	hsp = clamp(hsp,-maxMovespeed,maxMovespeed);
	#endregion
	
	#region Turn Timer
	if (walkAndTurnComponent_TurnTimer != -1)
	{
		walkAndTurnComponent_TurnTimer = max(walkAndTurnComponent_TurnTimer - speedMultFinal,0);
		if (walkAndTurnComponent_TurnTimer == 0)
		{
			dirX *= -1;
				
			walkAndTurnComponent_TurnTimer = walkAndTurnComponent_TurnTimerMax;
		}
	}
	#endregion
}