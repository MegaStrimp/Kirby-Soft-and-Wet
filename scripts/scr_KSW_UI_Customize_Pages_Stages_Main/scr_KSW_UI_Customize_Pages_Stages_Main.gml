///@description KSW - UI - Customize - Pages - Stages - Main

function scr_KSW_UI_Customize_Pages_Stages_Main()
{
	var visibleCount = 3;
	var startIndex = max(0,floor(pageOffset / selectionOffset) - 1);
	var endIndex = min(startIndex + visibleCount + 2,selectionCount);
	
	#region Swipe
	var swipeResult = scr_KSW_Menu_Component_Swipe();
	if (swipeResult == -1)
	{
		scr_KSW_UI_Customize_Pages_Stages_Left();
	}
	else if (swipeResult == 1)
	{
		scr_KSW_UI_Customize_Pages_Stages_Right();
	}
	#endregion
	
	#region Tap Select
	static pressArmed = false;
	static pressArmedIndex = -1;
	static pressX = 0;
	static pressY = 0;
	
	for (var i = startIndex; i < endIndex; i++)
	{
		var selectionX = (selectionOffset * i) - pageOffset;
		
		var boxX = 10 + selectionX;
		var boxY = 48;
		
		if ((!mousePressed) and (!pressArmed) and (scr_MouseIsInbetween(boxX - 2,boxY - 2,boxX + 70,boxY + 70)) and (mouse_check_button_pressed(mb_left)))
		{
			mousePressed = true;
			pressArmed = true;
			pressArmedIndex = i;
			pressX = mouse_x;
			pressY = mouse_y;
		}
	}
	
	if ((pressArmed) and (mouse_check_button_released(mb_left)))
	{
		pressArmed = false;
		
		if ((swipeResult == 0) and (abs(mouse_x - pressX) < 24) and (abs(mouse_y - pressY) < 24))
		{
			var i = pressArmedIndex;
			
			if (selection == i)
			{
				mouseSelected = true;
			}
			else
			{
				scr_PlaySfx(snd_KSW_BossHealth);
					
				selection = i;
				pageOffsetTarget = selection * selectionOffset;
			}
		}
	}
	else if ((pressArmed) and (!mouse_check_button(mb_left)))
	{
		pressArmed = false;
	}
	#endregion
	
	#region Selection Animation
	selectionIndex = (selectionIndex + selectionSpd) % selectionNumber;
	selectionScale = 1 + sine_wave(current_time / 6000,.1,.05,0);
	#endregion
	
	#region Page Offset
	pageOffset = lerp(pageOffset,pageOffsetTarget,.1);
	pageOffset = clamp(pageOffset,0,max(0,selectionCount - 3) * selectionOffset);
	#endregion
}