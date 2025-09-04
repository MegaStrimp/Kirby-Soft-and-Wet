///@description Main

if (!localPause)
{
	#region Movement
	x = lerp(x,xTarget,.2);
	y = lerp(y,yTarget,.2);
	#endregion
	
	#region Background Movement
	backgroundX = (backgroundX + (backgroundSpd * speedMultFinal)) % 50;
	backgroundY = (backgroundY + (backgroundSpd * speedMultFinal)) % 40;
	#endregion
	
	#region Sprite Animation
	if (spriteIndex != -1)
	{
		var imageSpeed = sprite_get_speed(spriteIndex) / 60 * speedMultFinal;
		imageIndex = (imageIndex + imageSpeed) % sprite_get_number(spriteIndex);
	}
	
	if (isNew) newIndex = min(newNumber,newIndex + newSpd);
	#endregion
	
	#region Shine
	shineIndex = (shineIndex + shineSpd) % shineNumber;
	#endregion
	
	#region Destroy
	if (y <= -30) instance_destroy();
	#endregion
}