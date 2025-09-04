///@description Main

#region Switch Phase
if (alpha == 1)
{
	global.KSW_CurrentPhase = phase;
	
	room_restart();
	
	fade = -1;
}
#endregion

#region Set Alpha
alpha = clamp(alpha + (fade * alphaSpd),0,1);
#endregion

#region Destroy
if ((alpha == 0) and (fade == -1))
{
	instance_destroy();
}
#endregion