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
	
	#region Timer
	if (coinTimer != -1)
	{
		coinTimer = max(coinTimer - speedMultFinal,0);
		if (coinTimer == 0)
		{
			storedCoins -= 1;
			
			instance_create_depth(x + 14 + (irandom_range(-6,6)),y + 14 + (irandom_range(-6,6)),depth - 1,obj_KSW_UI_Coin);
			
			flag_ThrowCoin = true;
			
			if (storedCoins == 0)
			{
				coinTimer = -1;
			}
			else
			{
				coinTimer = coinTimerMax;
			}
		}
	}
	#endregion
	
	#region Destroy
	if ((y <= -30) and (storedCoins == 0)) instance_destroy();
	#endregion
}