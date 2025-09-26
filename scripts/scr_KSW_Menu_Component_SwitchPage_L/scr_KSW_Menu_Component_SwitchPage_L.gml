///@description KSW - Menu - Component - Switch Page - L

function scr_KSW_Menu_Component_SwitchPage_L()
{
	var pressFlag = false;
	
	if (input_check_pressed("L",playerNum))
	{
		pressFlag = true;
		
		scr_PlaySfx(snd_KSW_ButtonChange);
			
		if (page == 0)
		{
			page = pageMax;
		}
		else
		{
			page -= 1;
		}
		selection = min(((page + 1) * pageSelectionCount),selectionCount) - 1;
	}
	
	return pressFlag;
}