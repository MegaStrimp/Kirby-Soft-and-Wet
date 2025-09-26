///@description KSW - Set Spray Paints

function scr_KSW_SetSprayPaints()
{
	#region Setup
	global.KSW_SprayPaintCount = 0;
	
	global.KSW_SprayPaintList = [];
	global.KSW_SprayPaintIDs = ds_map_create();
	#endregion
	
	#region Add Spray Paints Here
	#region Kirby
	var playerID = "kirby";
	
	scr_KSW_AddSprayPaint(playerID + "_" + "Pink",playerID,"Pink",spr_KSW_Player_Kirby_SprayPaint_Pink);
	scr_KSW_AddSprayPaint(playerID + "_" + "Yellow",playerID,"Yellow",spr_KSW_Player_Kirby_SprayPaint_Yellow);
	scr_KSW_AddSprayPaint(playerID + "_" + "Red",playerID,"Red",spr_KSW_Player_Kirby_SprayPaint_Red);
	scr_KSW_AddSprayPaint(playerID + "_" + "Green",playerID,"Green",spr_KSW_Player_Kirby_SprayPaint_Green);
	scr_KSW_AddSprayPaint(playerID + "_" + "Snow",playerID,"Snow",spr_KSW_Player_Kirby_SprayPaint_Snow);
	scr_KSW_AddSprayPaint(playerID + "_" + "Carbon",playerID,"Carbon",spr_KSW_Player_Kirby_SprayPaint_Carbon);
	scr_KSW_AddSprayPaint(playerID + "_" + "Ocean",playerID,"Ocean",spr_KSW_Player_Kirby_SprayPaint_Ocean);
	scr_KSW_AddSprayPaint(playerID + "_" + "Sapphire",playerID,"Sapphire",spr_KSW_Player_Kirby_SprayPaint_Sapphire);
	scr_KSW_AddSprayPaint(playerID + "_" + "Grape",playerID,"Grape",spr_KSW_Player_Kirby_SprayPaint_Grape);
	scr_KSW_AddSprayPaint(playerID + "_" + "Emerald",playerID,"Emerald",spr_KSW_Player_Kirby_SprayPaint_Emerald);
	scr_KSW_AddSprayPaint(playerID + "_" + "Orange",playerID,"Orange",spr_KSW_Player_Kirby_SprayPaint_Orange);
	scr_KSW_AddSprayPaint(playerID + "_" + "Chocolate",playerID,"Chocolate",spr_KSW_Player_Kirby_SprayPaint_Chocolate);
	scr_KSW_AddSprayPaint(playerID + "_" + "Cherry",playerID,"Cherry",spr_KSW_Player_Kirby_SprayPaint_Cherry);
	scr_KSW_AddSprayPaint(playerID + "_" + "Chalk",playerID,"Chalk",spr_KSW_Player_Kirby_SprayPaint_Chalk);
	scr_KSW_AddSprayPaint(playerID + "_" + "Mirror",playerID,"Mirror",spr_KSW_Player_Kirby_SprayPaint_Mirror);
	scr_KSW_AddSprayPaint(playerID + "_" + "SmashYellow",playerID,"Smash Yellow",spr_KSW_Player_Kirby_SprayPaint_SmashYellow);
	scr_KSW_AddSprayPaint(playerID + "_" + "SmashRed",playerID,"Smash Red",spr_KSW_Player_Kirby_SprayPaint_SmashRed);
	scr_KSW_AddSprayPaint(playerID + "_" + "SmashGreen",playerID,"Smash Green",spr_KSW_Player_Kirby_SprayPaint_SmashGreen);
	scr_KSW_AddSprayPaint(playerID + "_" + "SmashWhite",playerID,"Smash White",spr_KSW_Player_Kirby_SprayPaint_SmashWhite);
	scr_KSW_AddSprayPaint(playerID + "_" + "SuperstarPink",playerID,"Superstar Pink",spr_KSW_Player_Kirby_SprayPaint_SuperstarPink);
	scr_KSW_AddSprayPaint(playerID + "_" + "SuperstarIce",playerID,"Superstar Ice",spr_KSW_Player_Kirby_SprayPaint_SuperstarIce);
	scr_KSW_AddSprayPaint(playerID + "_" + "PastelPink",playerID,"Pastel Pink",spr_KSW_Player_Kirby_SprayPaint_PastelPink);
	scr_KSW_AddSprayPaint(playerID + "_" + "AdvanceIce",playerID,"Advance Ice",spr_KSW_Player_Kirby_SprayPaint_AdvanceIce);
	scr_KSW_AddSprayPaint(playerID + "_" + "AdvanceStone",playerID,"Advance Stone",spr_KSW_Player_Kirby_SprayPaint_AdvanceStone);
	scr_KSW_AddSprayPaint(playerID + "_" + "SuperstarMeta",playerID,"Superstar Meta",spr_KSW_Player_Kirby_SprayPaint_SuperstarMeta);
	scr_KSW_AddSprayPaint(playerID + "_" + "AdvanceMeta",playerID,"Advance Meta",spr_KSW_Player_Kirby_SprayPaint_AdvanceMeta);
	scr_KSW_AddSprayPaint(playerID + "_" + "Waddle",playerID,"Waddle",spr_KSW_Player_Kirby_SprayPaint_Waddle);
	scr_KSW_AddSprayPaint(playerID + "_" + "Lololo",playerID,"Lololo",spr_KSW_Player_Kirby_SprayPaint_Lololo);
	scr_KSW_AddSprayPaint(playerID + "_" + "Lalala",playerID,"Lalala",spr_KSW_Player_Kirby_SprayPaint_Lalala);
	scr_KSW_AddSprayPaint(playerID + "_" + "Original",playerID,"Original",spr_KSW_Player_Kirby_SprayPaint_Original);
	#endregion
	#endregion
}