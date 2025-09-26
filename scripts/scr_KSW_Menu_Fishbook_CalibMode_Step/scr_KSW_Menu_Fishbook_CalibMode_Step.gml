///@description KSW - Menu - Fishbook - Calib Mode - Step

function scr_KSW_Menu_Fishbook_CalibMode_Step()
{
	if (mouse_check_button_pressed(mb_middle))
	{
		calibX = 0;
		calibY = 0;
	}
	
	if (mouse_wheel_up())
	{
		calibMode = true;
		
		if (keyboard_check(vk_shift))
		{
			calibX -= 1;
		}
		else
		{
			calibY -= 1;
		}
	}
	
	if (mouse_wheel_down())
	{
		calibMode = true;
		
		if (keyboard_check(vk_shift))
		{
			calibX += 1;
		}
		else
		{
			calibY += 1;
		}
	}
}