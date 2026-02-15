///@description Main

if (!localPause)
{
	#region Movement
	scr_Component_WalkAndTurn_Step();
	
	if (x <= 8)
	{
		dirX = 1;
	}
	else if (x >= room_width - 8)
	{
		dirX = -1;
	}
	#endregion
	
	#region Position
	scr_Component_SetPosition(hsp,vsp);
	#endregion
}