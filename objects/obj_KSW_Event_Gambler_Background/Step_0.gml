///@description Main

if (!localPause)
{
	#region Alpha
	alpha = lerp(alpha,alphaTarget,.01);
	
	if ((alphaTarget == 0) and (alpha <= .1)) instance_destroy();
	#endregion
	
	#region Rain Animation
	rainIndex = (rainIndex + (rainSpd * speedMultFinal)) % rainNumber;
	#endregion
}