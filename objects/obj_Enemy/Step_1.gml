///@description Begin Step

#region Flags
flag_GetHit = false;
flag_GetHurt = false;
#endregion

#region Variables
speedMultFinal = global.speedMultGlobal * global.speedMultEnemy * speedMult;
localPause = (global.pauseFinal) or (localFreezeFrameTimer != -1) or (scr_Entity_OutsideView(32) * pauseOutsideView * (hp > 0) * !hasKnockback * (hurtTimer == -1));

grounded = false;
if (place_meeting(x,y + dirY,obj_ParentWall))
{
	grounded = true;
}

wallAbove = false;
if (place_meeting(x,y - dirY,obj_ParentWall))
{
	wallAbove = true;
}

if (maxHp == -1) maxHp = hp;
#endregion

#region Begin Step
if (enemyBeginStep != -1) script_execute(enemyBeginStep);
#endregion