///@description KSW - Set Series

function scr_KSW_SetSeries()
{
	#region Setup
	global.KSW_SeriesCount = 0;
	
	global.KSW_SeriesList = [];
	global.KSW_SeriesIDs = ds_map_create();
	#endregion
	
	#region Add Series Here
	scr_KSW_AddSeries("kirby","Kirby");
	scr_KSW_AddSeries("castlevania","Castlevania");
	scr_KSW_AddSeries("metroid","Metroid");
	scr_KSW_AddSeries("insaniquarium","Insaniquarium");
	scr_KSW_AddSeries("slayersX","Slayers X");
	scr_KSW_AddSeries("superMario","Super Mario");
	scr_KSW_AddSeries("sonicTheHedgehog","Sonic The Hedgehog");
	scr_KSW_AddSeries("doshinTheGiant","Doshin The Giant");
	scr_KSW_AddSeries("theLegendOfZelda","The Legend of Zelda");
	scr_KSW_AddSeries("terraria","Terraria");
	scr_KSW_AddSeries("pokemon","Pokemon");
	scr_KSW_AddSeries("warioLand","Wario Land");
	scr_KSW_AddSeries("yugioh","Yu-Gi-Oh");
	scr_KSW_AddSeries("godzilla","Godzilla");
	scr_KSW_AddSeries("monsterHunter","Monster Hunter");
	scr_KSW_AddSeries("pikmin","Pikmin");
	scr_KSW_AddSeries("deirdre","Deirdre");
	scr_KSW_AddSeries("spongebob","Spongebob");
	scr_KSW_AddSeries("caveStory","Cave Story");
	scr_KSW_AddSeries("minecraft","Minecraft");
	scr_KSW_AddSeries("plantsVsZombies","Plants vs Zombies");
	scr_KSW_AddSeries("doom","DOOM");
	scr_KSW_AddSeries("theBindingOfIsaacRebirth","The Binding of Isaac: Rebirth");
	scr_KSW_AddSeries("theBindingOfIsaacForgottenFables","The Binding of Isaac - Forgotten Fables");
	scr_KSW_AddSeries("kirbysDreamLand23","Kirby's Dream Land 2 + 3");
	scr_KSW_AddSeries("undertale","Undertale");
	scr_KSW_AddSeries("deltarune","Deltarune");
	scr_KSW_AddSeries("off","OFF");
	scr_KSW_AddSeries("donkeyKongCountry","Donkey Kong Country");
	scr_KSW_AddSeries("digimon","Digimon");
	scr_KSW_AddSeries("hollowKnight","Hollow Knight");
	scr_KSW_AddSeries("saintsRow","Saints Row");
	scr_KSW_AddSeries("darius","Darius");
	scr_KSW_AddSeries("starfy","Starfy");
	scr_KSW_AddSeries("crashBandicoot","Crash Bandicoot");
	scr_KSW_AddSeries("yoshisIsland","Yoshi's Island");
	scr_KSW_AddSeries("balloonFight","Balloon Fight");
	scr_KSW_AddSeries("finalFantasy","Final Fantasy");
	scr_KSW_AddSeries("pizzaTower","Pizza Tower");
	scr_KSW_AddSeries("shovelKnight","Shovel Knight");
	scr_KSW_AddSeries("megaMan","Mega Man");
	scr_KSW_AddSeries("peggle","Peggle");
	scr_KSW_AddSeries("antonBlast","AntonBlast");
	scr_KSW_AddSeries("dragonQuest","Dragon Quest");
	scr_KSW_AddSeries("astroBot","Astro Bot");
	scr_KSW_AddSeries("angryBirds","Angry Birds");
	scr_KSW_AddSeries("bejewelled","Bejewelled");
	scr_KSW_AddSeries("pacMan","Pac-Man");
	scr_KSW_AddSeries("superSmashBros","Super Smash Bros");
	scr_KSW_AddSeries("rayman","Rayman");
	scr_KSW_AddSeries("spaceInvaders","Space Invaders");
	scr_KSW_AddSeries("amongUs","Among Us");
	scr_KSW_AddSeries("katatsumuri","Katatsumuri");
	scr_KSW_AddSeries("animalCrossing","Animal Crossing");
	scr_KSW_AddSeries("helloKitty","Hello Kitty");
	scr_KSW_AddSeries("happyAppy","Happy Appy");
	scr_KSW_AddSeries("stardewValley","Stardew Valley");
	scr_KSW_AddSeries("starbound","Starbound");
	scr_KSW_AddSeries("webfishing","Webfishing");
	scr_KSW_AddSeries("coreKeeper","Core Keeper");
	scr_KSW_AddSeries("misc","Misc");
	#endregion
}