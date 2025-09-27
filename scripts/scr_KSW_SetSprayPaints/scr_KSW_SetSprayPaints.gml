///@description KSW - Set Spray Paints

function scr_KSW_SetSprayPaints()
{
	#region Setup
	global.KSW_SprayPaintCount = 0;
	
	global.KSW_SprayPaintIDs = ds_map_create();
	#endregion
	
	#region Add Spray Paints Here
	#region Kirby
	var playerID = "kirby";
	
	scr_KSW_AddSprayPaint(playerID + "_" + "Pink",playerID,"Pink",spr_KSW_Player_Kirby_SprayPaint_Pink,0,true);
	scr_KSW_AddSprayPaint(playerID + "_" + "Yellow",playerID,"Yellow",spr_KSW_Player_Kirby_SprayPaint_Yellow,50);
	scr_KSW_AddSprayPaint(playerID + "_" + "Red",playerID,"Red",spr_KSW_Player_Kirby_SprayPaint_Red,50);
	scr_KSW_AddSprayPaint(playerID + "_" + "Green",playerID,"Green",spr_KSW_Player_Kirby_SprayPaint_Green,50);
	scr_KSW_AddSprayPaint(playerID + "_" + "Snow",playerID,"Snow",spr_KSW_Player_Kirby_SprayPaint_Snow,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "Carbon",playerID,"Carbon",spr_KSW_Player_Kirby_SprayPaint_Carbon,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "Ocean",playerID,"Ocean",spr_KSW_Player_Kirby_SprayPaint_Ocean,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "Sapphire",playerID,"Sapphire",spr_KSW_Player_Kirby_SprayPaint_Sapphire,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "Grape",playerID,"Grape",spr_KSW_Player_Kirby_SprayPaint_Grape,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "Emerald",playerID,"Emerald",spr_KSW_Player_Kirby_SprayPaint_Emerald,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "Orange",playerID,"Orange",spr_KSW_Player_Kirby_SprayPaint_Orange,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "Chocolate",playerID,"Chocolate",spr_KSW_Player_Kirby_SprayPaint_Chocolate,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "Cherry",playerID,"Cherry",spr_KSW_Player_Kirby_SprayPaint_Cherry,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "Chalk",playerID,"Chalk",spr_KSW_Player_Kirby_SprayPaint_Chalk,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "Mirror",playerID,"Mirror",spr_KSW_Player_Kirby_SprayPaint_Mirror,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "SmashYellow",playerID,"Smash Yellow",spr_KSW_Player_Kirby_SprayPaint_SmashYellow,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "SmashRed",playerID,"Smash Red",spr_KSW_Player_Kirby_SprayPaint_SmashRed,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "SmashGreen",playerID,"Smash Green",spr_KSW_Player_Kirby_SprayPaint_SmashGreen,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "SmashWhite",playerID,"Smash White",spr_KSW_Player_Kirby_SprayPaint_SmashWhite,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "SuperstarPink",playerID,"Superstar Pink",spr_KSW_Player_Kirby_SprayPaint_SuperstarPink,150);
	scr_KSW_AddSprayPaint(playerID + "_" + "SuperstarIce",playerID,"Superstar Ice",spr_KSW_Player_Kirby_SprayPaint_SuperstarIce,150);
	scr_KSW_AddSprayPaint(playerID + "_" + "PastelPink",playerID,"Pastel Pink",spr_KSW_Player_Kirby_SprayPaint_PastelPink,150);
	scr_KSW_AddSprayPaint(playerID + "_" + "AdvanceIce",playerID,"Advance Ice",spr_KSW_Player_Kirby_SprayPaint_AdvanceIce,150);
	scr_KSW_AddSprayPaint(playerID + "_" + "AdvanceStone",playerID,"Advance Stone",spr_KSW_Player_Kirby_SprayPaint_AdvanceStone,150);
	scr_KSW_AddSprayPaint(playerID + "_" + "SuperstarMeta",playerID,"Superstar Meta",spr_KSW_Player_Kirby_SprayPaint_SuperstarMeta,150);
	scr_KSW_AddSprayPaint(playerID + "_" + "AdvanceMeta",playerID,"Advance Meta",spr_KSW_Player_Kirby_SprayPaint_AdvanceMeta,150);
	scr_KSW_AddSprayPaint(playerID + "_" + "Waddle",playerID,"Waddle",spr_KSW_Player_Kirby_SprayPaint_Waddle,150);
	scr_KSW_AddSprayPaint(playerID + "_" + "Lololo",playerID,"Lololo",spr_KSW_Player_Kirby_SprayPaint_Lololo,150);
	scr_KSW_AddSprayPaint(playerID + "_" + "Lalala",playerID,"Lalala",spr_KSW_Player_Kirby_SprayPaint_Lalala,150);
	scr_KSW_AddSprayPaint(playerID + "_" + "Original",playerID,"Original",spr_KSW_Player_Kirby_SprayPaint_Original,200);
	#endregion
	#endregion
}