///@description Component - Basic Horizontal - Step

function scr_Component_BasicHorizontal_Step(changeDirectionWithWall = false,hasTurnTimer = false)
{
	#region Movement
	hsp = movespeed * dirX * speedMultFinal;
	#endregion
	
	#region Change Direction
	if (changeDirectionWithWall)
	{
		if (place_meeting(x + (sign(dirX)),y,obj_Wall))
		{
			dirX *= -1;
		}
	}
	#endregion
	
	#region Turn Timer
	if (hasTurnTimer)
	{
		if (basicHorizontalComponent_TurnTimer != -1)
		{
			basicHorizontalComponent_TurnTimer = max(basicHorizontalComponent_TurnTimer - speedMultFinal,0);
			if (basicHorizontalComponent_TurnTimer == 0)
			{
				dirX *= -1;
				
				basicHorizontalComponent_TurnTimer = basicHorizontalComponent_TurnTimerMax;
			}
		}
	}
	#endregion
}