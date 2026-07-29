///@description Alivel Installer - Setup

function scr_AlivelInstaller_Setup(targetUrl,targetVersionNumberUrl,targetFilename,targetRoom)
{
	global.alivelInstaller_TargetUrl = targetUrl;
	global.alivelInstaller_TargetVersionNumberUrl = targetVersionNumberUrl;
	global.alivelInstaller_TargetFilename = targetFilename;
	global.alivelInstaller_TargetRoom = targetRoom;
	
	room_goto(rm_AlivelInstaller);
}