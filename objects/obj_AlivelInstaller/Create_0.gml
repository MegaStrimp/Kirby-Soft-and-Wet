///@description Create

#region Initialize Variables#region Component Setup
scr_Component_ButtonInputTimer_Setup(5);
#endregion

#region Menu Variables
playerNum = 0;

isDownloading = false;
requestId = -1;
latestVersion = "";
textWithButtons = 0;
text = "";
#endregion
#endregion

#region Skip Installing
if ((!os_is_network_connected()) or (global.isOpera) or (global.alivelInstaller_TargetUrl == "") or (global.alivelInstaller_TargetVersionNumberUrl == ""))
{
	room_goto(global.alivelInstaller_TargetRoom);
}
else
{
	requestVersionNumberId = http_get(global.alivelInstaller_TargetVersionNumberUrl);
}
#endregion