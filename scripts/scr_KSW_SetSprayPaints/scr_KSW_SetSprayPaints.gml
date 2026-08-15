///@description KSW - Set Spray Paints

function scr_KSW_SetSprayPaints()
{
	#region Setup
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
	scr_KSW_AddSprayPaint(playerID + "_" + "LaserBird",playerID,"Laser Bird",spr_KSW_Player_Kirby_SprayPaint_LaserBird,flux,75);
	scr_KSW_AddSprayPaint(playerID + "_" + "Strawberry",playerID,"Strawberry",spr_KSW_Player_Kirby_SprayPaint_Strawberry,borange,75);
	scr_KSW_AddSprayPaint(playerID + "_" + "Seashell",playerID,"Seashell",spr_KSW_Player_Kirby_SprayPaint_Seashell,legion,75);
	scr_KSW_AddSprayPaint(playerID + "_" + "Lando",playerID,"Lando",spr_KSW_Player_Kirby_SprayPaint_Lando,mage,75);
	scr_KSW_AddSprayPaint(playerID + "_" + "GoldenHour",playerID,"Golden Hour",spr_KSW_Player_Kirby_SprayPaint_GoldenHour,mint,75);
	scr_KSW_AddSprayPaint(playerID + "_" + "Dawn",playerID,"Dawn",spr_KSW_Player_Kirby_SprayPaint_Dawn,glimmer,75);
	//scr_KSW_AddSprayPaint(playerID + "_" + "SuperStar",playerID,"Super Star",spr_KSW_Player_Kirby_SprayPaint_SuperstarPink,candy,75);
	scr_KSW_AddSprayPaint(playerID + "_" + "Lornus",playerID,"Lornus",spr_KSW_Player_Kirby_SprayPaint_Lornus,flux,75);
	scr_KSW_AddSprayPaint(playerID + "_" + "ChuChu",playerID,"ChuChu",spr_KSW_Player_Kirby_SprayPaint_ChuChu,mage,75);
	scr_KSW_AddSprayPaint(playerID + "_" + "SeaBreeze",playerID,"Sea Breeze",spr_KSW_Player_Kirby_SprayPaint_SeaBreeze,mint,75);
	scr_KSW_AddSprayPaint(playerID + "_" + "Aege",playerID,"Aege",spr_KSW_Player_Kirby_SprayPaint_Aege,mint,75);
	scr_KSW_AddSprayPaint(playerID + "_" + "CustardPudding",playerID,"Custard Pudding",spr_KSW_Player_Kirby_SprayPaint_CustardPudding,glimmer,75);
	scr_KSW_AddSprayPaint(playerID + "_" + "HedgehogBlue",playerID,"Hedgehog Blue",spr_KSW_Player_Kirby_SprayPaint_HedgehogBlue,mage,75);
	scr_KSW_AddSprayPaint(playerID + "_" + "PlumberRed",playerID,"Plumber Red",spr_KSW_Player_Kirby_SprayPaint_PlumberRed,candy,75);
	scr_KSW_AddSprayPaint(playerID + "_" + "Virtual",playerID,"Virtual Red",spr_KSW_Player_Kirby_SprayPaint_Virtual,glimmer,75);
	scr_KSW_AddSprayPaint(playerID + "_" + "Plasma",playerID,"Plasmic Orange",spr_KSW_Player_Kirby_SprayPaint_Plasma,flux,75);
	scr_KSW_AddSprayPaint(playerID + "_" + "PearlescentCream",playerID,"Pearlescent Cream",spr_KSW_Player_Kirby_SprayPaint_PearlescentCream,mage,75);
	scr_KSW_AddSprayPaint(playerID + "_" + "Pearlescent",playerID,"Pearlescent",spr_KSW_Player_Kirby_SprayPaint_Pearlescent,mage,75);
	scr_KSW_AddSprayPaint(playerID + "_" + "SoulWhite",playerID,"Soul White",spr_KSW_Player_Kirby_SprayPaint_SoulWhite,flux,75);
	scr_KSW_AddSprayPaint(playerID + "_" + "SilkWhite",playerID,"Silk White",spr_KSW_Player_Kirby_SprayPaint_SilkWhite,legion,75);
	scr_KSW_AddSprayPaint(playerID + "_" + "KnifeBlack",playerID,"Knife Black",spr_KSW_Player_Kirby_SprayPaint_KnifeBlack,flux,75);
	scr_KSW_AddSprayPaint(playerID + "_" + "Snowball",playerID,"Snowball Blue",spr_KSW_Player_Kirby_SprayPaint_Snowball,candy,75);
	scr_KSW_AddSprayPaint(playerID + "_" + "CoralBreeze",playerID,"Coral Breeze",spr_KSW_Player_Kirby_SprayPaint_CoralBreeze,candy,75);
	scr_KSW_AddSprayPaint(playerID + "_" + "Crunchy",playerID,"Crunchy",spr_KSW_Player_Kirby_SprayPaint_Crunchy,glimmer,75);
	scr_KSW_AddSprayPaint(playerID + "_" + "Missing",playerID,"[blink]MISSINGNO[/blink]",spr_KSW_Player_Kirby_SprayPaint_Missing,flux,75);
	#endregion
	
	#region Gooey
	var playerID = "gooey";
	
	var spray = scr_KSW_AddSprayPaint(playerID + "_" + "GooBloo",playerID,"Goo Bloo",spr_KSW_Player_Gooey_SprayPaint_GooBloo,mage,0,true);
	spray.gooeyTongueColor = #D62F27;
	var spray = scr_KSW_AddSprayPaint(playerID + "_" + "Yellow",playerID,"Yellow",spr_KSW_Player_Gooey_SprayPaint_Yellow,glimmer,75);
	spray.gooeyTongueColor = #D62F27;
	var spray = scr_KSW_AddSprayPaint(playerID + "_" + "ButterKnife",playerID,"Butter-Knife",spr_KSW_Player_Gooey_SprayPaint_ButterKnife,glimmer,75);
	spray.gooeyTongueColor = #D92463;
	var spray = scr_KSW_AddSprayPaint(playerID + "_" + "Carbon",playerID,"Carbon",spr_KSW_Player_Gooey_SprayPaint_Carbon,borange,75);
	spray.gooeyTongueColor = #F85010;
	var spray = scr_KSW_AddSprayPaint(playerID + "_" + "DreamyBlueberry",playerID,"Dreamy Blueberry",spr_KSW_Player_Gooey_SprayPaint_DreamyBlueberry,mage,75);
	spray.gooeyTongueColor = #2D80ED;
	var spray = scr_KSW_AddSprayPaint(playerID + "_" + "FriendlyPink",playerID,"Friendly Pink",spr_KSW_Player_Gooey_SprayPaint_FriendlyPink,candy,75);
	spray.gooeyTongueColor = #D10E55;
	var spray = scr_KSW_AddSprayPaint(playerID + "_" + "Mirror",playerID,"Mirror",spr_KSW_Player_Gooey_SprayPaint_Mirror,mint,75);
	spray.gooeyTongueColor = #18A090;
	var spray = scr_KSW_AddSprayPaint(playerID + "_" + "Mystic",playerID,"Mystic",spr_KSW_Player_Gooey_SprayPaint_Mystic,flux,75);
	spray.gooeyTongueColor = #EFC475;
	var spray = scr_KSW_AddSprayPaint(playerID + "_" + "Ninja",playerID,"Ninja",spr_KSW_Player_Gooey_SprayPaint_Ninja,candy,75);
	spray.gooeyTongueColor = #FF96C8;
	var spray = scr_KSW_AddSprayPaint(playerID + "_" + "Plasma",playerID,"Plasma",spr_KSW_Player_Gooey_SprayPaint_Plasma,mint,75);
	spray.gooeyTongueColor = #FFBF35;
	var spray = scr_KSW_AddSprayPaint(playerID + "_" + "PlumpTomato",playerID,"Plump Tomato",spr_KSW_Player_Gooey_SprayPaint_PlumpTomato,candy,75);
	spray.gooeyTongueColor = #2FAF97;
	var spray = scr_KSW_AddSprayPaint(playerID + "_" + "YolkTemple",playerID,"Yolk Temple",spr_KSW_Player_Gooey_SprayPaint_YolkTemple,mint,75);
	spray.gooeyTongueColor = #6BA580;
	var spray = scr_KSW_AddSprayPaint(playerID + "_" + "Zebon",playerID,"Zebon",spr_KSW_Player_Gooey_SprayPaint_Zebon,mint,75);
	spray.gooeyTongueColor = #1D3325;
	var spray = scr_KSW_AddSprayPaint(playerID + "_" + "Nidoo",playerID,"Nidoo",spr_KSW_Player_Gooey_SprayPaint_Nidoo,mint,75);
	spray.gooeyTongueColor = #434156;
	#endregion
	
	#region Elfilin
	var playerID = "elfilin";
	
	scr_KSW_AddSprayPaint(playerID + "_" + "Peacock",playerID,"Peacock",spr_KSW_Player_Elfilin_SprayPaint_Peacock,mage,0,true);
	scr_KSW_AddSprayPaint(playerID + "_" + "Forgo",playerID,"Forgo",spr_KSW_Player_Elfilin_SprayPaint_Forgo,mint,75);
	scr_KSW_AddSprayPaint(playerID + "_" + "Chaos",playerID,"Chaos",spr_KSW_Player_Elfilin_SprayPaint_Chaos,legion,75);
	scr_KSW_AddSprayPaint(playerID + "_" + "KirbyPink",playerID,"Kirby Pink",spr_KSW_Player_Elfilin_SprayPaint_KirbyPink,candy,75);
	scr_KSW_AddSprayPaint(playerID + "_" + "Leongar",playerID,"Leongar",spr_KSW_Player_Elfilin_SprayPaint_Leongar,borange,75);
	scr_KSW_AddSprayPaint(playerID + "_" + "Phantom",playerID,"Phantom",spr_KSW_Player_Elfilin_SprayPaint_Phantom,flux,75);
	scr_KSW_AddSprayPaint(playerID + "_" + "Crystal",playerID,"Crystal",spr_KSW_Player_Elfilin_SprayPaint_Crystal,mage,75);
	scr_KSW_AddSprayPaint(playerID + "_" + "Apple",playerID,"Apple",spr_KSW_Player_Elfilin_SprayPaint_Apple,candy,75);
	scr_KSW_AddSprayPaint(playerID + "_" + "Dreary",playerID,"Dreary",spr_KSW_Player_Elfilin_SprayPaint_Dreary,legion,75);
	scr_KSW_AddSprayPaint(playerID + "_" + "Gray",playerID,"Gray",spr_KSW_Player_Elfilin_SprayPaint_Gray,legion,75);
	scr_KSW_AddSprayPaint(playerID + "_" + "Angry",playerID,"Angry",spr_KSW_Player_Elfilin_SprayPaint_Angry,borange,75);
	scr_KSW_AddSprayPaint(playerID + "_" + "Daroach",playerID,"Daroach",spr_KSW_Player_Elfilin_SprayPaint_Daroach,legion,75);
	scr_KSW_AddSprayPaint(playerID + "_" + "DarkDaroach",playerID,"Dark Daroach",spr_KSW_Player_Elfilin_SprayPaint_DarkDaroach,flux,75);
	scr_KSW_AddSprayPaint(playerID + "_" + "Doc",playerID,"Doc",spr_KSW_Player_Elfilin_SprayPaint_Doc,mint,75);
	scr_KSW_AddSprayPaint(playerID + "_" + "Spinni",playerID,"Spinni",spr_KSW_Player_Elfilin_SprayPaint_Spinni,borange,75);
	scr_KSW_AddSprayPaint(playerID + "_" + "Storo",playerID,"Storo",spr_KSW_Player_Elfilin_SprayPaint_Storo,mage,75);
	scr_KSW_AddSprayPaint(playerID + "_" + "Ribbon",playerID,"Ribbon",spr_KSW_Player_Elfilin_SprayPaint_Ribbon,candy,75);
	scr_KSW_AddSprayPaint(playerID + "_" + "LightGrape",playerID,"Light Grape",spr_KSW_Player_Elfilin_SprayPaint_LightGrape,flux,75);
	scr_KSW_AddSprayPaint(playerID + "_" + "Crisp",playerID,"Crisp",spr_KSW_Player_Elfilin_SprayPaint_Crisp,borange,75);
	scr_KSW_AddSprayPaint(playerID + "_" + "TheJudge",playerID,"The Judge",spr_KSW_Player_Elfilin_SprayPaint_TheJudge,borange,75);
	#endregion
	
	#region Marx
	var playerID = "marx";
	
	scr_KSW_AddSprayPaint(playerID + "_" + "JesterGrape",playerID,"Jester Grape",spr_KSW_Player_Marx_SprayPaint_JesterGrape,flux,0,true);
	scr_KSW_AddSprayPaint(playerID + "_" + "Starless",playerID,"Starless",spr_KSW_Player_Marx_SprayPaint_Starless,legion,75);
	scr_KSW_AddSprayPaint(playerID + "_" + "Chaos",playerID,"Chaos",spr_KSW_Player_Marx_SprayPaint_Chaos,mint,75);
	scr_KSW_AddSprayPaint(playerID + "_" + "Beam",playerID,"Beam",spr_KSW_Player_Marx_SprayPaint_Beam,borange,75);
	scr_KSW_AddSprayPaint(playerID + "_" + "Inverse",playerID,"Inverse",spr_KSW_Player_Marx_SprayPaint_Inverse,borange,75);
	scr_KSW_AddSprayPaint(playerID + "_" + "Traitorous",playerID,"Traitorous",spr_KSW_Player_Marx_SprayPaint_Traitorous,glimmer,75);
	scr_KSW_AddSprayPaint(playerID + "_" + "Reflective",playerID,"Reflective",spr_KSW_Player_Marx_SprayPaint_Reflective,mint,75);
	scr_KSW_AddSprayPaint(playerID + "_" + "AirRider",playerID,"Air Rider",spr_KSW_Player_Marx_SprayPaint_AirRider,legion,75);
	scr_KSW_AddSprayPaint(playerID + "_" + "TheComet",playerID,"The Comet",spr_KSW_Player_Marx_SprayPaint_TheComet,glimmer,75);
	scr_KSW_AddSprayPaint(playerID + "_" + "PuzzleWitch",playerID,"Puzzle Witch",spr_KSW_Player_Marx_SprayPaint_PuzzleWitch,glimmer,75);
	scr_KSW_AddSprayPaint(playerID + "_" + "SpiderWeb",playerID,"Spider Web",spr_KSW_Player_Marx_SprayPaint_SpiderWeb,borange,75);
	scr_KSW_AddSprayPaint(playerID + "_" + "SleepyMood",playerID,"Sleepy Mood",spr_KSW_Player_Marx_SprayPaint_SleepyMood,candy,75);
	scr_KSW_AddSprayPaint(playerID + "_" + "TerribleDream",playerID,"Terrible Dream",spr_KSW_Player_Marx_SprayPaint_TerribleDream,mage,75);
	scr_KSW_AddSprayPaint(playerID + "_" + "MachineOwner",playerID,"Machine Owner",spr_KSW_Player_Marx_SprayPaint_MachineOwner,legion,75);
	scr_KSW_AddSprayPaint(playerID + "_" + "ForgottenSoul",playerID,"Forgotten Soul",spr_KSW_Player_Marx_SprayPaint_ForgottenSoul,mint,75);
	scr_KSW_AddSprayPaint(playerID + "_" + "ForgottenSoulAlt",playerID,"Forgotten Soul Alt",spr_KSW_Player_Marx_SprayPaint_ForgottenSoulAlt,legion,75);
	scr_KSW_AddSprayPaint(playerID + "_" + "TrueSoul",playerID,"True Soul",spr_KSW_Player_Marx_SprayPaint_TrueSoul,mage,75);
	scr_KSW_AddSprayPaint(playerID + "_" + "StarsChosen",playerID,"Stars Chosen",spr_KSW_Player_Marx_SprayPaint_StarsChosen,borange,75);
	scr_KSW_AddSprayPaint(playerID + "_" + "DigitalCircus",playerID,"Digital Circus",spr_KSW_Player_Marx_SprayPaint_DigitalCircus,mage,75);
	scr_KSW_AddSprayPaint(playerID + "_" + "BigtopSteve",playerID,"Bigtop Steve",spr_KSW_Player_Marx_SprayPaint_BigtopSteve,legion,75);
	scr_KSW_AddSprayPaint(playerID + "_" + "Krusty",playerID,"Krusty",spr_KSW_Player_Marx_SprayPaint_Krusty,mint,75);
	scr_KSW_AddSprayPaint(playerID + "_" + "Joker",playerID,"Joker",spr_KSW_Player_Marx_SprayPaint_Joker,mint,75);
	#endregion
	
	#region Waddle Dee
	var playerID = "waddleDee";
	
	scr_KSW_AddSprayPaint(playerID + "_" + "DeeFault",playerID,"Dee-Fault",spr_KSW_Player_WaddleDee_SprayPaint_DeeFault,borange,0,true);
	scr_KSW_AddSprayPaint(playerID + "_" + "Yellow",playerID,"Yellow",spr_KSW_Player_WaddleDee_SprayPaint_Yellow,glimmer,75);
	scr_KSW_AddSprayPaint(playerID + "_" + "Green",playerID,"Green",spr_KSW_Player_WaddleDee_SprayPaint_Green,mint,75);
	scr_KSW_AddSprayPaint(playerID + "_" + "Golden",playerID,"Golden",spr_KSW_Player_WaddleDee_SprayPaint_Golden,glimmer,75);
	scr_KSW_AddSprayPaint(playerID + "_" + "Grand",playerID,"Grand",spr_KSW_Player_WaddleDee_SprayPaint_Grand,borange,75);
	scr_KSW_AddSprayPaint(playerID + "_" + "TripleDee",playerID,"Triple Dee",spr_KSW_Player_WaddleDee_SprayPaint_TripleDee,mage,75);
	scr_KSW_AddSprayPaint(playerID + "_" + "Aggressive",playerID,"Aggressive",spr_KSW_Player_WaddleDee_SprayPaint_Aggressive,flux,75);
	scr_KSW_AddSprayPaint(playerID + "_" + "Chunky",playerID,"Chunky",spr_KSW_Player_WaddleDee_SprayPaint_Chunky,borange,75);
	scr_KSW_AddSprayPaint(playerID + "_" + "Pink",playerID,"Pink",spr_KSW_Player_WaddleDee_SprayPaint_Pink,candy,75);
	scr_KSW_AddSprayPaint(playerID + "_" + "Halcandle",playerID,"Halcandle",spr_KSW_Player_WaddleDee_SprayPaint_Halcandle,legion,75);
	scr_KSW_AddSprayPaint(playerID + "_" + "Sectra",playerID,"Sectra",spr_KSW_Player_WaddleDee_SprayPaint_Sectra,mint,75);
	scr_KSW_AddSprayPaint(playerID + "_" + "Mango",playerID,"Mango",spr_KSW_Player_WaddleDee_SprayPaint_Mango,borange,75);
	scr_KSW_AddSprayPaint(playerID + "_" + "Revenge",playerID,"Revenge",spr_KSW_Player_WaddleDee_SprayPaint_Revenge,flux,75);
	scr_KSW_AddSprayPaint(playerID + "_" + "Mono",playerID,"Mono",spr_KSW_Player_WaddleDee_SprayPaint_Mono,legion,75);
	scr_KSW_AddSprayPaint(playerID + "_" + "UltraPink",playerID,"Ultra Pink",spr_KSW_Player_WaddleDee_SprayPaint_UltraPink,candy,75);
	scr_KSW_AddSprayPaint(playerID + "_" + "HelperGreen",playerID,"Helper Green",spr_KSW_Player_WaddleDee_SprayPaint_HelperGreen,mint,75);
	scr_KSW_AddSprayPaint(playerID + "_" + "GhostlyBlue",playerID,"Ghostly Blue",spr_KSW_Player_WaddleDee_SprayPaint_GhostlyBlue,mage,75);
	scr_KSW_AddSprayPaint(playerID + "_" + "Beanbon",playerID,"Beanbon",spr_KSW_Player_WaddleDee_SprayPaint_Beanbon,mint,75);
	scr_KSW_AddSprayPaint(playerID + "_" + "Primal",playerID,"Primal",spr_KSW_Player_WaddleDee_SprayPaint_Primal,borange,75);
	
	scr_KSW_AddSprayPaint(playerID + "_" + "Metall",playerID,"Metall",spr_KSW_Player_WaddleDee_SprayPaint_Metall,glimmer,75);
	scr_KSW_AddSprayPaint(playerID + "_" + "FleaMan",playerID,"Flea Man",spr_KSW_Player_WaddleDee_SprayPaint_FleaMan,mint,75);
	scr_KSW_AddSprayPaint(playerID + "_" + "Grunt",playerID,"Grunt",spr_KSW_Player_WaddleDee_SprayPaint_Grunt,borange,75);
	scr_KSW_AddSprayPaint(playerID + "_" + "Goomba",playerID,"Goomba",spr_KSW_Player_WaddleDee_SprayPaint_Goomba,borange,75);
	scr_KSW_AddSprayPaint(playerID + "_" + "Bomberman",playerID,"Bomberman",spr_KSW_Player_WaddleDee_SprayPaint_Bomberman,glimmer,75);
	scr_KSW_AddSprayPaint(playerID + "_" + "Sonic",playerID,"Sonic",spr_KSW_Player_WaddleDee_SprayPaint_Sonic,mage,75);
	scr_KSW_AddSprayPaint(playerID + "_" + "CaptainFalcon",playerID,"Captain Falcon",spr_KSW_Player_WaddleDee_SprayPaint_CaptainFalcon,candy,75);
	scr_KSW_AddSprayPaint(playerID + "_" + "GreenSnurp",playerID,"Green Snurp",spr_KSW_Player_WaddleDee_SprayPaint_GreenSnurp,mint,75);
	scr_KSW_AddSprayPaint(playerID + "_" + "ShyGuy",playerID,"Shy Guy",spr_KSW_Player_WaddleDee_SprayPaint_ShyGuy,candy,75);
	#endregion
	
	#region Susie
	var playerID = "susie";
	
	scr_KSW_AddSprayPaint(playerID + "_" + "Business",playerID,"Business",spr_KSW_Player_Susie_SprayPaint_Business,candy,0,true);
	scr_KSW_AddSprayPaint(playerID + "_" + "Yellow",playerID,"Yellow",spr_KSW_Player_Susie_SprayPaint_Yellow,glimmer,75);
	scr_KSW_AddSprayPaint(playerID + "_" + "Blue",playerID,"Blue",spr_KSW_Player_Susie_SprayPaint_Blue,mage,75);
	scr_KSW_AddSprayPaint(playerID + "_" + "Parallel",playerID,"Parallel",spr_KSW_Player_Susie_SprayPaint_Parallel,candy,75);
	scr_KSW_AddSprayPaint(playerID + "_" + "MotorOil",playerID,"Motor Oil",spr_KSW_Player_Susie_SprayPaint_MotorOil,candy,75);
	scr_KSW_AddSprayPaint(playerID + "_" + "Lilac",playerID,"Lilac",spr_KSW_Player_Susie_SprayPaint_Lilac,flux,75);
	scr_KSW_AddSprayPaint(playerID + "_" + "Milla",playerID,"Milla",spr_KSW_Player_Susie_SprayPaint_Milla,mint,75);
	scr_KSW_AddSprayPaint(playerID + "_" + "Saffrom",playerID,"Saffrom",spr_KSW_Player_Susie_SprayPaint_Saffrom,borange,75);
	scr_KSW_AddSprayPaint(playerID + "_" + "Twilight",playerID,"Twilight",spr_KSW_Player_Susie_SprayPaint_Twilight,flux,75);
	scr_KSW_AddSprayPaint(playerID + "_" + "DoppelArle",playerID,"Doppel Arle",spr_KSW_Player_Susie_SprayPaint_DoppelArle,candy,75);
	scr_KSW_AddSprayPaint(playerID + "_" + "SailorMulti",playerID,"Sailor-Multi",spr_KSW_Player_Susie_SprayPaint_SailorMulti,candy,75);
	scr_KSW_AddSprayPaint(playerID + "_" + "Monita",playerID,"Monita",spr_KSW_Player_Susie_SprayPaint_Monita,mage,75);
	scr_KSW_AddSprayPaint(playerID + "_" + "RudeBuster",playerID,"Rude Buster",spr_KSW_Player_Susie_SprayPaint_RudeBuster,flux,75);
	scr_KSW_AddSprayPaint(playerID + "_" + "Egg",playerID,"Egg",spr_KSW_Player_Susie_SprayPaint_Egg,mage,75);
	scr_KSW_AddSprayPaint(playerID + "_" + "Badeline",playerID,"Badeline",spr_KSW_Player_Susie_SprayPaint_Badeline,flux,75);
	scr_KSW_AddSprayPaint(playerID + "_" + "TruePresident",playerID,"True President",spr_KSW_Player_Susie_SprayPaint_TruePresident,flux,75);
	scr_KSW_AddSprayPaint(playerID + "_" + "ThunderSister",playerID,"Thunder Sister",spr_KSW_Player_Susie_SprayPaint_ThunderSister,glimmer,75);
	scr_KSW_AddSprayPaint(playerID + "_" + "SeventhHeaven",playerID,"Seventh Heaven",spr_KSW_Player_Susie_SprayPaint_SeventhHeaven,borange,75);
	scr_KSW_AddSprayPaint(playerID + "_" + "DivisionByZero",playerID,"Division By Zero",spr_KSW_Player_Susie_SprayPaint_DivisionByZero,flux,75);
	scr_KSW_AddSprayPaint(playerID + "_" + "MultipliedByX",playerID,"Multiplied By X",spr_KSW_Player_Susie_SprayPaint_MultipliedByX,glimmer,75);
	scr_KSW_AddSprayPaint(playerID + "_" + "TheUltimateWeapon",playerID,"The Ultimate Weapon",spr_KSW_Player_Susie_SprayPaint_TheUltimateWeapon,legion,75);
	scr_KSW_AddSprayPaint(playerID + "_" + "Eve",playerID,"Eve",spr_KSW_Player_Susie_SprayPaint_Eve,mage,75);
	scr_KSW_AddSprayPaint(playerID + "_" + "BlasterMasterE",playerID,"Blaster Master E",spr_KSW_Player_Susie_SprayPaint_BlasterMasterE,glimmer,75);
	scr_KSW_AddSprayPaint(playerID + "_" + "Miku",playerID,"Miku",spr_KSW_Player_Susie_SprayPaint_Miku,mage,75);
	#endregion
	#endregion
}