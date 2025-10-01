///@description KSW - Menu - Component - Navigate - Left

function scr_KSW_Menu_Component_Navigate_Left()
{
	scr_PlaySfx(snd_KSW_BossHealth);
	
	var selectionEnd = min((page + 1) * pageSelectionCount,selectionCount);
	
	if ((selection % pageColumns) == 0)
	{
		selection = min(selection + pageColumns - 1,selectionEnd - 1);
	}
	else
	{
		selection -= 1;
	}
}