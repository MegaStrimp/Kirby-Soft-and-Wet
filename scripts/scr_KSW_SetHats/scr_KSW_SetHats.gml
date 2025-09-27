///@description KSW - Set Hats

function scr_KSW_SetHats()
{
	#region Setup
	global.KSW_HatCount = 0;
	
	global.KSW_HatIDs = ds_map_create();
	#endregion
	
	#region Add Hats Here
	var playerID = "kirby";
	
	scr_KSW_AddHat(playerID + "_" + "None",playerID,"None",undefined,0,true);
	scr_KSW_AddHat(playerID + "_" + "Shades",playerID,"Shades",scr_KSW_Player_Kirby_Hat_Shades_SpriteSet(),100);
	#endregion
}