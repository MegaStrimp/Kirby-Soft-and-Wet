///@description KSW - Save Config

function scr_KSW_SaveConfig(file)
{
	var fileFinal = file;
	if (!global.isMobile) fileFinal = environment_get_variable("LOCALAPPDATA") + chr(92) + global.gameTitle + chr(92) + file;
	
	if (file_exists(fileFinal)) file_delete(fileFinal);
	
	ini_open(fileFinal);
	
	ini_write_real("options","musicVolume",global.musicVolume);
	ini_write_real("options","soundVolume",global.soundVolume);
	ini_write_real("options","fullscreen",global.fullscreen);
	
	ini_close();
}