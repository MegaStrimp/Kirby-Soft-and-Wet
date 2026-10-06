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
	var maze = spr_KSW_UI_CaughtBox_Palette_Maze;
	var tvtime = spr_KSW_UI_CaughtBox_Palette_TVTime;
	#endregion
	
	#region Add Spray Paints Here
	#region Kirby
	var playerID = "kirby";
	
	scr_KSW_AddSprayPaint(playerID + "_" + "Pink",playerID,"Pink",spr_KSW_Player_Kirby_SprayPaint_Pink,candy,0,true);
	scr_KSW_AddSprayPaint(playerID + "_" + "Yellow",playerID,"Yellow",spr_KSW_Player_Kirby_SprayPaint_Yellow,glimmer,50);
	scr_KSW_AddSprayPaint(playerID + "_" + "Red",playerID,"Red",spr_KSW_Player_Kirby_SprayPaint_Red,candy,50);
	scr_KSW_AddSprayPaint(playerID + "_" + "Green",playerID,"Green",spr_KSW_Player_Kirby_SprayPaint_Green,mint,50);
	scr_KSW_AddSprayPaint(playerID + "_" + "Snow",playerID,"Snow",spr_KSW_Player_Kirby_SprayPaint_Snow,mage,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "Carbon",playerID,"Carbon",spr_KSW_Player_Kirby_SprayPaint_Carbon,borange,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "Ocean",playerID,"Ocean",spr_KSW_Player_Kirby_SprayPaint_Ocean,mage,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "Sapphire",playerID,"Sapphire",spr_KSW_Player_Kirby_SprayPaint_Sapphire,mage,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "Grape",playerID,"Grape",spr_KSW_Player_Kirby_SprayPaint_Grape,flux,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "Emerald",playerID,"Emerald",spr_KSW_Player_Kirby_SprayPaint_Emerald,mint,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "Orange",playerID,"Orange",spr_KSW_Player_Kirby_SprayPaint_Orange,borange,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "Chocolate",playerID,"Chocolate",spr_KSW_Player_Kirby_SprayPaint_Chocolate,legion,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "Cherry",playerID,"Cherry",spr_KSW_Player_Kirby_SprayPaint_Cherry,candy,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "Chalk",playerID,"Chalk",spr_KSW_Player_Kirby_SprayPaint_Chalk,legion,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "Mirror",playerID,"Mirror",spr_KSW_Player_Kirby_SprayPaint_Mirror,legion,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "Shadow",playerID,"Shadow",spr_KSW_Player_Kirby_SprayPaint_Shadow,legion,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "Ivory",playerID,"Ivory",spr_KSW_Player_Kirby_SprayPaint_Ivory,glimmer,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "Citrus",playerID,"Citrus",spr_KSW_Player_Kirby_SprayPaint_Citrus,mint,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "Lavender",playerID,"Lavender",spr_KSW_Player_Kirby_SprayPaint_Lavender,flux,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "SmashYellow",playerID,"Smash Yellow",spr_KSW_Player_Kirby_SprayPaint_SmashYellow,glimmer,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "SmashRed",playerID,"Smash Red",spr_KSW_Player_Kirby_SprayPaint_SmashRed,candy,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "SmashGreen",playerID,"Smash Green",spr_KSW_Player_Kirby_SprayPaint_SmashGreen,mint,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "SmashWhite",playerID,"Smash White",spr_KSW_Player_Kirby_SprayPaint_SmashWhite,glimmer,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "SuperstarPink",playerID,"Superstar Pink",spr_KSW_Player_Kirby_SprayPaint_SuperstarPink,candy,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "SuperstarIce",playerID,"Superstar Ice",spr_KSW_Player_Kirby_SprayPaint_SuperstarIce,mage,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "PastelPink",playerID,"Pastel Pink",spr_KSW_Player_Kirby_SprayPaint_PastelPink,candy,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "AdvanceIce",playerID,"Advance Ice",spr_KSW_Player_Kirby_SprayPaint_AdvanceIce,mage,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "AdvanceStone",playerID,"Advance Stone",spr_KSW_Player_Kirby_SprayPaint_AdvanceStone,borange,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "SuperstarMeta",playerID,"Superstar Meta",spr_KSW_Player_Kirby_SprayPaint_SuperstarMeta,flux,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "AdvanceMeta",playerID,"Advance Meta",spr_KSW_Player_Kirby_SprayPaint_AdvanceMeta,flux,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "Waddle",playerID,"Waddle",spr_KSW_Player_Kirby_SprayPaint_Waddle,borange,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "Lololo",playerID,"Lololo",spr_KSW_Player_Kirby_SprayPaint_Lololo,mint,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "Lalala",playerID,"Lalala",spr_KSW_Player_Kirby_SprayPaint_Lalala,candy,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "Original",playerID,"Original",spr_KSW_Player_Kirby_SprayPaint_Original,glimmer,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "ElfilinPeacock",playerID,"Elfilin Peacock",spr_KSW_Player_Kirby_SprayPaint_ElfilinPeacock,mage,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "Baggie",playerID,"Baggie",spr_KSW_Player_Kirby_SprayPaint_Baggie,borange,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "Galacta",playerID,"Galacta",spr_KSW_Player_Kirby_SprayPaint_Galacta,candy,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "Unpleasant",playerID,"Unpleasant",spr_KSW_Player_Kirby_SprayPaint_Unpleasant,candy,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "Mango",playerID,"Mango",spr_KSW_Player_Kirby_SprayPaint_Mango,mint,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "AirRideLBlue",playerID,"Air Ride L Blue",spr_KSW_Player_Kirby_SprayPaint_AirRideLBlue,mage,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "LaserBird",playerID,"Laser Bird",spr_KSW_Player_Kirby_SprayPaint_LaserBird,flux,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "Strawberry",playerID,"Strawberry",spr_KSW_Player_Kirby_SprayPaint_Strawberry,borange,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "Seashell",playerID,"Seashell",spr_KSW_Player_Kirby_SprayPaint_Seashell,legion,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "Lando",playerID,"Lando",spr_KSW_Player_Kirby_SprayPaint_Lando,mage,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "GoldenHour",playerID,"Golden Hour",spr_KSW_Player_Kirby_SprayPaint_GoldenHour,mint,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "Dawn",playerID,"Dawn",spr_KSW_Player_Kirby_SprayPaint_Dawn,glimmer,100);
	//scr_KSW_AddSprayPaint(playerID + "_" + "SuperStar",playerID,"Super Star",spr_KSW_Player_Kirby_SprayPaint_SuperstarPink,candy,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "Lornus",playerID,"Lornus",spr_KSW_Player_Kirby_SprayPaint_Lornus,flux,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "ChuChu",playerID,"ChuChu",spr_KSW_Player_Kirby_SprayPaint_ChuChu,mage,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "SeaBreeze",playerID,"Sea Breeze",spr_KSW_Player_Kirby_SprayPaint_SeaBreeze,mint,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "Aege",playerID,"Aege",spr_KSW_Player_Kirby_SprayPaint_Aege,mint,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "CustardPudding",playerID,"Custard Pudding",spr_KSW_Player_Kirby_SprayPaint_CustardPudding,glimmer,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "HedgehogBlue",playerID,"Hedgehog Blue",spr_KSW_Player_Kirby_SprayPaint_HedgehogBlue,mage,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "PlumberRed",playerID,"Plumber Red",spr_KSW_Player_Kirby_SprayPaint_PlumberRed,candy,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "Virtual",playerID,"Virtual Red",spr_KSW_Player_Kirby_SprayPaint_Virtual,glimmer,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "Plasma",playerID,"Plasmic Orange",spr_KSW_Player_Kirby_SprayPaint_Plasma,flux,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "PearlescentCream",playerID,"Pearlescent Cream",spr_KSW_Player_Kirby_SprayPaint_PearlescentCream,mage,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "Pearlescent",playerID,"Pearlescent",spr_KSW_Player_Kirby_SprayPaint_Pearlescent,mage,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "SoulWhite",playerID,"Soul White",spr_KSW_Player_Kirby_SprayPaint_SoulWhite,flux,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "SilkWhite",playerID,"Silk White",spr_KSW_Player_Kirby_SprayPaint_SilkWhite,legion,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "KnifeBlack",playerID,"Knife Black",spr_KSW_Player_Kirby_SprayPaint_KnifeBlack,flux,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "Snowball",playerID,"Snowball Blue",spr_KSW_Player_Kirby_SprayPaint_Snowball,candy,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "CoralBreeze",playerID,"Coral Breeze",spr_KSW_Player_Kirby_SprayPaint_CoralBreeze,candy,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "Crunchy",playerID,"Crunchy",spr_KSW_Player_Kirby_SprayPaint_Crunchy,glimmer,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "Missing",playerID,"[blink]MISSINGNO[/blink]",spr_KSW_Player_Kirby_SprayPaint_Missing,legion,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "SmashPurple",playerID,"Smash Purple",spr_KSW_Player_Kirby_SprayPaint_SmashPurple,flux,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "SpadeBoy",playerID,"Spade Boy",spr_KSW_Player_Kirby_SprayPaint_SpadeBoy,mage,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "AncientCurse",playerID,"Ancient Curse",spr_KSW_Player_Kirby_SprayPaint_AncientCurse,mint,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "Armageddon",playerID,"Armageddon",spr_KSW_Player_Kirby_SprayPaint_Armageddon,borange,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "ArtDeco",playerID,"Art Deco",spr_KSW_Player_Kirby_SprayPaint_ArtDeco,glimmer,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "BurningSpice",playerID,"Burning Spice",spr_KSW_Player_Kirby_SprayPaint_BurningSpice,candy,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "ChargedOG",playerID,"Charged OG",spr_KSW_Player_Kirby_SprayPaint_ChargedOG,mint,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "CommunityV2",playerID,"Community V2",spr_KSW_Player_Kirby_SprayPaint_CommunityV2,mage,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "DarkCacao",playerID,"Dark Cacao",spr_KSW_Player_Kirby_SprayPaint_DarkCacao,flux,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "DarkEnchantress",playerID,"Dar kEnchantress",spr_KSW_Player_Kirby_SprayPaint_DarkEnchantress,candy,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "Delirious",playerID,"Delirious",spr_KSW_Player_Kirby_SprayPaint_Delirious,glimmer,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "EternalSugar",playerID,"Eternal Sugar",spr_KSW_Player_Kirby_SprayPaint_EternalSugar,candy,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "FrozenForest",playerID,"Frozen Forest",spr_KSW_Player_Kirby_SprayPaint_FrozenForest,mint,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "Glitch",playerID,"Glitch",spr_KSW_Player_Kirby_SprayPaint_Glitch,mint,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "GoldenCheese",playerID,"Golden Cheese",spr_KSW_Player_Kirby_SprayPaint_GoldenCheese,borange,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "Goldforged",playerID,"Goldforged",spr_KSW_Player_Kirby_SprayPaint_Goldforged,glimmer,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "Haunting",playerID,"Haunting",spr_KSW_Player_Kirby_SprayPaint_Haunting,flux,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "Hollyberry",playerID,"Hollyberry",spr_KSW_Player_Kirby_SprayPaint_Hollyberry,candy,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "HomeTeam",playerID,"Home Team",spr_KSW_Player_Kirby_SprayPaint_HomeTeam,mage,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "KiraKira",playerID,"Kira Kira",spr_KSW_Player_Kirby_SprayPaint_KiraKira,mage,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "LuckyClover",playerID,"Lucky Clover",spr_KSW_Player_Kirby_SprayPaint_LuckyClover,mint,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "MysticFlour",playerID,"Mystic Flour",spr_KSW_Player_Kirby_SprayPaint_MysticFlour,glimmer,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "PactOfPoison",playerID,"Pact of Poison",spr_KSW_Player_Kirby_SprayPaint_PactOfPoison,mint,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "PomPomDough",playerID,"Pom Pom Dough",spr_KSW_Player_Kirby_SprayPaint_PomPomDough,mint,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "PoolParty",playerID,"Pool Party",spr_KSW_Player_Kirby_SprayPaint_PoolParty,mint,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "PureVanilla",playerID,"Pure Vanilla",spr_KSW_Player_Kirby_SprayPaint_PureVanilla,glimmer,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "RavensHonor",playerID,"Raven's Honor",spr_KSW_Player_Kirby_SprayPaint_RavensHonor,flux,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "RGB",playerID,"RGB",spr_KSW_Player_Kirby_SprayPaint_RGB,candy,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "Sandstone",playerID,"Sandstone",spr_KSW_Player_Kirby_SprayPaint_Sandstone,glimmer,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "ShadowMilk",playerID,"Shadow Milk",spr_KSW_Player_Kirby_SprayPaint_ShadowMilk,mage,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "SilentSalt",playerID,"Silent Salt",spr_KSW_Player_Kirby_SprayPaint_SilentSalt,legion,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "Sketch",playerID,"Sketch",spr_KSW_Player_Kirby_SprayPaint_Sketch,legion,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "Skyforged",playerID,"Skyforged",spr_KSW_Player_Kirby_SprayPaint_Skyforged,legion,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "SoulFire",playerID,"SoulFire",spr_KSW_Player_Kirby_SprayPaint_SoulFire,mint,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "Sunset",playerID,"Sunset",spr_KSW_Player_Kirby_SprayPaint_Sunset,glimmer,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "Synthwave",playerID,"Synthwave",spr_KSW_Player_Kirby_SprayPaint_Synthwave,mage,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "VenomDough",playerID,"Venom Dough",spr_KSW_Player_Kirby_SprayPaint_VenomDough,flux,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "WhiteLily",playerID,"White Lily",spr_KSW_Player_Kirby_SprayPaint_WhiteLily,mint,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "HollyJolly",playerID,"Holly Jolly",spr_KSW_Player_Kirby_SprayPaint_HollyJolly,candy,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "Freddy",playerID,"Freddy",spr_KSW_Player_Kirby_SprayPaint_Freddy,borange,100);
	#endregion
	
	#region Gooey
	var playerID = "gooey";
	
	var spray = scr_KSW_AddSprayPaint(playerID + "_" + "GooBloo",playerID,"Goo Bloo",spr_KSW_Player_Gooey_SprayPaint_GooBloo,mage,0,true);
	spray.gooeyTongueColor = #D62F27;
	var spray = scr_KSW_AddSprayPaint(playerID + "_" + "Yellow",playerID,"Yellow",spr_KSW_Player_Gooey_SprayPaint_Yellow,glimmer,100);
	spray.gooeyTongueColor = #D62F27;
	var spray = scr_KSW_AddSprayPaint(playerID + "_" + "ButterKnife",playerID,"Butter-Knife",spr_KSW_Player_Gooey_SprayPaint_ButterKnife,glimmer,100);
	spray.gooeyTongueColor = #D92463;
	var spray = scr_KSW_AddSprayPaint(playerID + "_" + "Carbon",playerID,"Carbon",spr_KSW_Player_Gooey_SprayPaint_Carbon,borange,100);
	spray.gooeyTongueColor = #F85010;
	var spray = scr_KSW_AddSprayPaint(playerID + "_" + "DreamyBlueberry",playerID,"Dreamy Blueberry",spr_KSW_Player_Gooey_SprayPaint_DreamyBlueberry,mage,100);
	spray.gooeyTongueColor = #2D80ED;
	var spray = scr_KSW_AddSprayPaint(playerID + "_" + "FriendlyPink",playerID,"Friendly Pink",spr_KSW_Player_Gooey_SprayPaint_FriendlyPink,candy,100);
	spray.gooeyTongueColor = #D10E55;
	var spray = scr_KSW_AddSprayPaint(playerID + "_" + "Mirror",playerID,"Mirror",spr_KSW_Player_Gooey_SprayPaint_Mirror,mint,100);
	spray.gooeyTongueColor = #18A090;
	var spray = scr_KSW_AddSprayPaint(playerID + "_" + "Mystic",playerID,"Mystic",spr_KSW_Player_Gooey_SprayPaint_Mystic,flux,100);
	spray.gooeyTongueColor = #EFC475;
	var spray = scr_KSW_AddSprayPaint(playerID + "_" + "Ninja",playerID,"Ninja",spr_KSW_Player_Gooey_SprayPaint_Ninja,candy,100);
	spray.gooeyTongueColor = #FF96C8;
	var spray = scr_KSW_AddSprayPaint(playerID + "_" + "Plasma",playerID,"Plasma",spr_KSW_Player_Gooey_SprayPaint_Plasma,mint,100);
	spray.gooeyTongueColor = #FFBF35;
	var spray = scr_KSW_AddSprayPaint(playerID + "_" + "PlumpTomato",playerID,"Plump Tomato",spr_KSW_Player_Gooey_SprayPaint_PlumpTomato,candy,100);
	spray.gooeyTongueColor = #2FAF97;
	var spray = scr_KSW_AddSprayPaint(playerID + "_" + "YolkTemple",playerID,"Yolk Temple",spr_KSW_Player_Gooey_SprayPaint_YolkTemple,mint,100);
	spray.gooeyTongueColor = #6BA580;
	var spray = scr_KSW_AddSprayPaint(playerID + "_" + "Zebon",playerID,"Zebon",spr_KSW_Player_Gooey_SprayPaint_Zebon,mint,100);
	spray.gooeyTongueColor = #1D3325;
	var spray = scr_KSW_AddSprayPaint(playerID + "_" + "Nidoo",playerID,"Nidoo",spr_KSW_Player_Gooey_SprayPaint_Nidoo,mint,100);
	spray.gooeyTongueColor = #434156;
	var spray = scr_KSW_AddSprayPaint(playerID + "_" + "AngryFowl",playerID,"Angry Fowl",spr_KSW_Player_Gooey_SprayPaint_AngryFowl,mint,100);
	spray.gooeyTongueColor = #FDB813;
	var spray = scr_KSW_AddSprayPaint(playerID + "_" + "AIBubble",playerID,"AI Bubble",spr_KSW_Player_Gooey_SprayPaint_AIBubble,mint,100);
	spray.gooeyTongueColor = #DAD4F9;
	var spray = scr_KSW_AddSprayPaint(playerID + "_" + "Pumpkin",playerID,"Pumpkin",spr_KSW_Player_Gooey_SprayPaint_Pumpkin,mint,100);
	spray.gooeyTongueColor = #250100;
	var spray = scr_KSW_AddSprayPaint(playerID + "_" + "Watermelon",playerID,"Watermelon",spr_KSW_Player_Gooey_SprayPaint_Watermelon,mint,100);
	spray.gooeyTongueColor = #C03123;
	var spray = scr_KSW_AddSprayPaint(playerID + "_" + "DarkMatter",playerID,"Dark Matter",spr_KSW_Player_Gooey_SprayPaint_DarkMatter,mint,100);
	spray.gooeyTongueColor = #E27616;
	var spray = scr_KSW_AddSprayPaint(playerID + "_" + "Retro",playerID,"Retro",spr_KSW_Player_Gooey_SprayPaint_Retro,mint,100);
	spray.gooeyTongueColor = #D7F7D7;
	var spray = scr_KSW_AddSprayPaint(playerID + "_" + "Delirious",playerID,"Delirious",spr_KSW_Player_Gooey_SprayPaint_Delirious,glimmer,100);
	spray.gooeyTongueColor = #ABA000;
	var spray = scr_KSW_AddSprayPaint(playerID + "_" + "Gish",playerID,"Gish",spr_KSW_Player_Gooey_SprayPaint_Gish,glimmer,100);
	spray.gooeyTongueColor = #DFCCDD;
	var spray = scr_KSW_AddSprayPaint(playerID + "_" + "Golden",playerID,"Golden",spr_KSW_Player_Gooey_SprayPaint_Golden,flux,100);
	spray.gooeyTongueColor = #8200C9;
	var spray = scr_KSW_AddSprayPaint(playerID + "_" + "Lava",playerID,"Lava",spr_KSW_Player_Gooey_SprayPaint_Lava,borange,100);
	spray.gooeyTongueColor = #E39031;
	var spray = scr_KSW_AddSprayPaint(playerID + "_" + "Gooety",playerID,"Gooety",spr_KSW_Player_Gooey_SprayPaint_Gooety,glimmer,100);
	spray.gooeyTongueColor = #000000;
	var spray = scr_KSW_AddSprayPaint(playerID + "_" + "MineSlime",playerID,"Mine Slime",spr_KSW_Player_Gooey_SprayPaint_MineSlime,mint,100);
	spray.gooeyTongueColor = #2D681B;
	var spray = scr_KSW_AddSprayPaint(playerID + "_" + "SulfurCube",playerID,"Sulfur Cube",spr_KSW_Player_Gooey_SprayPaint_SulfurCube,glimmer,100);
	spray.gooeyTongueColor = #503E32;
	#endregion
	
	#region Elfilin
	var playerID = "elfilin";
	
	scr_KSW_AddSprayPaint(playerID + "_" + "Peacock",playerID,"Peacock",spr_KSW_Player_Elfilin_SprayPaint_Peacock,mage,0,true);
	scr_KSW_AddSprayPaint(playerID + "_" + "Forgo",playerID,"Forgo",spr_KSW_Player_Elfilin_SprayPaint_Forgo,mint,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "Chaos",playerID,"Chaos",spr_KSW_Player_Elfilin_SprayPaint_Chaos,legion,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "KirbyPink",playerID,"Kirby Pink",spr_KSW_Player_Elfilin_SprayPaint_KirbyPink,candy,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "Leongar",playerID,"Leongar",spr_KSW_Player_Elfilin_SprayPaint_Leongar,borange,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "Phantom",playerID,"Phantom",spr_KSW_Player_Elfilin_SprayPaint_Phantom,flux,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "Crystal",playerID,"Crystal",spr_KSW_Player_Elfilin_SprayPaint_Crystal,mage,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "Apple",playerID,"Apple",spr_KSW_Player_Elfilin_SprayPaint_Apple,candy,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "Dreary",playerID,"Dreary",spr_KSW_Player_Elfilin_SprayPaint_Dreary,legion,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "Gray",playerID,"Gray",spr_KSW_Player_Elfilin_SprayPaint_Gray,legion,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "Angry",playerID,"Angry",spr_KSW_Player_Elfilin_SprayPaint_Angry,borange,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "Daroach",playerID,"Daroach",spr_KSW_Player_Elfilin_SprayPaint_Daroach,legion,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "DarkDaroach",playerID,"Dark Daroach",spr_KSW_Player_Elfilin_SprayPaint_DarkDaroach,flux,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "Doc",playerID,"Doc",spr_KSW_Player_Elfilin_SprayPaint_Doc,mint,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "Spinni",playerID,"Spinni",spr_KSW_Player_Elfilin_SprayPaint_Spinni,borange,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "Storo",playerID,"Storo",spr_KSW_Player_Elfilin_SprayPaint_Storo,mage,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "Ribbon",playerID,"Ribbon",spr_KSW_Player_Elfilin_SprayPaint_Ribbon,candy,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "LightGrape",playerID,"Light Grape",spr_KSW_Player_Elfilin_SprayPaint_LightGrape,flux,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "Crisp",playerID,"Crisp",spr_KSW_Player_Elfilin_SprayPaint_Crisp,borange,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "TheJudge",playerID,"The Judge",spr_KSW_Player_Elfilin_SprayPaint_TheJudge,borange,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "Amethyst",playerID,"Amethyst",spr_KSW_Player_Elfilin_SprayPaint_Amethyst,candy,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "CoinGold",playerID,"Coin Gold",spr_KSW_Player_Elfilin_SprayPaint_CoinGold,glimmer,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "Cookie",playerID,"Cookie",spr_KSW_Player_Elfilin_SprayPaint_Cookie,borange,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "Reversed",playerID,"Reversed",spr_KSW_Player_Elfilin_SprayPaint_Reversed,borange,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "GreenApple",playerID,"Green Apple",spr_KSW_Player_Elfilin_SprayPaint_GreenApple,mint,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "Gnorpy",playerID,"Gnorpy",spr_KSW_Player_Elfilin_SprayPaint_Gnorpy,mint,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "Foxy",playerID,"Foxy",spr_KSW_Player_Elfilin_SprayPaint_Foxy,candy,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "Delirious",playerID,"Delirious",spr_KSW_Player_Elfilin_SprayPaint_Delirious,glimmer,100);
	#endregion
	
	#region Marx
	var playerID = "marx";
	
	scr_KSW_AddSprayPaint(playerID + "_" + "JesterGrape",playerID,"Jester Grape",spr_KSW_Player_Marx_SprayPaint_JesterGrape,flux,0,true);
	scr_KSW_AddSprayPaint(playerID + "_" + "Starless",playerID,"Starless",spr_KSW_Player_Marx_SprayPaint_Starless,legion,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "Chaos",playerID,"Chaos",spr_KSW_Player_Marx_SprayPaint_Chaos,mint,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "Beam",playerID,"Beam",spr_KSW_Player_Marx_SprayPaint_Beam,borange,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "Inverse",playerID,"Inverse",spr_KSW_Player_Marx_SprayPaint_Inverse,borange,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "Traitorous",playerID,"Traitorous",spr_KSW_Player_Marx_SprayPaint_Traitorous,glimmer,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "Reflective",playerID,"Reflective",spr_KSW_Player_Marx_SprayPaint_Reflective,mint,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "AirRider",playerID,"Air Rider",spr_KSW_Player_Marx_SprayPaint_AirRider,legion,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "TheComet",playerID,"The Comet",spr_KSW_Player_Marx_SprayPaint_TheComet,glimmer,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "PuzzleWitch",playerID,"Puzzle Witch",spr_KSW_Player_Marx_SprayPaint_PuzzleWitch,glimmer,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "SpiderWeb",playerID,"Spider Web",spr_KSW_Player_Marx_SprayPaint_SpiderWeb,borange,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "SleepyMood",playerID,"Sleepy Mood",spr_KSW_Player_Marx_SprayPaint_SleepyMood,candy,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "TerribleDream",playerID,"Terrible Dream",spr_KSW_Player_Marx_SprayPaint_TerribleDream,mage,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "MachineOwner",playerID,"Machine Owner",spr_KSW_Player_Marx_SprayPaint_MachineOwner,legion,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "ForgottenSoul",playerID,"Forgotten Soul",spr_KSW_Player_Marx_SprayPaint_ForgottenSoul,mint,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "ForgottenSoulAlt",playerID,"Forgotten Soul Alt",spr_KSW_Player_Marx_SprayPaint_ForgottenSoulAlt,legion,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "TrueSoul",playerID,"True Soul",spr_KSW_Player_Marx_SprayPaint_TrueSoul,mage,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "StarsChosen",playerID,"Stars Chosen",spr_KSW_Player_Marx_SprayPaint_StarsChosen,borange,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "DigitalCircus",playerID,"Digital Circus",spr_KSW_Player_Marx_SprayPaint_DigitalCircus,mage,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "BigtopSteve",playerID,"Bigtop Steve",spr_KSW_Player_Marx_SprayPaint_BigtopSteve,legion,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "Krusty",playerID,"Krusty",spr_KSW_Player_Marx_SprayPaint_Krusty,mint,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "Joker",playerID,"Joker",spr_KSW_Player_Marx_SprayPaint_Joker,mint,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "Jarona",playerID,"Jarona",spr_KSW_Player_Marx_SprayPaint_Jarona,glimmer,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "Bonnie",playerID,"Bonnie",spr_KSW_Player_Marx_SprayPaint_Bonnie,mage,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "Delirious",playerID,"Delirious",spr_KSW_Player_Marx_SprayPaint_Delirious,glimmer,100);
	#endregion
	
	#region Waddle Dee
	var playerID = "waddleDee";
	
	scr_KSW_AddSprayPaint(playerID + "_" + "DeeFault",playerID,"Dee-Fault",spr_KSW_Player_WaddleDee_SprayPaint_DeeFault,borange,0,true);
	scr_KSW_AddSprayPaint(playerID + "_" + "Yellow",playerID,"Yellow",spr_KSW_Player_WaddleDee_SprayPaint_Yellow,glimmer,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "Green",playerID,"Green",spr_KSW_Player_WaddleDee_SprayPaint_Green,mint,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "Golden",playerID,"Golden",spr_KSW_Player_WaddleDee_SprayPaint_Golden,glimmer,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "Grand",playerID,"Grand",spr_KSW_Player_WaddleDee_SprayPaint_Grand,borange,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "TripleDee",playerID,"Triple Dee",spr_KSW_Player_WaddleDee_SprayPaint_TripleDee,mage,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "Aggressive",playerID,"Aggressive",spr_KSW_Player_WaddleDee_SprayPaint_Aggressive,flux,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "Chunky",playerID,"Chunky",spr_KSW_Player_WaddleDee_SprayPaint_Chunky,borange,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "Pink",playerID,"Pink",spr_KSW_Player_WaddleDee_SprayPaint_Pink,candy,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "Halcandle",playerID,"Halcandle",spr_KSW_Player_WaddleDee_SprayPaint_Halcandle,legion,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "Sectra",playerID,"Sectra",spr_KSW_Player_WaddleDee_SprayPaint_Sectra,mint,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "Mango",playerID,"Mango",spr_KSW_Player_WaddleDee_SprayPaint_Mango,borange,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "Revenge",playerID,"Revenge",spr_KSW_Player_WaddleDee_SprayPaint_Revenge,flux,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "Mono",playerID,"Mono",spr_KSW_Player_WaddleDee_SprayPaint_Mono,legion,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "UltraPink",playerID,"Ultra Pink",spr_KSW_Player_WaddleDee_SprayPaint_UltraPink,candy,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "HelperGreen",playerID,"Helper Green",spr_KSW_Player_WaddleDee_SprayPaint_HelperGreen,mint,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "GhostlyBlue",playerID,"Ghostly Blue",spr_KSW_Player_WaddleDee_SprayPaint_GhostlyBlue,mage,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "Beanbon",playerID,"Beanbon",spr_KSW_Player_WaddleDee_SprayPaint_Beanbon,mint,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "Primal",playerID,"Primal",spr_KSW_Player_WaddleDee_SprayPaint_Primal,borange,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "Metall",playerID,"Metall",spr_KSW_Player_WaddleDee_SprayPaint_Metall,glimmer,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "FleaMan",playerID,"Flea Man",spr_KSW_Player_WaddleDee_SprayPaint_FleaMan,mint,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "Grunt",playerID,"Grunt",spr_KSW_Player_WaddleDee_SprayPaint_Grunt,borange,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "Goomba",playerID,"Goomba",spr_KSW_Player_WaddleDee_SprayPaint_Goomba,borange,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "Bomberman",playerID,"Bomberman",spr_KSW_Player_WaddleDee_SprayPaint_Bomberman,glimmer,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "Sonic",playerID,"Sonic",spr_KSW_Player_WaddleDee_SprayPaint_Sonic,mage,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "CaptainFalcon",playerID,"Captain Falcon",spr_KSW_Player_WaddleDee_SprayPaint_CaptainFalcon,candy,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "GreenSnurp",playerID,"Green Snurp",spr_KSW_Player_WaddleDee_SprayPaint_GreenSnurp,mint,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "ShyGuy",playerID,"Shy Guy",spr_KSW_Player_WaddleDee_SprayPaint_ShyGuy,candy,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "Onkey",playerID,"Onkey",spr_KSW_Player_WaddleDee_SprayPaint_Onkey,flux,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "BadTime",playerID,"Bad Time",spr_KSW_Player_WaddleDee_SprayPaint_BadTime,mage,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "Delirious",playerID,"Delirious",spr_KSW_Player_WaddleDee_SprayPaint_Delirious,glimmer,100);
	#endregion
	
	#region Susie
	var playerID = "susie";
	
	scr_KSW_AddSprayPaint(playerID + "_" + "Business",playerID,"Business",spr_KSW_Player_Susie_SprayPaint_Business,candy,0,true);
	scr_KSW_AddSprayPaint(playerID + "_" + "Yellow",playerID,"Yellow",spr_KSW_Player_Susie_SprayPaint_Yellow,glimmer,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "Blue",playerID,"Blue",spr_KSW_Player_Susie_SprayPaint_Blue,mage,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "Parallel",playerID,"Parallel",spr_KSW_Player_Susie_SprayPaint_Parallel,candy,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "MotorOil",playerID,"Motor Oil",spr_KSW_Player_Susie_SprayPaint_MotorOil,candy,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "Lilac",playerID,"Lilac",spr_KSW_Player_Susie_SprayPaint_Lilac,flux,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "Milla",playerID,"Milla",spr_KSW_Player_Susie_SprayPaint_Milla,mint,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "Saffrom",playerID,"Saffrom",spr_KSW_Player_Susie_SprayPaint_Saffrom,borange,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "Twilight",playerID,"Twilight",spr_KSW_Player_Susie_SprayPaint_Twilight,flux,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "DoppelArle",playerID,"Doppel Arle",spr_KSW_Player_Susie_SprayPaint_DoppelArle,candy,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "SailorMulti",playerID,"Sailor-Multi",spr_KSW_Player_Susie_SprayPaint_SailorMulti,candy,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "Monita",playerID,"Monita",spr_KSW_Player_Susie_SprayPaint_Monita,mage,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "RudeBuster",playerID,"Rude Buster",spr_KSW_Player_Susie_SprayPaint_RudeBuster,flux,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "Egg",playerID,"Egg",spr_KSW_Player_Susie_SprayPaint_Egg,mage,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "Badeline",playerID,"Badeline",spr_KSW_Player_Susie_SprayPaint_Badeline,flux,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "TruePresident",playerID,"True President",spr_KSW_Player_Susie_SprayPaint_TruePresident,flux,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "ThunderSister",playerID,"Thunder Sister",spr_KSW_Player_Susie_SprayPaint_ThunderSister,glimmer,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "SeventhHeaven",playerID,"Seventh Heaven",spr_KSW_Player_Susie_SprayPaint_SeventhHeaven,borange,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "DivisionByZero",playerID,"Division By Zero",spr_KSW_Player_Susie_SprayPaint_DivisionByZero,flux,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "MultipliedByX",playerID,"Multiplied By X",spr_KSW_Player_Susie_SprayPaint_MultipliedByX,glimmer,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "TheUltimateWeapon",playerID,"The Ultimate Weapon",spr_KSW_Player_Susie_SprayPaint_TheUltimateWeapon,legion,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "Eve",playerID,"Eve",spr_KSW_Player_Susie_SprayPaint_Eve,mage,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "BlasterMasterE",playerID,"Blaster Master E",spr_KSW_Player_Susie_SprayPaint_BlasterMasterE,glimmer,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "Miku",playerID,"Miku",spr_KSW_Player_Susie_SprayPaint_Miku,mage,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "Chica",playerID,"Chica",spr_KSW_Player_Susie_SprayPaint_Chica,glimmer,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "Delirious",playerID,"Delirious",spr_KSW_Player_Susie_SprayPaint_Delirious,glimmer,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "Lacey",playerID,"Lacey",spr_KSW_Player_Susie_SprayPaint_Lacey,mint,100);
	#endregion
	
	#region Ybrik
	var playerID = "ybrik";
	
	scr_KSW_AddSprayPaint(playerID + "_" + "MonsterInDreamLand",playerID,"Monster in Dream Land",spr_KSW_Player_Ybrik_SprayPaint_MonsterInDreamland,borange,0,true);
	scr_KSW_AddSprayPaint(playerID + "_" + "DreamlandExe",playerID,"Dreamland.exe",spr_KSW_Player_Ybrik_SprayPaint_DreamlandExe,candy,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "TMK",playerID,"TMK",spr_KSW_Player_Ybrik_SprayPaint_TMK,legion,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "EFGK",playerID,"EFGK",spr_KSW_Player_Ybrik_SprayPaint_EFGK,mint,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "2016",playerID,"2016",spr_KSW_Player_Ybrik_SprayPaint_2016,borange,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "Redreamed",playerID,"Redreamed",spr_KSW_Player_Ybrik_SprayPaint_Redreamed,legion,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "HungryPinkPuffball",playerID,"Hungry Pink Puffball",spr_KSW_Player_Ybrik_SprayPaint_HungryPinkPuffball,candy,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "IllegalInstruction",playerID,"Illegal Instruction",spr_KSW_Player_Ybrik_SprayPaint_IllegalInstruction,mage,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "WaddleWaddle",playerID,"Waddle Waddle",spr_KSW_Player_Ybrik_SprayPaint_WaddleWaddle,borange,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "DevourYourSoul",playerID,"Devour Your Soul",spr_KSW_Player_Ybrik_SprayPaint_DevourYourSoul,borange,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "DarkBlood",playerID,"Dark Blood",spr_KSW_Player_Ybrik_SprayPaint_DarkBlood,legion,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "ColoringBook",playerID,"Coloring Book",spr_KSW_Player_Ybrik_SprayPaint_ColoringBook,borange,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "Sheriff",playerID,"Sheriff",spr_KSW_Player_Ybrik_SprayPaint_Sheriff,glimmer,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "Ybeek",playerID,"Ybeek",spr_KSW_Player_Ybrik_SprayPaint_Ybeek,glimmer,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "Forgotten",playerID,"Forgotten",spr_KSW_Player_Ybrik_SprayPaint_Forgotten,mage,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "ShadowMantle",playerID,"Shadow Mantle",spr_KSW_Player_Ybrik_SprayPaint_ShadowMantle,borange,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "SnowPalace",playerID,"Snow Palace",spr_KSW_Player_Ybrik_SprayPaint_SnowPalace,mage,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "KirbysWorld",playerID,"Kirby's World",spr_KSW_Player_Ybrik_SprayPaint_KirbysWorld,mage,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "UndeadOfNevada",playerID,"Undead of Nevada",spr_KSW_Player_Ybrik_SprayPaint_UndeadOfNevada,mint,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "NevadaAgent",playerID,"Nevada Agent",spr_KSW_Player_Ybrik_SprayPaint_NevadaAgent,legion,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "WackaWackaWacka",playerID,"Wacka Wacka Wacka",spr_KSW_Player_Ybrik_SprayPaint_WackaWackaWacka,maze,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "FeelingBlue",playerID,"Feeling Blue",spr_KSW_Player_Ybrik_SprayPaint_FeelingBlue,mage,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "TooSlow",playerID,"Too Slow",spr_KSW_Player_Ybrik_SprayPaint_TooSlow,mage,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "GrapeGarden",playerID,"Grape Garden",spr_KSW_Player_Ybrik_SprayPaint_GrapeGarden,flux,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "FridayNight",playerID,"Friday Night",spr_KSW_Player_Ybrik_SprayPaint_FridayNight,candy,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "KirbyBrik",playerID,"Kirby Brik",spr_KSW_Player_Ybrik_SprayPaint_KirbyBrik,mage,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "StarryNight",playerID,"Starry Night",spr_KSW_Player_Ybrik_SprayPaint_StarryNight,candy,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "DoNotSteel",playerID,"Do Not Steel",spr_KSW_Player_Ybrik_SprayPaint_DoNotSteel,flux,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "BiteOf85",playerID,"Bite of 85",spr_KSW_Player_Ybrik_SprayPaint_BiteOf85,glimmer,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "AnnoyingOrange",playerID,"Annoying Orange",spr_KSW_Player_Ybrik_SprayPaint_AnnoyingOrange,borange,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "ShapesAndBites",playerID,"Shapes and Bites",spr_KSW_Player_Ybrik_SprayPaint_ShapesAndBites,candy,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "HulkSmash",playerID,"Hulk Smash",spr_KSW_Player_Ybrik_SprayPaint_HulkSmash,mint,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "Roundabout",playerID,"Roundabout",spr_KSW_Player_Ybrik_SprayPaint_Roundabout,candy,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "Breakfast",playerID,"Breakfast",spr_KSW_Player_Ybrik_SprayPaint_Breakfast,borange,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "DontBuyThis",playerID,"Don't Buy This",spr_KSW_Player_Ybrik_SprayPaint_DontBuyThis,mage,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "ITTNZMAHEKG",playerID,"ITTNZMAHEKG",spr_KSW_Player_Ybrik_SprayPaint_ITTNZMAHEKG,glimmer,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "RoyalRival",playerID,"Royal Rival",spr_KSW_Player_Ybrik_SprayPaint_RoyalRival,mage,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "TheVisitor",playerID,"The Visitor",spr_KSW_Player_Ybrik_SprayPaint_TheVisitor,candy,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "TheDevil",playerID,"The Devil",spr_KSW_Player_Ybrik_SprayPaint_TheDevil,borange,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "ComicRed",playerID,"Comic Red",spr_KSW_Player_Ybrik_SprayPaint_ComicRed,legion,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "RIP",playerID,"RIP",spr_KSW_Player_Ybrik_SprayPaint_RIP,legion,100);
	#endregion
	
	#region Chip
	var playerID = "chip";
	
	scr_KSW_AddSprayPaint(playerID + "_" + "Lemon",playerID,"Lemon",spr_KSW_Player_Chip_SprayPaint_Lemon,glimmer,0,true);
	scr_KSW_AddSprayPaint(playerID + "_" + "Arctic",playerID,"Arctic",spr_KSW_Player_Chip_SprayPaint_Arctic,mage,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "Pumpkin",playerID,"Pumpkin",spr_KSW_Player_Chip_SprayPaint_Pumpkin,borange,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "Grape",playerID,"Grape",spr_KSW_Player_Chip_SprayPaint_Grape,flux,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "Olive",playerID,"Olive",spr_KSW_Player_Chip_SprayPaint_Olive,mint,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "Steel",playerID,"Steel",spr_KSW_Player_Chip_SprayPaint_Steel,legion,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "BubbleGum",playerID,"Bubble Gum",spr_KSW_Player_Chip_SprayPaint_BubbleGum,candy,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "Frog",playerID,"Frog",spr_KSW_Player_Chip_SprayPaint_Frog,mint,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "BlueRasp",playerID,"Blue Rasp",spr_KSW_Player_Chip_SprayPaint_BlueRasp,mage,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "Miko",playerID,"Miko",spr_KSW_Player_Chip_SprayPaint_Miko,candy,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "BigTail",playerID,"Big Tail",spr_KSW_Player_Chip_SprayPaint_BigTail,borange,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "RosyMaple",playerID,"Rosy Maple",spr_KSW_Player_Chip_SprayPaint_RosyMaple,candy,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "Aqua",playerID,"Aqua",spr_KSW_Player_Chip_SprayPaint_Aqua,mage,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "Chocolate",playerID,"Chocolate",spr_KSW_Player_Chip_SprayPaint_Chocolate,borange,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "Virtual",playerID,"Virtual",spr_KSW_Player_Chip_SprayPaint_Virtual,candy,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "Slime",playerID,"Slime",spr_KSW_Player_Chip_SprayPaint_Slime,mint,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "Dusty",playerID,"Dusty",spr_KSW_Player_Chip_SprayPaint_Dusty,borange,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "Midnight",playerID,"Midnight",spr_KSW_Player_Chip_SprayPaint_Midnight,flux,100);
	#endregion
	
	#region Kracko
	var playerID = "kracko";
	
	scr_KSW_AddSprayPaint(playerID + "_" + "BubblyCloud",playerID,"Bubbly Cloud",spr_KSW_Player_Kracko_SprayPaint_BubblyCloud,mage,0,true);
	scr_KSW_AddSprayPaint(playerID + "_" + "Revenge",playerID,"Revenge",spr_KSW_Player_Kracko_SprayPaint_Revenge,mage,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "SkyHigh",playerID,"Sky High",spr_KSW_Player_Kracko_SprayPaint_SkyHigh,mage,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "Thunderous",playerID,"Thunderous",spr_KSW_Player_Kracko_SprayPaint_Thunderous,mage,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "Mecha",playerID,"Mecha",spr_KSW_Player_Kracko_SprayPaint_Mecha,mage,100);
	//scr_KSW_AddSprayPaint(playerID + "_" + "Adventure",playerID,"Adventure",spr_KSW_Player_Kracko_SprayPaint_Adventure,mage,100); STRIMPTODO For his birthday
	scr_KSW_AddSprayPaint(playerID + "_" + "Parallel",playerID,"Parallel",spr_KSW_Player_Kracko_SprayPaint_Parallel,mage,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "Holograph",playerID,"Holograph",spr_KSW_Player_Kracko_SprayPaint_Holograph,mage,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "Holograph20",playerID,"Holograph 2.0",spr_KSW_Player_Kracko_SprayPaint_Holograph20,mage,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "Venom",playerID,"Venom",spr_KSW_Player_Kracko_SprayPaint_Venom,mage,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "DynaBlade",playerID,"Dyna Blade",spr_KSW_Player_Kracko_SprayPaint_DynaBlade,mage,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "Sunset",playerID,"Sunset",spr_KSW_Player_Kracko_SprayPaint_Sunset,mage,100);
	scr_KSW_AddSprayPaint(playerID + "_" + "WhizBang",playerID,"Whiz-Bang",spr_KSW_Player_Kracko_SprayPaint_WhizBang,glimmer,100);
	#endregion
	
	#region N-Z
	var playerID = "nz";
	
	scr_KSW_AddSprayPaint(playerID + "_" + "Matter",playerID,"Matter",spr_KSW_Player_NZ_SprayPaint_Matter,legion,0,true);
	#endregion
	#endregion
}