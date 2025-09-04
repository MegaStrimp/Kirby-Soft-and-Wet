///@description Main

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
#endregion

#region Alpha
alpha = lerp(alpha,alphaTarget,.3);
if ((alphaTarget == 0) and (alpha == 0)) instance_destroy();
#endregion

if (((input_check_pressed("A",playerNum)) or (input_check_pressed("start",playerNum))) and (!instance_exists(obj_KSW_UI_NotifBox)) and (endTimer == -1) and (alphaTarget == 1))
{
	scr_PlaySfx(snd_KSW_Unlock);
	
	global.pause = false;
	alphaTarget = 0;
}

#region Star Timer
if (starTimer != -1)
{
	starTimer = max(starTimer - speedMultFinal,0);
	if (starTimer == 0)
	{
		if (starCount < rarity)
		{
			scr_PlaySfx(snd_KSW_Star);
			
			starCount += 1;
			
			starTimer = starTimerMax;
		}
		else
		{
			starTimer = -1;
		}
	}
}
#endregion

#region End Timer
if (endTimer != -1)
{
	endTimer = max(endTimer - speedMultFinal,0);
	if (endTimer == 0)
	{
		endTimer = -1;
	}
}
#endregion

#region Button Input Timers
scr_Component_ButtonInputTimer_Step();
#endregion