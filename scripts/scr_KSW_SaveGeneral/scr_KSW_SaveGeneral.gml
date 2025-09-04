///@description KSW - Save General

function scr_KSW_SaveGeneral(file)
{
	var fileFinal = file;
	if (!global.isMobile) fileFinal = environment_get_variable("LOCALAPPDATA") + chr(92) + global.gameTitle + chr(92) + file;
	
	if (file_exists(fileFinal)) file_delete(fileFinal);
	
	ini_open(fileFinal);
	
	#region General
	ini_write_string("general","versionNumber",global.versionNumber);
	ini_write_string("general","lastSelectedSave",global.selectedSave);
	#endregion
	
	ini_close();
}