///@description KSW - UI - Customize - Pages - Baits - Main

function scr_KSW_UI_Customize_Pages_Baits_Main()
{
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
			var spriteIndex = global.KSW_BaitList[ds_list_find_value(selectionList,i)].sprite;
			
			if (spriteIndex != -1)
			{
				var imageSpeed = sprite_get_speed(spriteIndex) / 60 * speedMultFinal;
				baitImageIndex[i] = (baitImageIndex[i] + imageSpeed) % sprite_get_number(spriteIndex);
			}
		}
		
		var imageSpeed = sprite_get_speed(spr_KSW_Menu_Fishbook_Selection) / 60 * speedMultFinal;
		selectionImageIndex = (selectionImageIndex + imageSpeed) % sprite_get_number(spr_KSW_Menu_Fishbook_Selection);
		#endregion
	}
}