///@description Room Setup - Alivel Installer - Main

function scr_AlivelInstaller_RoomSetup_Main()
{
	#region Screen Setup
	global.gameWidthTarget = 240;
	global.gameHeightTarget = 160;
	#endregion
	
	#region Discord
	scr_Discord_Setup("Alivel Installer Screen",-1,"icon",global.gameTitle,"strimp","From Strimp's Kitchen");
	#endregion
}