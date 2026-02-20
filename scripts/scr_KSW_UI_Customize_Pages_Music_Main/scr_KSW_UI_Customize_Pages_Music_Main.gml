///@description KSW - UI - Customize - Pages - Music - Main

function scr_KSW_UI_Customize_Pages_Music_Main()
{
	var visibleCount = 3;
	var startIndex = max(0,floor(pageOffset / selectionOffset) - 1);
	var endIndex = min(startIndex + visibleCount + 2,selectionCount);
	
	for (var i = startIndex; i < endIndex; i++)
	{
		var selectionY = (selectionOffset * i) - pageOffset;
		
		if ((!mousePressed) and (scr_MouseIsInbetween(0,selectionY + 12,global.gameWidth,selectionY + 12 + selectionOffset)) and (mouse_check_button_pressed(mb_left)))
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
	
	#region Page Offset
	pageOffset = lerp(pageOffset,pageOffsetTarget,.1);
	pageOffset = clamp(pageOffset,0,max(0,selectionCount - 3) * selectionOffset);
	#endregion
}