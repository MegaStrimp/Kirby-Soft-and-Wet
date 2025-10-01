///@description KSW - Menu - Component - Navigate - Down

function scr_KSW_Menu_Component_Navigate_Down()
{
	scr_PlaySfx(snd_KSW_BossHealth);
	
	var selectionStart = (page * pageSelectionCount);
	var selectionEnd = min((page + 1) * pageSelectionCount,selectionCount);
	
	selection += pageColumns;
	if (selection >= selectionEnd) selection = (selectionStart + (selection % pageColumns));
}