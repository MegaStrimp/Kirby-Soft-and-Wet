///@description KSW - Set Hats

function scr_KSW_SetHats()
{
	#region Setup
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
	
	scr_KSW_AddHat(playerID + "_" + "None",playerID,"None",spr_KSW_UI_Shared_None,undefined,candy,0,0,0,true);
	scr_KSW_AddHat(playerID + "_" + "Shades",playerID,"Shades",spr_KSW_Player_Kirby_Hat_Shades_Ready,scr_KSW_Player_Kirby_Hat_Shades_SpriteSet(),legion,75,1,4);
	scr_KSW_AddHat(playerID + "_" + "StrawHat",playerID,"Straw Hat",spr_KSW_Player_Kirby_Hat_StrawHat_Ready,scr_KSW_Player_Kirby_Hat_StrawHat_SpriteSet(),borange,75,2,6);
	scr_KSW_AddHat(playerID + "_" + "Goggles",playerID,"Goggles",spr_KSW_Player_Kirby_Hat_Goggles_Ready,scr_KSW_Player_Kirby_Hat_Goggles_SpriteSet(),mage,75,,5);
	scr_KSW_AddHat(playerID + "_" + "Kracko",playerID,"Kracko",spr_KSW_Player_Kirby_Hat_Kracko_Ready,scr_KSW_Player_Kirby_Hat_Kracko_SpriteSet(),mage,150,2,12);
	scr_KSW_AddHat(playerID + "_" + "Sword",playerID,"Sword",spr_KSW_Player_Kirby_Hat_Sword_Ready,scr_KSW_Player_Kirby_Hat_Sword_SpriteSet(),mint,150,3,7);
	scr_KSW_AddHat(playerID + "_" + "ClassicBomb",playerID,"Classic Bomb",spr_KSW_Player_Kirby_Hat_ClassicBomb_Ready,scr_KSW_Player_Kirby_Hat_ClassicBomb_SpriteSet(),mage,150,3,7);
	scr_KSW_AddHat(playerID + "_" + "Pirate",playerID,"Pirate",spr_KSW_Player_Kirby_Hat_Pirate_Ready,scr_KSW_Player_Kirby_Hat_Pirate_SpriteSet(),mage,150,1,10);
	scr_KSW_AddHat(playerID + "_" + "RobotHat",playerID,"Robot Hat",spr_KSW_Player_Kirby_Hat_RobotHat_Ready,scr_KSW_Player_Kirby_Hat_RobotHat_SpriteSet(),candy,150,2,9);
	scr_KSW_AddHat(playerID + "_" + "KibblyHeadband",playerID,"Kibbly Headband",spr_KSW_Player_Kirby_Hat_KibblyHeadband_Shop,scr_KSW_Player_Kirby_Hat_KibblyHeadband_SpriteSet(),candy,150,3,4);
	#endregion
	
	#region Gooey
	var playerID = "gooey";
	
	scr_KSW_AddHat(playerID + "_" + "None",playerID,"None",spr_KSW_UI_Shared_None,undefined,mage,0,0,0,true);
	#endregion
	
	#region Elfilin
	var playerID = "elfilin";
	
	scr_KSW_AddHat(playerID + "_" + "None",playerID,"None",spr_KSW_UI_Shared_None,undefined,mage,0,0,0,true);
	scr_KSW_AddHat(playerID + "_" + "FectoHorns",playerID,"Fecto Horns",spr_KSW_Player_Elfilin_Hat_FectoHorns_Ready,scr_KSW_Player_Elfilin_Hat_FectoHorns_SpriteSet(),glimmer,150,0,14);
	scr_KSW_AddHat(playerID + "_" + "Ranger",playerID,"Ranger",spr_KSW_Player_Elfilin_Hat_Ranger_Ready,scr_KSW_Player_Elfilin_Hat_Ranger_SpriteSet(),candy,150,0,9);
	scr_KSW_AddHat(playerID + "_" + "Halo",playerID,"Halo",spr_KSW_Player_Elfilin_Hat_Halo_Ready,scr_KSW_Player_Elfilin_Hat_Halo_SpriteSet(),glimmer,150,1,18);
	#endregion
	
	#region Marx
	var playerID = "marx";
	
	scr_KSW_AddHat(playerID + "_" + "None",playerID,"None",spr_KSW_UI_Shared_None,undefined,flux,0,0,0,true);
	#endregion
	
	#region Waddle Dee
	var playerID = "waddleDee";
	
	scr_KSW_AddHat(playerID + "_" + "None",playerID,"None",spr_KSW_UI_Shared_None,undefined,borange,0,0,0,true);
	scr_KSW_AddHat(playerID + "_" + "Bandana",playerID,"Bandana",spr_KSW_Player_WaddleDee_Hat_Bandana_Ready,scr_KSW_Player_WaddleDee_Hat_Bandana_SpriteSet(),mage,150,5,5);
	scr_KSW_AddHat(playerID + "_" + "Sailor",playerID,"Sailor",spr_KSW_Player_WaddleDee_Hat_Sailor_Ready,scr_KSW_Player_WaddleDee_Hat_Sailor_SpriteSet(),mage,150,2,5);
	#endregion
	
	#region Susie
	var playerID = "susie";
	
	scr_KSW_AddHat(playerID + "_" + "None",playerID,"None",spr_KSW_UI_Shared_None,undefined,candy,0,0,0,true);
	#endregion
	
	#region Ybrik
	var playerID = "ybrik";
	
	scr_KSW_AddHat(playerID + "_" + "None",playerID,"None",spr_KSW_UI_Shared_None,undefined,borange,0,0,0,true);
	scr_KSW_AddHat(playerID + "_" + "Original",playerID,"Original",spr_KSW_Player_Ybrik_Hat_Original_Ready_Shadow,scr_KSW_Player_Ybrik_Hat_Original_SpriteSet(),borange,150,0,1);
	scr_KSW_AddHat(playerID + "_" + "JackOLantern",playerID,"Jack-o-Lantern",spr_KSW_Player_Ybrik_Hat_JackOLantern_Shop,scr_KSW_Player_Ybrik_Hat_JackOLantern_SpriteSet(),borange,150,2,3);
	scr_KSW_AddHat(playerID + "_" + "MrPUmpkin",playerID,"Mr. P. Umpkin",spr_KSW_Player_Ybrik_Hat_MrPUmpkin_Shop,scr_KSW_Player_Ybrik_Hat_MrPUmpkin_SpriteSet(),borange,150,2,3);
	scr_KSW_AddHat(playerID + "_" + "Kaboya",playerID,"Kaboya",spr_KSW_Player_Ybrik_Hat_Kaboya_Shop,scr_KSW_Player_Ybrik_Hat_Kaboya_SpriteSet(),flux,150,2,3);
	scr_KSW_AddHat(playerID + "_" + "Tricky",playerID,"Tricky",spr_KSW_Player_Ybrik_Hat_Tricky_Shop,scr_KSW_Player_Ybrik_Hat_Tricky_SpriteSet(),mint,150,1,2);
	scr_KSW_AddHat(playerID + "_" + "OldFriend",playerID,"Old Friend",spr_KSW_Player_Ybrik_Hat_OldFriend_Shop,scr_KSW_Player_Ybrik_Hat_OldFriend_SpriteSet(),mage,150,4,4);
	scr_KSW_AddHat(playerID + "_" + "Sonic",playerID,"Sonic...",spr_KSW_Player_Ybrik_Hat_Sonic_Shop,scr_KSW_Player_Ybrik_Hat_Sonic_SpriteSet(),mage,150,4,4);
	scr_KSW_AddHat(playerID + "_" + "SuperBoy",playerID,"Super Boy",spr_KSW_Player_Ybrik_Hat_SuperBoy_Shop,scr_KSW_Player_Ybrik_Hat_SuperBoy_SpriteSet(),borange,150,1,9);
	scr_KSW_AddHat(playerID + "_" + "TheVisitor",playerID,"THE VISITOR",spr_KSW_Player_Ybrik_Hat_TheVisitor_Shop,scr_KSW_Player_Ybrik_Hat_TheVisitor_SpriteSet(),candy,150,1,14);
	scr_KSW_AddHat(playerID + "_" + "TMK",playerID,"TMK",spr_KSW_Player_Ybrik_Hat_TMK_Shop,scr_KSW_Player_Ybrik_Hat_TMK_SpriteSet(),legion,150,1,3);
	#endregion
	#endregion
}