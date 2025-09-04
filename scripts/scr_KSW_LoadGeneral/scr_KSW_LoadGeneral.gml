///@description KSW - Load General

function scr_KSW_LoadGeneral(file)
{
	var fileFinal = file;
	if (!global.isMobile) fileFinal = environment_get_variable("LOCALAPPDATA") + chr(92) + global.gameTitle + chr(92) + file;
	
	ini_open(fileFinal);
	
	#region General
	global.savedVersionNumber = ini_read_string("general","versionNumber",0);
	global.lastSelectedSave = ini_read_string("general","lastSelectedSave",-1);
	#endregion
	
	ini_close();
}