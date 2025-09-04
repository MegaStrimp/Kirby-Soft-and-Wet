///@description Main

#region Debug
if (global.debug)
{
	#region Log Window
	if (keyboard_check_pressed(vk_tab))
	{
		debugLogActive = !debugLogActive;
		show_debug_log(debugLogActive);
		show_debug_overlay(debugLogActive);
	}
	#endregion
	
	#region Rooms
	if (keyboard_check_pressed(vk_add)) game_restart();
	if (keyboard_check_pressed(vk_multiply)) room_restart();
	if ((room != room_first) and (keyboard_check_pressed(vk_divide))) room_goto_previous();
	if ((room != room_last) and (keyboard_check_pressed(vk_subtract))) room_goto_next();
	#endregion
	
	#region Pause
	if (keyboard_check_pressed(ord("H"))) global.pause = !global.pause;
	#endregion
	
	#region Speed Mult
	if (keyboard_check(ord("O"))) global.speedMultGlobal += .002;
	if (keyboard_check(ord("L"))) global.speedMultGlobal = 1;
	if (keyboard_check(ord("K"))) global.speedMultGlobal -= .002;
	#endregion
}
#endregion

#region Time Played
global.timePlayed_Frames += 1;
if (global.timePlayed_Frames >= 60)
{
	global.timePlayed_Seconds += 1;
	global.timePlayed_Frames -= 60;
}
if (global.timePlayed_Seconds >= 60)
{
	global.timePlayed_Minutes += 1;
	global.timePlayed_Seconds -= 60;
}
if (global.timePlayed_Minutes >= 60)
{
	global.timePlayed_Hours += 1;
	global.timePlayed_Minutes -= 60;
}
#endregion

#region Freeze Frame
#region Freeze Frame Timer
if (freezeFrameTimer != -1)
{
	freezeFrameTimer = max(freezeFrameTimer - 1,0);
	if (freezeFrameTimer == 0)
	{
		global.freezeFrame = false;
		freezeFrameTimer = -1;
	}
}
#endregion
#endregion

if (!global.pauseFinal)
{
	#region Speed Multiplier
	#region Revert Time
	if (speedMultGlobalTimer == -1)
	{
		global.speedMultGlobal = lerp(global.speedMultGlobal,1,.1);
	}
	#endregion
	
	#region Speed Multiplier Global Timer
	if (speedMultGlobalTimer != -1)
	{
		speedMultGlobalTimer = max(speedMultGlobalTimer - 1,0);
		if (speedMultGlobalTimer == 0)
		{
			speedMultGlobalTimer = -1;
		}
	}
	#endregion
	#endregion
}

#region Fullscreen Switching
if ((keyboard_check_pressed(vk_f4)) or ((keyboard_check(vk_alt)) and (keyboard_check_pressed(vk_enter))))
{
	global.fullscreen = !global.fullscreen;
	window_set_fullscreen(global.fullscreen);
}
#endregion

#region Take Screenshot
if (global.screenshotBuffer)
{
	var fileDir = environment_get_variable("USERPROFILE") + chr(92) + "Pictures" + chr(92) + global.gameTitle + chr(92);
	var fileName = "Screenshot";
	var fileIndex = 0;
	
	for (var i = 0; i < 9999; i++)
	{
		if (((!file_exists(fileDir + fileName + ".png"))) or ((!file_exists(fileDir + fileName + " " + "(" + string(fileIndex) + ")" + ".png")) and (i != 0)))
		{
			break;
		}
		
		fileIndex += 1;
	}
	var fileNumber = "";
	if (fileIndex != 0) fileNumber = " " + "(" + string(fileIndex) + ")";
	screen_save(fileDir + fileName + fileNumber + ".png");
	
	scr_PlaySfx(snd_Screenshot);
	global.screenshotTextTimer = global.screenshotTextTimerMax;
	global.screenshotBuffer = false;
}
else
{
	if (keyboard_check_pressed(vk_f12))
	{
		global.screenshotBuffer = true;
	}
}

#region Screenshot Timer
if (global.screenshotTextTimer != -1)
{
	global.screenshotTextTimer = max(global.screenshotTextTimer - speedMultFinal,0);
	if (global.screenshotTextTimer == 0)
	{
		global.screenshotTextTimer = -1;
	}
}
#endregion
#endregion

#region Hud
if (hudStep != -1) script_execute(hudStep);
#endregion