///@description Main

if (!localPause)
{
	#region Movement
	vsp = -spd * speedMultFinal;
	#endregion
	
	#region Flash Timer
	if (flashTimer != -1)
	{
		flashTimer = max(flashTimer - speedMultFinal,0);
		if (flashTimer == 0)
		{
			visible = !visible;
			
			flashTimer = flashTimerMax;
		}
	}
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
	
	#region Position
	scr_Component_SetPosition(hsp,vsp);
	#endregion
}