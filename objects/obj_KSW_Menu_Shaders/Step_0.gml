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
		
		global.shaders = true;
		scr_KSW_SaveConfig("config.ini");
		
		global.KSW_ShadersMenuSeen = true;
		scr_KSW_SaveGeneral("general.ini");
		
		room_goto(rm_KSW_Menu_SplashScreen);
	}
	
	if ((input_check_pressed("B",playerNum)) or ((scr_MouseIsInbetween(4,144,43,156)) and (mouse_check_button_pressed(mb_left))))
	{
		scr_PlaySfx(snd_KSW_ButtonNo);
		
		global.shaders = false;
		scr_KSW_SaveConfig("config.ini");
		
		global.KSW_ShadersMenuSeen = true;
		scr_KSW_SaveGeneral("general.ini");
		
		room_goto(rm_KSW_Menu_SplashScreen);
	}
}
#endregion

#region Button Input Timers
scr_Component_ButtonInputTimer_Step();
#endregion