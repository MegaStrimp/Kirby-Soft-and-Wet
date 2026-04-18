///@description Main

if (latestVersion != "")
{
	if (!isDownloading)
	{
		if  (input_check_pressed("start",playerNum))
		{
			isDownloading = true;
			textWithButtons = 0;
			text = "Updating...";
			requestId = http_get_file(global.alivelInstaller_TargetUrl, "\Downloads\AlivelPackage" + string(floor(date_current_datetime() * 100000)) +  ".zip");
		}
		else if (input_check_pressed("B",playerNum))
		{
			room_goto(global.alivelInstaller_TargetRoom);
		}
	}
}

#region Button Input Timers
scr_Component_ButtonInputTimer_Step();
#endregion