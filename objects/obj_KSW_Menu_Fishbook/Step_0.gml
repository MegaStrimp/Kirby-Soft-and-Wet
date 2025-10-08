///@description Main

#region Variables
var canSelect = true;
if ((localPause) or
(instance_exists(obj_Transition))) canSelect = false;
#endregion

#region Calib Mobe
if (global.debug) scr_KSW_Menu_Fishbook_CalibMode_Step();
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
			scr_KSW_Menu_Component_Navigate_Up();
		}
		
		if (input_check_pressed("down",playerNum))
		{
			scr_KSW_Menu_Component_Navigate_Down();
		}
		
		if (input_check_pressed("left",playerNum))
		{
			scr_KSW_Menu_Component_Navigate_Left();
		}
		
		if (input_check_pressed("right",playerNum))
		{
			scr_KSW_Menu_Component_Navigate_Right();
		}
		
		if (input_check_pressed("L",playerNum))
		{
			scr_KSW_Menu_Component_SwitchPage_L();
		}
		
		if (input_check_pressed("R",playerNum))
		{
			scr_KSW_Menu_Component_SwitchPage_R();
		}
		
		if (((input_check_pressed("A",playerNum)) or (input_check_pressed("start",playerNum))) and (global.KSW_FishList[ds_list_find_value(selectionList,selection)].isCaught != 0))
		{
			scr_PlaySfx(snd_KSW_ButtonYes);
			
			if (global.KSW_FishList[ds_list_find_value(selectionList,selection)].catchAudio != -1) scr_PlaySfx(global.KSW_FishList[ds_list_find_value(selectionList,selection)].catchAudio);
			
			isZoomed = true;
			selectionImageIndex = 0;
			selectionStarCount = 0;
			if (selectionStarCount < global.KSW_FishList[ds_list_find_value(selectionList,selection)].rarity) selectionStarTimer = 20;
		}
		
		if ((input_check_pressed("Y",playerNum)) and (global.KSW_FishList[ds_list_find_value(selectionList,selection)].isCaught != 0) and (global.KSW_FishList[ds_list_find_value(selectionList,selection)].isCaughtShiny != 0))
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
		if ((input_check_pressed("Y",playerNum)) and (global.KSW_FishList[ds_list_find_value(selectionList,selection)].isCaught != 0) and (global.KSW_FishList[ds_list_find_value(selectionList,selection)].isCaughtShiny != 0))
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
	var selectionStart = page * pageSelectionCount;
	var selectionEnd = min((page + 1) * 18,selectionCount);
	
	for (var i = selectionStart; i < selectionEnd; i++)
	{
		var spriteIndex = global.KSW_FishList[ds_list_find_value(selectionList,i)].sprite;
		
		if (spriteIndex != -1)
		{
			var imageSpeed = sprite_get_speed(spriteIndex) / 60 * speedMultFinal;
			fishImageIndex[i] = (fishImageIndex[i] + imageSpeed) % sprite_get_number(spriteIndex);
		}
	}
	
	var spriteIndex = global.KSW_FishList[ds_list_find_value(selectionList,selection)].sprite;
	
	var imageSpeed = sprite_get_speed(spriteIndex) / 60 * speedMultFinal;
	selectionImageIndex = (selectionImageIndex + imageSpeed) % sprite_get_number(spriteIndex);
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
			if (selectionStarCount < global.KSW_FishList[ds_list_find_value(selectionList,selection)].rarity)
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