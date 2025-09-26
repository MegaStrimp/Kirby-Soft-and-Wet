///@description KSW - Menu - Component - Navigate - Up

function scr_KSW_Menu_Component_Navigate_Up()
{
	var pressFlag = false;
	
	if (input_check_pressed("up",playerNum))
	{
		pressFlag = true;
		
		scr_PlaySfx(snd_KSW_BossHealth);
		
		var selectionStart = (page * pageSelectionCount);
		var selectionEnd = min((page + 1) * pageSelectionCount,selectionCount);
		
		selection -= pageColumns;
		if (selection < selectionStart)
		{
			selection = ((selectionStart - 1) + ((ceil((selectionEnd - selectionStart) / pageColumns) - 1) * pageColumns) + (1 + ((pageColumns + selection) % pageColumns)));
			if (selection >= selectionEnd) selection -= pageColumns;
		}
	}
	
	return pressFlag;
}