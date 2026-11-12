///@description Main

if (!localPause)
{
	#region Alpha
	alpha = lerp(alpha,alphaTarget,.01);
	
	if ((alphaTarget == 0) and (alpha <= .1)) instance_destroy();
	#endregion
	
	#region Falling Star Timer
	if (fallingStarTimer != -1)
	{
		fallingStarTimer = max(fallingStarTimer - speedMultFinal,0);
		if (fallingStarTimer == 0)
		{
			scr_KSW_ParticleSet_FallingStar(irandom_range(40,400),-10);
			
			fallingStarTimer = fallingStarTimerMax;
		}
	}
	#endregion
}