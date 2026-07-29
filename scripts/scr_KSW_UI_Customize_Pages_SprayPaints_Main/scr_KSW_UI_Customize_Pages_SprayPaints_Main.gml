///@description KSW - UI - Customize - Pages - Spray Paints - Main

function scr_KSW_UI_Customize_Pages_SprayPaints_Main()
{
	if (!localPause)
	{
		for (var i = (page * pageSelectionCount); i < min((page + 1) * pageSelectionCount,ds_list_size(selectionList)); i++)
		{
			var boxX = 6 + (40 * (i % pageColumns));
			var boxY = 34 + (40 * floor((i - page * pageSelectionCount) / pageColumns));
			
			if ((!mousePressed) and (scr_MouseIsInbetween(boxX,boxY,boxX + 28,boxY + 28)) and (mouse_check_button_pressed(mb_left)))
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
	}
}