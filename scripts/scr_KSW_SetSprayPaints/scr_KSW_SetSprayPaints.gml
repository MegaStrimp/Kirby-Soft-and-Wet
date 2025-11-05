///@description KSW - Set Spray Paints

function scr_KSW_SetSprayPaints()
{
	#region Setup
	global.KSW_TotalSprayPaintCount = 0;
	for (var i = 0; i < ds_map_size(global.KSW_CharacterIDs); i++) global.KSW_SprayPaintCount[i] = 0;
	
	global.KSW_SprayPaintIDs = ds_map_create();
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
	
	#region Add Spray Paints Here
	#region Kirby
	var playerID = "kirby";
	
	scr_KSW_AddSprayPaint(playerID + "_" + "Pink",playerID,"Pink",spr_KSW_Player_Kirby_SprayPaint_Pink,candy,0,true);
	scr_KSW_AddSprayPaint(playerID + "_" + "Yellow",playerID,"Yellow",spr_KSW_Player_Kirby_SprayPaint_Yellow,glimmer,25);
	scr_KSW_AddSprayPaint(playerID + "_" + "Red",playerID,"Red",spr_KSW_Player_Kirby_SprayPaint_Red,candy,25);
	scr_KSW_AddSprayPaint(playerID + "_" + "Green",playerID,"Green",spr_KSW_Player_Kirby_SprayPaint_Green,mint,25);
	scr_KSW_AddSprayPaint(playerID + "_" + "Snow",playerID,"Snow",spr_KSW_Player_Kirby_SprayPaint_Snow,mage,50);
	scr_KSW_AddSprayPaint(playerID + "_" + "Carbon",playerID,"Carbon",spr_KSW_Player_Kirby_SprayPaint_Carbon,borange,50);
	scr_KSW_AddSprayPaint(playerID + "_" + "Ocean",playerID,"Ocean",spr_KSW_Player_Kirby_SprayPaint_Ocean,mage,50);
	scr_KSW_AddSprayPaint(playerID + "_" + "Sapphire",playerID,"Sapphire",spr_KSW_Player_Kirby_SprayPaint_Sapphire,mage,50);
	scr_KSW_AddSprayPaint(playerID + "_" + "Grape",playerID,"Grape",spr_KSW_Player_Kirby_SprayPaint_Grape,flux,50);
	scr_KSW_AddSprayPaint(playerID + "_" + "Emerald",playerID,"Emerald",spr_KSW_Player_Kirby_SprayPaint_Emerald,mint,50);
	scr_KSW_AddSprayPaint(playerID + "_" + "Orange",playerID,"Orange",spr_KSW_Player_Kirby_SprayPaint_Orange,borange,50);
	scr_KSW_AddSprayPaint(playerID + "_" + "Chocolate",playerID,"Chocolate",spr_KSW_Player_Kirby_SprayPaint_Chocolate,legion,50);
	scr_KSW_AddSprayPaint(playerID + "_" + "Cherry",playerID,"Cherry",spr_KSW_Player_Kirby_SprayPaint_Cherry,candy,50);
	scr_KSW_AddSprayPaint(playerID + "_" + "Chalk",playerID,"Chalk",spr_KSW_Player_Kirby_SprayPaint_Chalk,legion,50);
	scr_KSW_AddSprayPaint(playerID + "_" + "Mirror",playerID,"Mirror",spr_KSW_Player_Kirby_SprayPaint_Mirror,legion,50);
	scr_KSW_AddSprayPaint(playerID + "_" + "Shadow",playerID,"Shadow",spr_KSW_Player_Kirby_SprayPaint_Shadow,legion,50);
	scr_KSW_AddSprayPaint(playerID + "_" + "Ivory",playerID,"Ivory",spr_KSW_Player_Kirby_SprayPaint_Ivory,glimmer,50);
	scr_KSW_AddSprayPaint(playerID + "_" + "Citrus",playerID,"Citrus",spr_KSW_Player_Kirby_SprayPaint_Citrus,mint,50);
	scr_KSW_AddSprayPaint(playerID + "_" + "Lavender",playerID,"Lavender",spr_KSW_Player_Kirby_SprayPaint_Lavender,flux,50);
	scr_KSW_AddSprayPaint(playerID + "_" + "SmashYellow",playerID,"Smash Yellow",spr_KSW_Player_Kirby_SprayPaint_SmashYellow,glimmer,50);
	scr_KSW_AddSprayPaint(playerID + "_" + "SmashRed",playerID,"Smash Red",spr_KSW_Player_Kirby_SprayPaint_SmashRed,candy,50);
	scr_KSW_AddSprayPaint(playerID + "_" + "SmashGreen",playerID,"Smash Green",spr_KSW_Player_Kirby_SprayPaint_SmashGreen,mint,50);
	scr_KSW_AddSprayPaint(playerID + "_" + "SmashWhite",playerID,"Smash White",spr_KSW_Player_Kirby_SprayPaint_SmashWhite,glimmer,50);
	scr_KSW_AddSprayPaint(playerID + "_" + "SuperstarPink",playerID,"Superstar Pink",spr_KSW_Player_Kirby_SprayPaint_SuperstarPink,candy,75);
	scr_KSW_AddSprayPaint(playerID + "_" + "SuperstarIce",playerID,"Superstar Ice",spr_KSW_Player_Kirby_SprayPaint_SuperstarIce,mage,75);
	scr_KSW_AddSprayPaint(playerID + "_" + "PastelPink",playerID,"Pastel Pink",spr_KSW_Player_Kirby_SprayPaint_PastelPink,candy,75);
	scr_KSW_AddSprayPaint(playerID + "_" + "AdvanceIce",playerID,"Advance Ice",spr_KSW_Player_Kirby_SprayPaint_AdvanceIce,mage,75);
	scr_KSW_AddSprayPaint(playerID + "_" + "AdvanceStone",playerID,"Advance Stone",spr_KSW_Player_Kirby_SprayPaint_AdvanceStone,borange,75);
	scr_KSW_AddSprayPaint(playerID + "_" + "SuperstarMeta",playerID,"Superstar Meta",spr_KSW_Player_Kirby_SprayPaint_SuperstarMeta,flux,75);
	scr_KSW_AddSprayPaint(playerID + "_" + "AdvanceMeta",playerID,"Advance Meta",spr_KSW_Player_Kirby_SprayPaint_AdvanceMeta,flux,75);
	scr_KSW_AddSprayPaint(playerID + "_" + "Waddle",playerID,"Waddle",spr_KSW_Player_Kirby_SprayPaint_Waddle,borange,75);
	scr_KSW_AddSprayPaint(playerID + "_" + "Lololo",playerID,"Lololo",spr_KSW_Player_Kirby_SprayPaint_Lololo,mint,75);
	scr_KSW_AddSprayPaint(playerID + "_" + "Lalala",playerID,"Lalala",spr_KSW_Player_Kirby_SprayPaint_Lalala,candy,75);
	scr_KSW_AddSprayPaint(playerID + "_" + "Original",playerID,"Original",spr_KSW_Player_Kirby_SprayPaint_Original,glimmer,75);
	scr_KSW_AddSprayPaint(playerID + "_" + "ElfilinPeacock",playerID,"Elfilin Peacock",spr_KSW_Player_Kirby_SprayPaint_ElfilinPeacock,mage,75);
	scr_KSW_AddSprayPaint(playerID + "_" + "Baggie",playerID,"Baggie",spr_KSW_Player_Kirby_SprayPaint_Baggie,borange,75);
	scr_KSW_AddSprayPaint(playerID + "_" + "Galacta",playerID,"Galacta",spr_KSW_Player_Kirby_SprayPaint_Galacta,candy,75);
	scr_KSW_AddSprayPaint(playerID + "_" + "Unpleasant",playerID,"Unpleasant",spr_KSW_Player_Kirby_SprayPaint_Unpleasant,candy,75);
	scr_KSW_AddSprayPaint(playerID + "_" + "Mango",playerID,"Mango",spr_KSW_Player_Kirby_SprayPaint_Mango,mint,75);
	scr_KSW_AddSprayPaint(playerID + "_" + "AirRideLBlue",playerID,"Air Ride L Blue",spr_KSW_Player_Kirby_SprayPaint_AirRideLBlue,mage,75);
	scr_KSW_AddSprayPaint(playerID + "_" + "Laser Bird",playerID,"Laser Bird",spr_KSW_Player_Kirby_SprayPaint_LaserBird,flux,75);
	scr_KSW_AddSprayPaint(playerID + "_" + "Strawberry",playerID,"Strawberry",spr_KSW_Player_Kirby_SprayPaint_Strawberry,borange,75);
	scr_KSW_AddSprayPaint(playerID + "_" + "Seashell",playerID,"Seashell",spr_KSW_Player_Kirby_SprayPaint_Seashell,legion,75);
	scr_KSW_AddSprayPaint(playerID + "_" + "Lando",playerID,"Lando",spr_KSW_Player_Kirby_SprayPaint_Lando,mage,75);
	scr_KSW_AddSprayPaint(playerID + "_" + "GoldenHour",playerID,"Golden Hour",spr_KSW_Player_Kirby_SprayPaint_GoldenHour,mint,75);
	scr_KSW_AddSprayPaint(playerID + "_" + "Dawn",playerID,"Dawn",spr_KSW_Player_Kirby_SprayPaint_Dawn,glimmer,75);
	scr_KSW_AddSprayPaint(playerID + "_" + "SuperStar",playerID,"Super Star",spr_KSW_Player_Kirby_SprayPaint_SuperStar,candy,75);
	scr_KSW_AddSprayPaint(playerID + "_" + "Lornus",playerID,"Lornus",spr_KSW_Player_Kirby_SprayPaint_Lornus,flux,75);
	scr_KSW_AddSprayPaint(playerID + "_" + "ChuChu",playerID,"ChuChu",spr_KSW_Player_Kirby_SprayPaint_ChuChu,mage,75);
	#endregion
	#endregion
}