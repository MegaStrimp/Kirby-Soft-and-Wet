///@description KSW - Menu - Component - Switch Page - R

function scr_KSW_Menu_Component_SwitchPage_R()
{
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