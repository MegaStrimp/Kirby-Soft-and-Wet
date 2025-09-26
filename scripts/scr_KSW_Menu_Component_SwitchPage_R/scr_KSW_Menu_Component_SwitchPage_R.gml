///@description KSW - Menu - Component - Switch Page - R

function scr_KSW_Menu_Component_SwitchPage_R()
{
	var pressFlag = false;
	
	if (input_check_pressed("R",playerNum))
	{
		pressFlag = true;
		
		scr_PlaySfx(snd_KSW_ButtonChange);
		
		if (page == pageMax)
		{
			page = 0;
		}
		else
		{
			page += 1;
		}
		selection = page * pageSelectionCount;
	}
	
	return pressFlag;
}