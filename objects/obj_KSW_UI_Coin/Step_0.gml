///@description Main

if (!localPause)
{
	#region Movement
	angleSpd = lerp(angleSpd,0,.1);
	if (angleSpd != 0)
	{
		x += lengthdir_x(angleSpd,startAngle);
		y += lengthdir_y(angleSpd,startAngle);
	}
	
	spd += .2;
	var speedFinal = spd * speedMultFinal;
	
	move_towards_point(targetX,targetY,speedFinal);
	#endregion
	
	#region Get Collected
	if (distance_to_point(targetX,targetY) <= speedFinal)
	{
		with (obj_KSW_GameController)
		{
			coinsInQueue += 1;
		}
		instance_destroy();
	}
	#endregion
	
	#region Animation
	image_speed = 1 * speedMultFinal;
	#endregion
}
else
{
	image_speed = 0;
}