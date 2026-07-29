///@description KSW - Set Bobbers

function scr_KSW_SetBobbers()
{
	#region Setup
	global.KSW_BobberCount = 0;
	global.KSW_VisibleBobberCount = 0;
	
	global.KSW_BobberList = [];
	global.KSW_BobberIDs = ds_map_create();
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
	
	#region Add Bobbers Here
	scr_KSW_AddBobber("red","Red",spr_KSW_Bobber_Red,candy,0,0,-4,false,true);
	scr_KSW_AddBobber("blue","Blue",spr_KSW_Bobber_Blue,mage,0,0,-4,false,true);
	scr_KSW_AddBobber("green","Green",spr_KSW_Bobber_Green,mint,0,0,-4,false,true);
	scr_KSW_AddBobber("yellow","Yellow",spr_KSW_Bobber_Yellow,glimmer,15,0,-4,false);
	scr_KSW_AddBobber("purple","Purple",spr_KSW_Bobber_Purple,flux,15,0,-4,false);
	scr_KSW_AddBobber("redPeg","Red Peg",spr_KSW_Bobber_RedPeg,candy,25,0,-4);
	scr_KSW_AddBobber("anchor","Anchor",spr_KSW_Bobber_Anchor,legion,25,0,0);
	scr_KSW_AddBobber("worm","Wormiller",spr_KSW_Bobber_Wormiller,glimmer,50,0,0);
	scr_KSW_AddBobber("dynamite","Dynamite",spr_KSW_Bobber_Dynamite,glimmer,50,1,-3);
	scr_KSW_AddBobber("rocketSlime","Rocket Slime",spr_KSW_Bobber_RocketSlime,mage,50,0,-7);
	scr_KSW_AddBobber("dedede","Dedede",spr_KSW_Bobber_Dedede,borange,50,0,-9);
	scr_KSW_AddBobber("hayuto","Hayuto",spr_KSW_Bobber_Hayuto,legion,50,0,-8);
	scr_KSW_AddBobber("deirdre","Deirdre",spr_KSW_Bobber_Deirdre,borange,50,0,-5);
	scr_KSW_AddBobber("superMushroom","Super Mushroom",spr_KSW_Bobber_SuperMushroom,candy,50,0,-7);
	scr_KSW_AddBobber("zebraBloon","Zebra Bloon",spr_KSW_Bobber_ZebraBloon,legion,50,0,-7);
	scr_KSW_AddBobber("astroBot","Astro Bot",spr_KSW_Bobber_AstroBot,mage,50,0,-7);
	scr_KSW_AddBobber("badPiggie","Bad Piggie",spr_KSW_Bobber_BadPiggie,mint,50,0,-5);
	scr_KSW_AddBobber("dreamPeace","Dream Peace",spr_KSW_Bobber_DreamPeace,borange,50,0,-3);
	scr_KSW_AddBobber("bejewel","Bejewel",spr_KSW_Bobber_Bejewel,mage,50,0,-5);
	scr_KSW_AddBobber("masterBall","Master Ball",spr_KSW_Bobber_MasterBall,flux,50,0,-6);
	scr_KSW_AddBobber("blinky","Blinky",spr_KSW_Bobber_Blinky,maze,50,0,-6);
	scr_KSW_AddBobber("inky","Inky",spr_KSW_Bobber_Inky,maze,50,0,-6);
	scr_KSW_AddBobber("pinky","Pinky",spr_KSW_Bobber_Pinky,maze,50,0,-6);
	scr_KSW_AddBobber("clyde","Clyde",spr_KSW_Bobber_Clyde,maze,50,0,-6);
	scr_KSW_AddBobber("pacman","Pac-Man",spr_KSW_Bobber_PacMan,maze,50,0,-6);
	scr_KSW_AddBobber("smash","Smash",spr_KSW_Bobber_Smash,legion,50,0,-6);
	scr_KSW_AddBobber("spicy","Spicy",spr_KSW_Bobber_Spicy,legion,50,0,-4);
	scr_KSW_AddBobber("sweet","Sweet",spr_KSW_Bobber_Sweet,legion,50,0,-4);
	scr_KSW_AddBobber("sour","Sour",spr_KSW_Bobber_Sour,legion,50,0,-4);
	scr_KSW_AddBobber("salty","Salty",spr_KSW_Bobber_Salty,legion,50,0,-4);
	scr_KSW_AddBobber("underground","Underground",spr_KSW_Bobber_Underground,legion,50,0,-4);
	scr_KSW_AddBobber("urban","Urban",spr_KSW_Bobber_Urban,legion,50,0,-4);
	scr_KSW_AddBobber("floral","Floral",spr_KSW_Bobber_Floral,legion,50,0,-4);
	scr_KSW_AddBobber("joyous","Joyous",spr_KSW_Bobber_Joyous,legion,50,0,-4);
	scr_KSW_AddBobber("skull","Skull",spr_KSW_Bobber_Skull,legion,50,0,-4);
	scr_KSW_AddBobber("ducky","Ducky",spr_KSW_Bobber_Ducky,legion,50,0,-5);
	scr_KSW_AddBobber("trashBear","Trash Bear",spr_KSW_Bobber_TrashBear,legion,50,0,-4);
	scr_KSW_AddBobber("quartz","Quartz",spr_KSW_Bobber_Quartz,legion,50,0,-6);
	scr_KSW_AddBobber("trash","Trash",spr_KSW_Bobber_Trash,legion,50,0,-5);
	scr_KSW_AddBobber("sap","Sap",spr_KSW_Bobber_Sap,legion,50,0,-4);
	scr_KSW_AddBobber("slime","Slime",spr_KSW_Bobber_Slime,legion,50,0,-4);
	scr_KSW_AddBobber("tabby","Tabby",spr_KSW_Bobber_Tabby,legion,50,0,-4);
	scr_KSW_AddBobber("heart","Heart",spr_KSW_Bobber_Heart,legion,50,0,-4);
	scr_KSW_AddBobber("jojaCola","Joja Cola",spr_KSW_Bobber_JojaCola,legion,50,0,-5);
	scr_KSW_AddBobber("cork","Cork",spr_KSW_Bobber_Cork,legion,50,0,-4);
	scr_KSW_AddBobber("barbedHook","Barbed Hook",spr_KSW_Bobber_BarbedHook,legion,50,0,-6);
	scr_KSW_AddBobber("slimeForGirls","Slime For Girls",spr_KSW_Bobber_SlimeForGirls,legion,50,0,-3);
	scr_KSW_AddBobber("sailboat","Sailboat",spr_KSW_Bobber_Sailboat,legion,50,0,-4);
	scr_KSW_AddBobber("fiber","Fiber",spr_KSW_Bobber_Fiber,legion,50,1,-5);
	scr_KSW_AddBobber("boot","Boot",spr_KSW_Bobber_Boot,legion,50,3,-4);
	scr_KSW_AddBobber("driftwood","Driftwood",spr_KSW_Bobber_Driftwood,legion,50,0,-2);
	scr_KSW_AddBobber("riverLily","River Lily",spr_KSW_Bobber_RiverLily,legion,50,0,-4);
	scr_KSW_AddBobber("baseball","Baseball",spr_KSW_Bobber_Baseball,legion,50,0,-4);
	scr_KSW_AddBobber("survivalBurger","Survival Burger",spr_KSW_Bobber_SurvivalBurger,legion,50,0,-5);
	scr_KSW_AddBobber("eggShapedThing","Egg Shaped Thing",spr_KSW_Bobber_EggShapedThing,legion,50,0,-4);
	scr_KSW_AddBobber("frogEgg","Frog Egg",spr_KSW_Bobber_FrogEgg,legion,50,0,-6);
	scr_KSW_AddBobber("willysBobber","Willy's Bobber",spr_KSW_Bobber_WillysBobber,legion,50,0,-5);
	scr_KSW_AddBobber("void","Void",spr_KSW_Bobber_Void,legion,50,0,-4);
	scr_KSW_AddBobber("emerald","Emerald",spr_KSW_Bobber_Emerald,legion,50,0,-4);
	scr_KSW_AddBobber("radioactive","Radioactive",spr_KSW_Bobber_Radioactive,legion,50,0,-4);
	scr_KSW_AddBobber("mermaidPearl","Mermaid Pearl",spr_KSW_Bobber_MermaidPearl,legion,50,0,-5);
	scr_KSW_AddBobber("iridium","Iridium",spr_KSW_Bobber_Iridium,legion,50,1,-5);
	scr_KSW_AddBobber("animalCracker","Animal Cracker",spr_KSW_Bobber_AnimalCracker,legion,50,0,-3);
	scr_KSW_AddBobber("diamond","Diamond",spr_KSW_Bobber_Diamond,legion,50,0,-5);
	scr_KSW_AddBobber("stardrop","Stardrop",spr_KSW_Bobber_Stardrop,legion,50,0,-4);
	scr_KSW_AddBobber("luckyShorts","Lucky Shorts",spr_KSW_Bobber_LuckyShorts,legion,50,0,-5);
	
	scr_KSW_AddBobber("rainbowDrop","Rainbow Drop",spr_KSW_Bobber_RainbowDrop,glimmer,0,0,-4);
	scr_KSW_AddBobber("kirby","Kirby",spr_KSW_Bobber_Kirby,candy,0,0,-5);
	scr_KSW_AddBobber("star","Star",spr_KSW_Bobber_Star,glimmer,0,0,-4);
	scr_KSW_AddBobber("darkMatter","Dark Matter",spr_KSW_Bobber_DarkMatter,flux,0,0,-7);
	scr_KSW_AddBobber("starry","Starry",spr_KSW_Bobber_Starry,mage,0,0,-4);
	scr_KSW_AddBobber("nightmareOrb","Nightmare Orb",spr_KSW_Bobber_NightmareOrb,mage,0,1,-7);
	scr_KSW_AddBobber("masterCrown","Master Crown",spr_KSW_Bobber_MasterCrown,glimmer,0,0,-5);
	
	scr_KSW_AddBobber("legend","Legend",spr_KSW_Bobber_Legend,flux,0,0,-7,true);
	scr_KSW_AddBobber("rogueMatter","Rogue Matter",spr_KSW_Bobber_TK_RogueMatter,flux,0,0,-5,true);
	scr_KSW_AddBobber("daremo","Daremo",spr_KSW_Bobber_TK_Daremo,legion,0,0,-6,true);
	scr_KSW_AddBobber("rosemarie","Rosemarie",spr_KSW_Bobber_TK_Rosemarie,flux,0,0,-9,true);
	#endregion
}