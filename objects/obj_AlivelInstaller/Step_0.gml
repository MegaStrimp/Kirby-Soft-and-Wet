///@description Main

if (latestVersion != "")
{
	if (!isDownloading)
	{
		if (keyboard_check_pressed(vk_enter))
		{
			isDownloading = true;
			text = "Updating...";
			requestId = http_get_file(global.alivelInstaller_TargetUrl, "\Downloads\AlivelPackage" + string(floor(date_current_datetime() * 100000)) +  ".zip");
		}
		else if (keyboard_check_pressed(ord("X")))
		{
			room_goto(global.alivelInstaller_TargetRoom);
		}
	}
}