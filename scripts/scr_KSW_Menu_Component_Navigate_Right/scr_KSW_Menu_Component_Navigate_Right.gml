///@description KSW - Menu - Component - Navigate - Right

function scr_KSW_Menu_Component_Navigate_Right()
{
	var pressFlag = false;
	
	if (input_check_pressed("right",playerNum))
	{
		pressFlag = true;
		
		scr_PlaySfx(snd_KSW_BossHealth);
		
		var selectionEnd = min((page + 1) * pageSelectionCount,selectionCount);
		
		if ((selection % pageColumns) == pageColumns - 1)
		{
			selection -= pageColumns - 1;
		}
		else if ((selection) >= selectionEnd - 1)
		{
			selection -= (selection % pageColumns);
		}
		else
		{
			selection += 1;
		}
	}
	
	return pressFlag;
}