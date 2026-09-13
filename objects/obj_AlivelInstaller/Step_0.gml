///@description Main

if (latestVersion != "")
{
	if (!isDownloading)
	{
		if  ((input_check_pressed("start",playerNum)) or ((scr_MouseIsInbetween(global.gameWidth - 54,global.gameHeight - 16,global.gameWidth - 4,global.gameHeight)) and (mouse_check_button_pressed(mb_left))))
		{
			isDownloading = true;
			textWithButtons = 0;
			text = "Updating...";
			requestId = http_get_file(global.alivelInstaller_TargetUrl, "\Downloads\AlivelPackage" + string(floor(date_current_datetime() * 100000)) +  ".zip");
		}
		else if ((input_check_pressed("B",playerNum)) or ((scr_MouseIsInbetween(4,global.gameHeight - 16,43,global.gameHeight)) and (mouse_check_button_pressed(mb_left))))
		{
			room_goto(global.alivelInstaller_TargetRoom);
		}
	}
}

#region Button Input Timers
scr_Component_ButtonInputTimer_Step();
#endregion