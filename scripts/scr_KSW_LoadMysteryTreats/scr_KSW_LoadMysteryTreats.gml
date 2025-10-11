///@description KSW - Load Mystery Treats

function scr_KSW_LoadMysteryTreats(file)
{
	#region Load Mystery Treat Data
	var fileFinal = file;
	if (!global.isMobile) fileFinal = environment_get_variable("LOCALAPPDATA") + chr(92) + global.gameTitle + chr(92) + file;
	
	ini_open(fileFinal);
	
	global.KSW_MysteryTreat_DeirdreBobber = ini_read_real("mysteryTreats","deirdreBobber",false);
	global.KSW_MysteryTreat_GooeyBobber = ini_read_real("mysteryTreats","gooeyBobber",false);
	global.KSW_MysteryTreat_ArenaBobber = ini_read_real("mysteryTreats","arenaBobber",false);
	global.KSW_MysteryTreat_GaidenBobber = ini_read_real("mysteryTreats","gaidenBobber",false);
	
	ini_close();
	#endregion
	
	#region Obtain Bobbers
	if (global.KSW_MysteryTreat_DeirdreBobber)
	{
		scr_KSW_ObtainBobber("deirdre");
		scr_KSW_ObtainBobber("hayuto");
	}
	
	if (global.KSW_MysteryTreat_GooeyBobber) scr_KSW_ObtainBobber("rogueMatter");
	
	if (global.KSW_MysteryTreat_ArenaBobber) scr_KSW_ObtainBobber("rosemarie");
	
	if (global.KSW_MysteryTreat_GaidenBobber) scr_KSW_ObtainBobber("daremo");
	#endregion
}