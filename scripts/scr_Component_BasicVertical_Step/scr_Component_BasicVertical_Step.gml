///@description Component - Basic Vertical - Step

function scr_Component_BasicVertical_Step(changeDirectionWithWall = false,hasTurnTimer = false)
{
	#region Movement
	vsp = jumpspeed * dirY * speedMultFinal;
	#endregion
	
	#region Change Direction
	if (changeDirectionWithWall)
	{
		if (place_meeting(x,y + (sign(dirY)),obj_Wall))
		{
			dirY *= -1;
		}
	}
	#endregion
	
	#region Turn Timer
	if (hasTurnTimer)
	{
		if (basicVerticalComponent_TurnTimer != -1)
		{
			basicVerticalComponent_TurnTimer = max(basicVerticalComponent_TurnTimer - speedMultFinal,0);
			if (basicVerticalComponent_TurnTimer == 0)
			{
				dirY *= -1;
				
				basicVerticalComponent_TurnTimer = basicVerticalComponent_TurnTimerMax;
			}
		}
	}
	#endregion
}