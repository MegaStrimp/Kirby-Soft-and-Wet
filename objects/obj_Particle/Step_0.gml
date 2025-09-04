///@description Main

if (!localPause)
{
	#region Gravity
	if (gravLimit != 0)
	{
		vsp = scr_Entity_Gravity(vsp,grav,gravLimit,speedMultFinal);
	}
	#endregion
	
	#region Friction
	if (decelX != 0) hsp = scr_Entity_Friction(hsp,decelX);
	if (decelY != 0) vsp = scr_Entity_Friction(vsp,decelY);
	#endregion

	#region Special Behavior
	if (specialBehavior_Step != -1) script_execute(specialBehavior_Step);
	#endregion
	
	#region Position
	scr_Component_SetPosition(hsp,vsp);
	#endregion
	
	#region Destroy Timer
	if (destroyTimer != -1)
	{
		destroyTimer = max(destroyTimer - speedMultFinal,0);
		if (destroyTimer == 0)
		{
			instance_destroy();
			
			destroyTimer = -1;
		}
	}
	#endregion
	
	#region Rotate Timer
	if (rotateTimer != -1)
	{
		rotateTimer = max(rotateTimer - speedMultFinal,0);
		if (rotateTimer == 0)
		{
			image_angle += rotateSpd;
			
			rotateTimer = rotateTimerMax;
		}
	}
	#endregion
	
	#region Scale
	image_xscale = scale * dirX;
	image_yscale = scale * dirY;
	#endregion
	
	#region Animation
	image_speed = imageSpeed;
	#endregion
}
else
{
	image_speed = 0;
}