///@description KSW - Set Hats

function scr_KSW_SetHats()
{
	#region Setup
	global.KSW_TotalHatCount = 0;
	for (var i = 0; i < ds_map_size(global.KSW_CharacterIDs); i++) global.KSW_HatCount[i] = 0;
	
	global.KSW_HatIDs = ds_map_create();
	#endregion
	
	#region Box Palettes
	var candy = spr_KSW_UI_CaughtBox_Palette_Candy;
	var mint = spr_KSW_UI_CaughtBox_Palette_Mint;
	var legion = spr_KSW_UI_CaughtBox_Palette_Legion;
	var mage = spr_KSW_UI_CaughtBox_Palette_Mage;
	var glimmer = spr_KSW_UI_CaughtBox_Palette_Glimmer;
	var borange = spr_KSW_UI_CaughtBox_Palette_Borange;
	var flux = spr_KSW_UI_CaughtBox_Palette_Flux;
	var tvtime = spr_KSW_UI_CaughtBox_Palette_TVTime;
	#endregion
	
	#region Add Hats Here
	#region Kirby
	var playerID = "kirby";
	
	scr_KSW_AddHat(playerID + "_" + "None",playerID,"None",spr_UI_Shared_None,undefined,candy,0,0,0,true);
	scr_KSW_AddHat(playerID + "_" + "Shades",playerID,"Shades",spr_KSW_Player_Kirby_Hat_Shades_Ready,scr_KSW_Player_Kirby_Hat_Shades_SpriteSet(),legion,100);
	scr_KSW_AddHat(playerID + "_" + "StrawHat",playerID,"Straw Hat",spr_KSW_Player_Kirby_Hat_StrawHat_Ready,scr_KSW_Player_Kirby_Hat_StrawHat_SpriteSet(),borange,100);
	scr_KSW_AddHat(playerID + "_" + "Goggles",playerID,"Goggles",spr_KSW_Player_Kirby_Hat_Goggles_Ready,scr_KSW_Player_Kirby_Hat_Goggles_SpriteSet(),mage,100);
	#endregion
	#endregion
}