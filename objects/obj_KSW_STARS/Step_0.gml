///@description Main

#region Variables
var canSelect = true;
if ((localPause) or
(instance_exists(obj_Transition))) canSelect = false;
#endregion

#region Selection
var swipeResult = scr_KSW_Menu_Component_Swipe();

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
		
		if ((input_check_pressed("L",playerNum)) or ((scr_MouseIsInbetween(71,3,82,15)) and (mouse_check_button_pressed(mb_left))) or (swipeResult == -1))
		{
			scr_KSW_Menu_Component_SwitchPage_L();
		}
		
		if ((input_check_pressed("R",playerNum)) or ((scr_MouseIsInbetween(156,3,167,15)) and (mouse_check_button_pressed(mb_left))) or (swipeResult == 1))
		{
			scr_KSW_Menu_Component_SwitchPage_R();
		}
		
		if (((input_check_pressed("A",playerNum)) or (input_check_pressed("start",playerNum))))
		{
			scr_PlaySfx(snd_KSW_ButtonYes);
			
			isZoomed = true;
			selectionImageIndex = 0;
		}
		
		for (var i = page * pageSelectionCount; i < min((page + 1) * pageSelectionCount,ds_list_size(selectionList)); i++)
		{
			var boxX = 6 + (40 * (i % pageColumns));
			var boxY = 34 + (40 * floor((i - page * pageSelectionCount) / pageColumns));
			
			if ((scr_MouseIsInbetween(boxX,boxY,boxX + 28,boxY + 28)) and (mouse_check_button_pressed(mb_left)))
			{
				scr_PlaySfx(snd_KSW_ButtonYes);
				
				isZoomed = true;
				selectionImageIndex = 0;
			}
		}
		
		if ((input_check_pressed("B",playerNum)) or ((scr_MouseIsInbetween(4,144,43,156)) and (mouse_check_button_pressed(mb_left))))
		{
			scr_PlaySfx(snd_KSW_ButtonNo);
			
			room_goto(rm_KSW_Menu_TitleScreen);
		}
	}
	else
	{
		if ((input_check_pressed("B",playerNum)) or ((scr_MouseIsInbetween(4,144,43,156)) and (mouse_check_button_pressed(mb_left))))
		{
			scr_PlaySfx(snd_KSW_ButtonNo);
			
			isZoomed = false;
			zoomAlpha = 0;
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
		var spriteIndex = global.KSW_STARList[ds_list_find_value(selectionList,i)].icon;
		
		if (spriteIndex != -1)
		{
			var imageSpeed = sprite_get_speed(spriteIndex) / 60 * speedMultFinal;
			STARImageIndex[i] = (STARImageIndex[i] + imageSpeed) % sprite_get_number(spriteIndex);
		}
	}
	
	var spriteIndex = global.KSW_STARList[ds_list_find_value(selectionList,selection)].icon;
	
	var imageSpeed = sprite_get_speed(spriteIndex) / 60 * speedMultFinal;
	selectionImageIndex = (selectionImageIndex + imageSpeed) % sprite_get_number(spriteIndex);
	#endregion
	
	#region Zoom Alpha
	zoomAlpha = lerp(zoomAlpha,isZoomed,.3);
	#endregion
	
	#region Button Input Timers
	scr_Component_ButtonInputTimer_Step();
	#endregion
}

#region Hint Offset
hintOffset = lerp(hintOffset,32 * isZoomed,.1);
#endregion