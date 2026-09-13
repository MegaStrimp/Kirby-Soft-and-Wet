///@description KSW - Load Config

function scr_KSW_LoadConfig(file)
{
	var fileFinal = file;
	if (!global.isMobile) fileFinal = environment_get_variable("LOCALAPPDATA") + chr(92) + global.gameTitle + chr(92) + file;
	
	ini_open(fileFinal);
	
	global.musicVolume = ini_read_real("options","musicVolume",.7);
	global.soundVolume = ini_read_real("options","soundVolume",1);
	global.fullscreen = ini_read_real("options","fullscreen",false);
	global.windowScaleTarget = ini_read_real("options","windowScale",floor(scr_Screen_ScaleToScreenSize() / 1.2));
	global.shaders = ini_read_real("options","shaders",true);
	global.screenOrientation = ini_read_real("options","orientation",0);
	
	ini_close();
	
	if (global.isMobile)
	{
		switch (global.screenOrientation)
		{
			case 0:
				os_set_orientation_lock(true,true);
			break;
			case 1:
				os_set_orientation_lock(false,true);
			break;
			case 2:
				os_set_orientation_lock(true,false);
			break;
		}
	}
}