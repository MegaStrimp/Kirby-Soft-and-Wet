///@description KSW - Load Mystery Treats

function scr_KSW_LoadMysteryTreats(file)
{
	var fileFinal = file;
	if (!global.isMobile) fileFinal = environment_get_variable("LOCALAPPDATA") + chr(92) + global.gameTitle + chr(92) + file;
	
	ini_open(fileFinal);
	
	global.KSW_MysteryTreat_DeirdreBobber = ini_read_real("mysteryTreats","deirdreBobber",false);
	
	ini_close();
}