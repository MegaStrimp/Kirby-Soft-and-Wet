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
	scr_KSW_AddBobber("red","Red",spr_KSW_Bobber_Red,spr_KSW_Bobber_Red_Pal,candy,0,0,-4,false,true);
	scr_KSW_AddBobber("blue","Blue",spr_KSW_Bobber_Blue,spr_KSW_Bobber_Blue_Pal,mage,0,0,-4,false,true);
	scr_KSW_AddBobber("green","Green",spr_KSW_Bobber_Green,spr_KSW_Bobber_Green_Pal,mint,0,0,-4,false,true);
	scr_KSW_AddBobber("yellow","Yellow",spr_KSW_Bobber_Yellow,spr_KSW_Bobber_Yellow_Pal,glimmer,15,0,-4,false);
	scr_KSW_AddBobber("purple","Purple",spr_KSW_Bobber_Purple,spr_KSW_Bobber_Purple_Pal,flux,15,0,-4,false);
	scr_KSW_AddBobber("redPeg","Red Peg",spr_KSW_Bobber_RedPeg,spr_KSW_Bobber_RedPeg_Pal,candy,25,0,-4);
	scr_KSW_AddBobber("anchor","Anchor",spr_KSW_Bobber_Anchor,spr_KSW_Bobber_Anchor_Pal,legion,25,0,0);
	scr_KSW_AddBobber("worm","Wormiller",spr_KSW_Bobber_Wormiller,spr_KSW_Bobber_Wormiller_Pal,glimmer,50,0,0);
	scr_KSW_AddBobber("dynamite","Dynamite",spr_KSW_Bobber_Dynamite,spr_KSW_Bobber_Dynamite_Pal,glimmer,50,1,-3);
	scr_KSW_AddBobber("rocketSlime","Rocket Slime",spr_KSW_Bobber_RocketSlime,spr_KSW_Bobber_RocketSlime_Pal,mage,50,0,-7);
	scr_KSW_AddBobber("dedede","Dedede",spr_KSW_Bobber_Dedede,spr_KSW_Bobber_Dedede_Pal,borange,50,0,-9);
	scr_KSW_AddBobber("hayudo","Hayudo",spr_KSW_Bobber_Hayudo,spr_KSW_Bobber_Hayudo_Pal,legion,50,0,-8);
	scr_KSW_AddBobber("deirdre","Deirdre",spr_KSW_Bobber_Deirdre,spr_KSW_Bobber_Deirdre_Pal,borange,50,0,-5);
	scr_KSW_AddBobber("superMushroom","Super Mushroom",spr_KSW_Bobber_SuperMushroom,spr_KSW_Bobber_SuperMushroom_Pal,candy,50,0,-7);
	scr_KSW_AddBobber("zebraBloon","Zebra Bloon",spr_KSW_Bobber_ZebraBloon,spr_KSW_Bobber_ZebraBloon_Pal,legion,50,0,-7);
	scr_KSW_AddBobber("astroBot","Astro Bot",spr_KSW_Bobber_AstroBot,spr_KSW_Bobber_AstroBot_Pal,mage,50,0,-7);
	scr_KSW_AddBobber("badPiggie","Bad Piggie",spr_KSW_Bobber_BadPiggie,spr_KSW_Bobber_BadPiggie_Pal,mint,50,0,-5);
	scr_KSW_AddBobber("dreamPeace","Dream Peace",spr_KSW_Bobber_DreamPeace,spr_KSW_Bobber_DreamPeace_Pal,borange,50,0,-3);
	scr_KSW_AddBobber("bejewel","Bejewel",spr_KSW_Bobber_Bejewel,spr_KSW_Bobber_Bejewel_Pal,mage,50,0,-5);
	scr_KSW_AddBobber("masterBall","Master Ball",spr_KSW_Bobber_MasterBall,spr_KSW_Bobber_MasterBall_Pal,flux,50,0,-6);
	scr_KSW_AddBobber("blinky","Blinky",spr_KSW_Bobber_Blinky,spr_KSW_Bobber_Blinky_Pal,maze,50,0,-6);
	scr_KSW_AddBobber("inky","Inky",spr_KSW_Bobber_Inky,spr_KSW_Bobber_Inky_Pal,maze,50,0,-6);
	scr_KSW_AddBobber("pinky","Pinky",spr_KSW_Bobber_Pinky,spr_KSW_Bobber_Pinky_Pal,maze,50,0,-6);
	scr_KSW_AddBobber("clyde","Clyde",spr_KSW_Bobber_Clyde,spr_KSW_Bobber_Clyde_Pal,maze,50,0,-6);
	scr_KSW_AddBobber("pacman","Pac-Man",spr_KSW_Bobber_PacMan,spr_KSW_Bobber_PacMan_Pal,maze,50,0,-6);
	scr_KSW_AddBobber("smash","Smash",spr_KSW_Bobber_Smash,spr_KSW_Bobber_Smash_Pal,legion,50,0,-6);
	scr_KSW_AddBobber("spicy","Spicy",spr_KSW_Bobber_Spicy,spr_KSW_Bobber_Spicy_Pal,candy,50,0,-4);
	scr_KSW_AddBobber("sweet","Sweet",spr_KSW_Bobber_Sweet,spr_KSW_Bobber_Sweet_Pal,mage,50,0,-4);
	scr_KSW_AddBobber("sour","Sour",spr_KSW_Bobber_Sour,spr_KSW_Bobber_Sour_Pal,mint,50,0,-4);
	scr_KSW_AddBobber("salty","Salty",spr_KSW_Bobber_Salty,spr_KSW_Bobber_Salty_Pal,glimmer,50,0,-4);
	scr_KSW_AddBobber("underground","Underground",spr_KSW_Bobber_Underground,spr_KSW_Bobber_Underground_Pal,borange,50,0,-4);
	scr_KSW_AddBobber("urban","Urban",spr_KSW_Bobber_Urban,spr_KSW_Bobber_Urban_Pal,mint,50,0,-4);
	scr_KSW_AddBobber("floral","Floral",spr_KSW_Bobber_Floral,spr_KSW_Bobber_Floral_Pal,glimmer,50,0,-4);
	scr_KSW_AddBobber("joyous","Joyous",spr_KSW_Bobber_Joyous,spr_KSW_Bobber_Joyous_Pal,glimmer,50,0,-4);
	scr_KSW_AddBobber("skull","Skull",spr_KSW_Bobber_Skull,spr_KSW_Bobber_Skull_Pal,borange,50,0,-4);
	scr_KSW_AddBobber("ducky","Ducky",spr_KSW_Bobber_Ducky,spr_KSW_Bobber_Ducky_Pal,glimmer,50,0,-5);
	scr_KSW_AddBobber("trashBear","Trash Bear",spr_KSW_Bobber_TrashBear,spr_KSW_Bobber_TrashBear_Pal,borange,50,0,-4);
	scr_KSW_AddBobber("quartz","Quartz",spr_KSW_Bobber_Quartz,spr_KSW_Bobber_Quartz_Pal,mage,50,0,-4);
	scr_KSW_AddBobber("trash","Trash",spr_KSW_Bobber_Trash,spr_KSW_Bobber_Trash_Pal,legion,50,0,-5);
	scr_KSW_AddBobber("sap","Sap",spr_KSW_Bobber_Sap,spr_KSW_Bobber_Sap_Pal,mint,50,0,-4);
	scr_KSW_AddBobber("slime","Slime",spr_KSW_Bobber_Slime,spr_KSW_Bobber_Slime_Pal,mint,50,0,-4);
	scr_KSW_AddBobber("tabby","Tabby",spr_KSW_Bobber_Tabby,spr_KSW_Bobber_Tabby_Pal,borange,50,0,-4);
	scr_KSW_AddBobber("heart","Heart",spr_KSW_Bobber_Heart,spr_KSW_Bobber_Heart_Pal,candy,50,0,-4);
	scr_KSW_AddBobber("jojaCola","Joja Cola",spr_KSW_Bobber_JojaCola,spr_KSW_Bobber_JojaCola_Pal,mage,50,0,-5);
	scr_KSW_AddBobber("cork","Cork",spr_KSW_Bobber_Cork,spr_KSW_Bobber_Cork_Pal,borange,50,0,-4);
	scr_KSW_AddBobber("barbedHook","Barbed Hook",spr_KSW_Bobber_BarbedHook,spr_KSW_Bobber_BarbedHook_Pal,legion,50,0,-6);
	scr_KSW_AddBobber("slimeForGirls","Slime For Girls",spr_KSW_Bobber_SlimeForGirls,spr_KSW_Bobber_SlimeForGirls_Pal,candy,50,0,-3);
	scr_KSW_AddBobber("sailboat","Sailboat",spr_KSW_Bobber_Sailboat,spr_KSW_Bobber_Sailboat_Pal,borange,50,0,-4);
	scr_KSW_AddBobber("fiber","Fiber",spr_KSW_Bobber_Fiber,spr_KSW_Bobber_Fiber_Pal,mint,50,1,-5);
	scr_KSW_AddBobber("boot","Boot",spr_KSW_Bobber_Boot,spr_KSW_Bobber_Boot_Pal,borange,50,3,-4);
	scr_KSW_AddBobber("driftwood","Driftwood",spr_KSW_Bobber_Driftwood,spr_KSW_Bobber_Driftwood_Pal,borange,50,0,-2);
	scr_KSW_AddBobber("riverLily","River Lily",spr_KSW_Bobber_RiverLily,spr_KSW_Bobber_RiverLily_Pal,borange,50,0,-4);
	scr_KSW_AddBobber("baseball","Baseball",spr_KSW_Bobber_Baseball,spr_KSW_Bobber_Baseball_Pal,borange,50,0,-4);
	scr_KSW_AddBobber("survivalBurger","Survival Burger",spr_KSW_Bobber_SurvivalBurger,spr_KSW_Bobber_SurvivalBurger_Pal,borange,50,0,-5);
	scr_KSW_AddBobber("eggShapedThing","Egg Shaped Thing",spr_KSW_Bobber_EggShapedThing,spr_KSW_Bobber_EggShapedThing_Pal,mage,50,0,-4);
	scr_KSW_AddBobber("frogEgg","Frog Egg",spr_KSW_Bobber_FrogEgg,spr_KSW_Bobber_FrogEgg_Pal,mint,50,0,-6);
	scr_KSW_AddBobber("willysBobber","Willy's Bobber",spr_KSW_Bobber_WillysBobber,spr_KSW_Bobber_WillysBobber_Pal,glimmer,50,0,-5);
	scr_KSW_AddBobber("void","Void",spr_KSW_Bobber_Void,spr_KSW_Bobber_Void_Pal,candy,50,0,-4);
	scr_KSW_AddBobber("emerald","Emerald",spr_KSW_Bobber_Emerald,spr_KSW_Bobber_Emerald_Pal,mint,50,0,-4);
	scr_KSW_AddBobber("radioactive","Radioactive",spr_KSW_Bobber_Radioactive,spr_KSW_Bobber_Radioactive_Pal,mint,50,0,-4);
	scr_KSW_AddBobber("mermaidPearl","Mermaid Pearl",spr_KSW_Bobber_MermaidPearl,spr_KSW_Bobber_MermaidPearl_Pal,mage,50,0,-5);
	scr_KSW_AddBobber("iridium","Iridium",spr_KSW_Bobber_Iridium,spr_KSW_Bobber_Iridium_Pal,mage,50,1,-5);
	scr_KSW_AddBobber("animalCracker","Animal Cracker",spr_KSW_Bobber_AnimalCracker,spr_KSW_Bobber_AnimalCracker_Pal,glimmer,50,0,-3);
	scr_KSW_AddBobber("diamond","Diamond",spr_KSW_Bobber_Diamond,spr_KSW_Bobber_Diamond_Pal,mage,50,0,-5);
	scr_KSW_AddBobber("stardrop","Stardrop",spr_KSW_Bobber_Stardrop,spr_KSW_Bobber_Stardrop_Pal,flux,50,0,-4);
	scr_KSW_AddBobber("luckyShorts","Lucky Shorts",spr_KSW_Bobber_LuckyShorts,spr_KSW_Bobber_LuckyShorts_Pal,flux,50,0,-5);
	scr_KSW_AddBobber("star","Star",spr_KSW_Bobber_Star,spr_KSW_Bobber_Star_Pal,glimmer,0,0,-4);
	scr_KSW_AddBobber("darkMind","Dark Mind",spr_KSW_Bobber_DarkMind,spr_KSW_Bobber_DarkMind_Pal,borange,0,0,-7);
	scr_KSW_AddBobber("starDream","Star Dream",spr_KSW_Bobber_StarDream,spr_KSW_Bobber_StarDream_Pal,candy,0,0,-5);
	scr_KSW_AddBobber("nightmareOrb","Nightmare Orb",spr_KSW_Bobber_NightmareOrb,spr_KSW_Bobber_NightmareOrb_Pal,mage,0,1,-7);
	scr_KSW_AddBobber("starry","Starry",spr_KSW_Bobber_Starry,spr_KSW_Bobber_Starry_Pal,mage,0,0,-4);
	scr_KSW_AddBobber("rainbowDrop","Rainbow Drop",spr_KSW_Bobber_RainbowDrop,spr_KSW_Bobber_RainbowDrop_Pal,glimmer,0,0,-4);
	scr_KSW_AddBobber("darkMatter","Dark Matter",spr_KSW_Bobber_DarkMatter,spr_KSW_Bobber_DarkMatter_Pal,flux,0,0,-7);
	scr_KSW_AddBobber("kirby","Kirby",spr_KSW_Bobber_Kirby,spr_KSW_Bobber_Kirby_Pal,candy,0,0,-5);
	scr_KSW_AddBobber("zero","Zero",spr_KSW_Bobber_Zero,spr_KSW_Bobber_Zero_Pal,candy,0,0,-7);
	scr_KSW_AddBobber("masterCrown","Master Crown",spr_KSW_Bobber_MasterCrown,spr_KSW_Bobber_MasterCrown_Pal,glimmer,0,0,-5);
	
	scr_KSW_AddBobber("legend","Legend",spr_KSW_Bobber_Legend,spr_KSW_Bobber_Legend_Pal,flux,0,0,-7,true);
	scr_KSW_AddBobber("rogueMatter","Rogue Matter",spr_KSW_Bobber_TK_RogueMatter,spr_KSW_Bobber_TK_RogueMatter_Pal,flux,0,0,-5,true);
	scr_KSW_AddBobber("daremo","Daremo",spr_KSW_Bobber_TK_Daremo,spr_KSW_Bobber_TK_Daremo_Pal,legion,0,0,-6,true);
	scr_KSW_AddBobber("rosemarie","Rosemarie",spr_KSW_Bobber_TK_Rosemarie,spr_KSW_Bobber_TK_Rosemarie_Pal,flux,0,0,-9,true);
	#endregion
}