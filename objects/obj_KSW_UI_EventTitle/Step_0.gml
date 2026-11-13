///@description Main

if (!localPause)
{
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
}