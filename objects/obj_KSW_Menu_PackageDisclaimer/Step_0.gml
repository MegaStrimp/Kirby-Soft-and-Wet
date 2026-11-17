///@description Main

#region Variables
var canSelect = true;
if ((localPause) or
(instance_exists(obj_Transition))) canSelect = false;
#endregion

#region Selection
if (canSelect)
{
	if ((input_check_pressed("A",playerNum)) or (input_check_pressed("start",playerNum)) or ((scr_MouseIsInbetween(182,144,235,156)) and (mouse_check_button_pressed(mb_left))))
	{
		scr_PlaySfx(snd_KSW_ButtonYes);
		
		room_goto(rm_KSW_Menu_SplashScreen);
	}
}
#endregion

#region Button Input Timers
scr_Component_ButtonInputTimer_Step();
#endregion