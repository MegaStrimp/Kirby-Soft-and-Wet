///@description KSW - UI - Customize - Pages - Characters - Main

function scr_KSW_UI_Customize_Pages_Characters_Main()
{
	var visibleCount = 3;
	var startIndex = max(0,floor(pageOffset / selectionOffset) - 1);
	var endIndex = min(startIndex + visibleCount + 2,selectionCount);
	
	for (var i = startIndex; i < endIndex; i++)
	{
		var selectionX = (selectionOffset * i) - pageOffset;
		
		var boxX = 10 + selectionX;
		var boxY = 48;
		
		if ((!mousePressed) and (scr_MouseIsInbetween(boxX - 2,boxY - 2,boxX + 70,boxY + 70)) and (mouse_check_button_pressed(mb_left)))
		{
			mousePressed = true;
			
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
	
	#region Selection Animation
	selectionIndex = (selectionIndex + selectionSpd) % selectionNumber;
	selectionScale = 1 + sine_wave(current_time / 6000,.1,.05,0);
	#endregion
	
	#region Background Movement
	backgroundX = (backgroundX + (backgroundSpd * speedMultFinal)) % 50;
	backgroundY = (backgroundY + (backgroundSpd * speedMultFinal)) % 40;
	#endregion
	
	#region Page Offset
	pageOffset = lerp(pageOffset,pageOffsetTarget,.1);
	pageOffset = clamp(pageOffset,0,max(0,selectionCount - 3) * selectionOffset);
	#endregion
}