///@description KSW - UI - Customize - Pages - Music - Main

function scr_KSW_UI_Customize_Pages_Music_Main()
{
	var visibleCount = 3;
	var startIndex = max(0,floor(pageOffset / selectionOffset) - 1);
	var endIndex = min(startIndex + visibleCount + 2,selectionCount);
	
	#region Mouse Wheel Scroll
	if (selectionCount > 3)
	{
		if ((mouse_wheel_down()) and (pageOffsetTarget < max(0,selectionCount - 3) * selectionOffset))
		{
			scr_PlaySfx(snd_KSW_BossHealth);
			pageOffsetTarget += selectionOffset;
		}
		
		if ((mouse_wheel_up()) and (pageOffsetTarget > 0))
		{
			scr_PlaySfx(snd_KSW_BossHealth);
			pageOffsetTarget -= selectionOffset;
		}
	}
	#endregion
	
	#region Music Customize Buffer
	musicCustomizeBuffer = max(0,musicCustomizeBuffer - speedMultFinal);
	#endregion
	
	#region Drag Scroll
	static dragActive = false;
	static pressArmed = false;
	static dragStartY = 0;
	static dragStartOffset = 0;
	
	if (mouse_check_button_pressed(mb_left))
	{
		if (scr_MouseIsInbetween(0,12,global.gameWidth,141))
		{
			dragStartY = mouse_y;
			dragStartOffset = pageOffset;
			dragActive = true;
		}
	}
	else if ((mouse_check_button(mb_left)) and (dragActive))
	{
		var _dy = mouse_y - dragStartY;
		if (abs(_dy) > 2)
		{
			pressArmed = false;
			mouseSelected = false;
		}
		
		pageOffset = clamp(dragStartOffset - _dy,0,max(0,selectionCount - 3) * selectionOffset);
		pageOffsetTarget = pageOffset;
	}
	else
	{
		dragActive = false;
	}
	
	if ((mouse_check_button_released(mb_left)) and (pressArmed))
	{
		mouseSelected = true;
		pressArmed = false;
	}
	else if (mouse_check_button_released(mb_left))
	{
		pressArmed = false;
	}
	#endregion
	
	for (var i = startIndex; i < endIndex; i++)
	{
		var selectionY = (selectionOffset * i) - pageOffset;
		
		if ((!mousePressed) and (scr_MouseIsInbetween(0,selectionY + 12,global.gameWidth,selectionY + 12 + selectionOffset)) and (mouse_check_button_pressed(mb_left)))
		{
			mousePressed = true;
			
			if (selection == i)
			{
				pressArmed = true;
			}
			else
			{
				scr_PlaySfx(snd_KSW_BossHealth);
					
				selection = i;
				pageOffsetTarget = selection * selectionOffset;
			}
		}
	}
	
	#region Selection Animation
	selectionIndex = (selectionIndex + selectionSpd) % selectionNumber;
	selectionScale = 1 + sine_wave(current_time / 6000,.1,.05,0);
	#endregion
	
	#region Page Offset
	pageOffset = lerp(pageOffset,pageOffsetTarget,.1);
	pageOffset = clamp(pageOffset,0,max(0,selectionCount - 3) * selectionOffset);
	#endregion
}