///@description Main

#region Variables
var canSelect = true;
if ((localPause) or
(instance_exists(obj_Transition))) canSelect = false;

var selectionStart = page * 18;
var selectionEnd = min((page + 1) * 18,global.KSW_FishCount);
#endregion

#region Calib Mobe
if (global.debug)
{
	if (mouse_check_button_pressed(mb_middle))
	{
		calibX = 0;
		calibY = 0;
	}
	
	if (mouse_wheel_up())
	{
		calibMode = true;
		
		if (keyboard_check(vk_shift))
		{
			calibX -= 1;
		}
		else
		{
			calibY -= 1;
		}
	}
	
	if (mouse_wheel_down())
	{
		calibMode = true;
		
		if (keyboard_check(vk_shift))
		{
			calibX += 1;
		}
		else
		{
			calibY += 1;
		}
	}
}
#endregion

#region Shine
shineIndex = (shineIndex + shineSpd) % shineNumber;
#endregion

#region Selection
if (canSelect)
{
	if (!isZoomed)
	{
		if (input_check_pressed("up",playerNum))
		{
			scr_PlaySfx(snd_KSW_BossHealth);
			
			selection -= 6;
			if (selection < selectionStart)
			{
				selection = ((selectionStart - 1) + ((ceil((selectionEnd - selectionStart) / 6) - 1) * 6) + (1 + ((6 + selection) % 6)));
				if (selection >= selectionEnd) selection -= 6;
			}
		}
		
		if (input_check_pressed("down",playerNum))
		{
			scr_PlaySfx(snd_KSW_BossHealth);
			
			selection += 6;
			if (selection >= selectionEnd) selection = (selectionStart + (selection % 6));
		}
		
		if (input_check_pressed("left",playerNum))
		{
			scr_PlaySfx(snd_KSW_BossHealth);
			
			if ((selection % 6) == 0)
			{
				selection = min(selection + 5,selectionEnd - 1);
			}
			else
			{
				selection -= 1;
			}
		}
		
		if (input_check_pressed("right",playerNum))
		{
			scr_PlaySfx(snd_KSW_BossHealth);
			
			if ((selection % 6) == 5)
			{
				selection -= 5;
			}
			else if ((selection) >= selectionEnd - 1)
			{
				selection -= (selection % 6);
			}
			else
			{
				selection += 1;
			}
		}
		
		if (input_check_pressed("L",playerNum))
		{
			scr_PlaySfx(snd_KSW_ButtonChange);
			
			if (page == 0)
			{
				page = page_Max;
			}
			else
			{
				page -= 1;
			}
			selection = min(((page + 1) * 18),global.KSW_FishCount) - 1;
		}
		
		if (input_check_pressed("R",playerNum))
		{
			scr_PlaySfx(snd_KSW_ButtonChange);
			
			if (page == page_Max)
			{
				page = 0;
			}
			else
			{
				page += 1;
			}
			selection = page * 18;
		}
		
		if (((input_check_pressed("A",playerNum)) or (input_check_pressed("start",playerNum))) and (global.KSW_FishList[selection].isCaught != 0))
		{
			scr_PlaySfx(snd_KSW_ButtonYes);
			
			isZoomed = true;
			selectionImageIndex = 0;
			selectionStarCount = 0;
			if (selectionStarCount < global.KSW_FishList[selection].rarity) selectionStarTimer = 20;
		}
		
		if ((input_check_pressed("Y",playerNum)) and (global.KSW_FishList[selection].isCaught != 0) and (global.KSW_FishList[selection].isCaughtShiny != 0))
		{
			scr_PlaySfx(snd_KSW_ButtonChange);
			
			fishIsShiny[selection] = !fishIsShiny[selection];
		}
		
		if (input_check_pressed("B",playerNum))
		{
			scr_PlaySfx(snd_KSW_ButtonNo);
			
			scr_GoToRoom(global.roomPrevious,false);
		}
	}
	else
	{
		if ((input_check_pressed("Y",playerNum)) and (global.KSW_FishList[selection].isCaught != 0) and (global.KSW_FishList[selection].isCaughtShiny != 0))
		{
			scr_PlaySfx(snd_KSW_ButtonChange);
			
			fishIsShiny[selection] = !fishIsShiny[selection];
		}
		
		if (input_check_pressed("B",playerNum))
		{
			scr_PlaySfx(snd_KSW_ButtonNo);
			
			isZoomed = false;
			zoomAlpha = 0;
			selectionStarTimer = -1;
		}
	}
}
#endregion

if (!localPause)
{
	#region Selection Animation
	selectionIndex = (selectionIndex + selectionSpd) % selectionNumber;
	selectionScale = 1 + sine_wave(current_time / 6000,.1,.05,0);
	#endregion
	
	#region Background Movement
	backgroundX = (backgroundX + (backgroundSpd * speedMultFinal)) % 50;
	backgroundY = (backgroundY + (backgroundSpd * speedMultFinal)) % 40;
	#endregion
	
	#region Sprite Animation
	for (var i = selectionStart; i < selectionEnd; i++)
	{
		var spriteIndex = global.KSW_FishList[i].sprite;
		
		if (spriteIndex != -1)
		{
			var imageSpeed = sprite_get_speed(spriteIndex) / 60 * speedMultFinal;
			fishImageIndex[i] = (fishImageIndex[i] + imageSpeed) % sprite_get_number(spriteIndex);
		}
	}
	
	var spriteIndex = global.KSW_FishList[selection].sprite;
	
	if (spriteIndex != -1)
	{
		var imageSpeed = sprite_get_speed(spriteIndex) / 60 * speedMultFinal;
		selectionImageIndex = (selectionImageIndex + imageSpeed) % sprite_get_number(spriteIndex);
	}
	#endregion
	
	#region Zoom Alpha
	zoomAlpha = lerp(zoomAlpha,isZoomed,.3);
	#endregion
	
	#region Selection Star Timer
	if (selectionStarTimer != -1)
	{
		selectionStarTimer = max(selectionStarTimer - speedMultFinal,0);
		if (selectionStarTimer == 0)
		{
			if (selectionStarCount < global.KSW_FishList[selection].rarity)
			{
				scr_PlaySfx(snd_KSW_Star);
				
				selectionStarCount += 1;
				
				selectionStarTimer = selectionStarTimerMax;
			}
			else
			{
				selectionStarTimer = -1;
			}
		}
	}
	#endregion
	
	#region Button Input Timers
	scr_Component_ButtonInputTimer_Step();
	#endregion
}

#region Hint Offset
hintOffset = lerp(hintOffset,32 * isZoomed,.1);
#endregion