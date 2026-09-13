///@description KSW - Menu - Component - Swipe

function scr_KSW_Menu_Component_Swipe()
{
	if (!global.isMobile) return 0;
	
	static swipeStartX = 0;
	static swipeStartY = 0;
	static swipeArmed = false;
	static swipeFire = 0;
	
	if (mouse_check_button_pressed(mb_left))
	{
		swipeStartX = device_mouse_x_to_gui(0);
		swipeStartY = device_mouse_y_to_gui(0);
		swipeArmed = true;
		swipeFire = 0;
	}
	else if ((swipeArmed) and (mouse_check_button_released(mb_left)))
	{
		var swipeDX = device_mouse_x_to_gui(0) - swipeStartX;
		var swipeDY = device_mouse_y_to_gui(0) - swipeStartY;
		
		swipeArmed = false;
		
		if ((abs(swipeDX) >= 24) and (abs(swipeDX) > (abs(swipeDY) * 1.5)))
		{
			swipeFire = -sign(swipeDX);
		}
	}
	else if (!mouse_check_button(mb_left))
	{
		swipeArmed = false;
	}
	
	var swipeResult = swipeFire;
	swipeFire = 0;
	
	return swipeResult;
}