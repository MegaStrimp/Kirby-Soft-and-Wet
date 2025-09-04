///@description Main

if (!localPause)
{
	#region Movement
	if (x <= limit1) dirX = 1;
	if (x >= limit2) dirX = -1;
	
	hsp += accel * dirX * speedMultFinal;
	
	var maxMovespeed = movespeed * speedMultFinal;
	hsp = clamp(hsp,-maxMovespeed,maxMovespeed);
	#endregion
	
	#region Position
	scr_Component_SetPosition(hsp);
	#endregion
	
	#region Scale
	image_xscale = dirX;
	#endregion
}