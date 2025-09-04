///@description KSW - Load Config

function scr_KSW_LoadConfig(file)
{
	var fileFinal = file;
	if (!global.isMobile) fileFinal = environment_get_variable("LOCALAPPDATA") + chr(92) + global.gameTitle + chr(92) + file;
	
	ini_open(fileFinal);
	
	global.musicVolume = ini_read_real("options","musicVolume",.7);
	global.soundVolume = ini_read_real("options","soundVolume",1);
	global.fullscreen = ini_read_real("options","fullscreen",false);
	
	ini_close();
}