///@description Create

#region Initialize Variables
#region Menu Variables
isDownloading = false;
requestId = -1;
latestVersion = "";
text = "";
#endregion
#endregion

#region Skip Installing
if ((!os_is_network_connected()) or (global.alivelInstaller_TargetUrl == "") or (global.alivelInstaller_TargetVersionNumberUrl == ""))
{
	room_goto(global.alivelInstaller_TargetRoom);
}
else
{
	requestVersionNumberId = http_get(global.alivelInstaller_TargetVersionNumberUrl);
}
#endregion
