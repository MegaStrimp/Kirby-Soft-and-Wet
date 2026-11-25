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
	
	//DO NOT ADD NEW ONES.
	#endregion
	
	#region Add Bobbers Here
	scr_KSW_AddBobber("red","Red",spr_KSW_Bobber_Red,spr_KSW_Bobber_Red_Pal,candy,0,,0,-4,false,true);
	scr_KSW_AddBobber("blue","Blue",spr_KSW_Bobber_Blue,spr_KSW_Bobber_Blue_Pal,mage,0,,0,-4,false,true);
	scr_KSW_AddBobber("green","Green",spr_KSW_Bobber_Green,spr_KSW_Bobber_Green_Pal,mint,0,,0,-4,false,true);
	scr_KSW_AddBobber("yellow","Yellow",spr_KSW_Bobber_Yellow,spr_KSW_Bobber_Yellow_Pal,glimmer,25,,0,-4,false);
	scr_KSW_AddBobber("purple","Purple",spr_KSW_Bobber_Purple,spr_KSW_Bobber_Purple_Pal,flux,25,,0,-4,false);
	scr_KSW_AddBobber("redPeg","Red Peg",spr_KSW_Bobber_RedPeg,spr_KSW_Bobber_RedPeg_Pal,candy,75,,0,-4);
	scr_KSW_AddBobber("anchor","Anchor",spr_KSW_Bobber_Anchor,spr_KSW_Bobber_Anchor_Pal,legion,75,,0,0);
	scr_KSW_AddBobber("worm","Wormiller",spr_KSW_Bobber_Wormiller,spr_KSW_Bobber_Wormiller_Pal,glimmer,75,,0,0);
	scr_KSW_AddBobber("dynamite","Dynamite",spr_KSW_Bobber_Dynamite,spr_KSW_Bobber_Dynamite_Pal,glimmer,75,,1,-3);
	scr_KSW_AddBobber("rocketSlime","Rocket Slime",spr_KSW_Bobber_RocketSlime,spr_KSW_Bobber_RocketSlime_Pal,mage,75,snd_KSW_Bobber_RocketSlime,0,-7);
	scr_KSW_AddBobber("dedede","Dedede",spr_KSW_Bobber_Dedede,spr_KSW_Bobber_Dedede_Pal,borange,75,,0,-9);
	scr_KSW_AddBobber("hayudo","Hayudo",spr_KSW_Bobber_Hayudo,spr_KSW_Bobber_Hayudo_Pal,legion,75,,0,-8);
	scr_KSW_AddBobber("deirdre","Deirdre",spr_KSW_Bobber_Deirdre,spr_KSW_Bobber_Deirdre_Pal,borange,75,,0,-5);
	scr_KSW_AddBobber("superMushroom","Super Mushroom",spr_KSW_Bobber_SuperMushroom,spr_KSW_Bobber_SuperMushroom_Pal,candy,75,snd_KSW_Bobber_SuperMushroom,0,-7);
	scr_KSW_AddBobber("zebraBloon","Zebra Bloon",spr_KSW_Bobber_ZebraBloon,spr_KSW_Bobber_ZebraBloon_Pal,legion,75,,0,-7);
	scr_KSW_AddBobber("astroBot","Astro Bot",spr_KSW_Bobber_AstroBot,spr_KSW_Bobber_AstroBot_Pal,mage,75,,0,-7);
	scr_KSW_AddBobber("badPiggie","Bad Piggie",spr_KSW_Bobber_BadPiggie,spr_KSW_Bobber_BadPiggie_Pal,mint,75,snd_KSW_Bobber_BadPiggie,0,-5);
	scr_KSW_AddBobber("dreamPeace","Dream Peace",spr_KSW_Bobber_DreamPeace,spr_KSW_Bobber_DreamPeace_Pal,borange,75,,0,-3);
	scr_KSW_AddBobber("bejewel","Bejewel",spr_KSW_Bobber_Bejewel,spr_KSW_Bobber_Bejewel_Pal,mage,75,snd_KSW_Bobber_Bejewel,0,-5);
	scr_KSW_AddBobber("masterBall","Master Ball",spr_KSW_Bobber_MasterBall,spr_KSW_Bobber_MasterBall_Pal,flux,75,snd_KSW_Bobber_MasterBall,0,-6);
	scr_KSW_AddBobber("blinky","Blinky",spr_KSW_Bobber_Blinky,spr_KSW_Bobber_Blinky_Pal,spr_KSW_UI_CaughtBox_Palette_Maze,75,,0,-6);
	scr_KSW_AddBobber("inky","Inky",spr_KSW_Bobber_Inky,spr_KSW_Bobber_Inky_Pal,spr_KSW_UI_CaughtBox_Palette_Maze,75,,0,-6);
	scr_KSW_AddBobber("pinky","Pinky",spr_KSW_Bobber_Pinky,spr_KSW_Bobber_Pinky_Pal,spr_KSW_UI_CaughtBox_Palette_Maze,75,,0,-6);
	scr_KSW_AddBobber("clyde","Clyde",spr_KSW_Bobber_Clyde,spr_KSW_Bobber_Clyde_Pal,spr_KSW_UI_CaughtBox_Palette_Maze,75,,0,-6);
	scr_KSW_AddBobber("pacman","Pac-Man",spr_KSW_Bobber_PacMan,spr_KSW_Bobber_PacMan_Pal,spr_KSW_UI_CaughtBox_Palette_Maze,75,,0,-6);
	scr_KSW_AddBobber("smash","Smash",spr_KSW_Bobber_Smash,spr_KSW_Bobber_Smash_Pal,legion,75,snd_KSW_Bobber_Smash,0,-6);
	scr_KSW_AddBobber("spicy","Spicy",spr_KSW_Bobber_Spicy,spr_KSW_Bobber_Spicy_Pal,candy,75,,0,-4);
	scr_KSW_AddBobber("sweet","Sweet",spr_KSW_Bobber_Sweet,spr_KSW_Bobber_Sweet_Pal,mage,75,,0,-4);
	scr_KSW_AddBobber("sour","Sour",spr_KSW_Bobber_Sour,spr_KSW_Bobber_Sour_Pal,mint,75,,0,-4);
	scr_KSW_AddBobber("salty","Salty",spr_KSW_Bobber_Salty,spr_KSW_Bobber_Salty_Pal,glimmer,75,,0,-4);
	scr_KSW_AddBobber("underground","Underground",spr_KSW_Bobber_Underground,spr_KSW_Bobber_Underground_Pal,borange,75,,0,-4);
	scr_KSW_AddBobber("urban","Urban",spr_KSW_Bobber_Urban,spr_KSW_Bobber_Urban_Pal,mint,75,,0,-4);
	scr_KSW_AddBobber("floral","Floral",spr_KSW_Bobber_Floral,spr_KSW_Bobber_Floral_Pal,glimmer,75,,0,-4);
	scr_KSW_AddBobber("joyous","Joyous",spr_KSW_Bobber_Joyous,spr_KSW_Bobber_Joyous_Pal,glimmer,75,,0,-4);
	scr_KSW_AddBobber("skull","Skull",spr_KSW_Bobber_Skull,spr_KSW_Bobber_Skull_Pal,borange,75,snd_KSW_Bobber_Skull,0,-4);
	scr_KSW_AddBobber("ducky","Ducky",spr_KSW_Bobber_Ducky,spr_KSW_Bobber_Ducky_Pal,glimmer,75,snd_KSW_Bobber_Ducky,0,-5);
	scr_KSW_AddBobber("trashBear","Trash Bear",spr_KSW_Bobber_TrashBear,spr_KSW_Bobber_TrashBear_Pal,borange,75,,0,-4);
	scr_KSW_AddBobber("quartz","Quartz",spr_KSW_Bobber_Quartz,spr_KSW_Bobber_Quartz_Pal,mage,75,,0,-4);
	scr_KSW_AddBobber("trash","Trash",spr_KSW_Bobber_Trash,spr_KSW_Bobber_Trash_Pal,legion,75,,0,-5);
	scr_KSW_AddBobber("sap","Sap",spr_KSW_Bobber_Sap,spr_KSW_Bobber_Sap_Pal,mint,75,,0,-4);
	scr_KSW_AddBobber("slime","Slime",spr_KSW_Bobber_Slime,spr_KSW_Bobber_Slime_Pal,mint,75,,0,-4);
	scr_KSW_AddBobber("tabby","Tabby",spr_KSW_Bobber_Tabby,spr_KSW_Bobber_Tabby_Pal,borange,75,,0,-4);
	scr_KSW_AddBobber("heart","Heart",spr_KSW_Bobber_Heart,spr_KSW_Bobber_Heart_Pal,candy,75,,0,-4);
	scr_KSW_AddBobber("jojaCola","Joja Cola",spr_KSW_Bobber_JojaCola,spr_KSW_Bobber_JojaCola_Pal,mage,75,snd_KSW_Bobber_JojaCola,0,-5);
	scr_KSW_AddBobber("cork","Cork",spr_KSW_Bobber_Cork,spr_KSW_Bobber_Cork_Pal,borange,75,,0,-4);
	scr_KSW_AddBobber("barbedHook","Barbed Hook",spr_KSW_Bobber_BarbedHook,spr_KSW_Bobber_BarbedHook_Pal,legion,75,,0,-6);
	scr_KSW_AddBobber("slimeForGirls","Slime For Girls",spr_KSW_Bobber_SlimeForGirls,spr_KSW_Bobber_SlimeForGirls_Pal,candy,75,,0,-3);
	scr_KSW_AddBobber("sailboat","Sailboat",spr_KSW_Bobber_Sailboat,spr_KSW_Bobber_Sailboat_Pal,borange,75,,0,-4);
	scr_KSW_AddBobber("fiber","Fiber",spr_KSW_Bobber_Fiber,spr_KSW_Bobber_Fiber_Pal,mint,75,,1,-5);
	scr_KSW_AddBobber("boot","Boot",spr_KSW_Bobber_Boot,spr_KSW_Bobber_Boot_Pal,borange,75,,3,-4);
	scr_KSW_AddBobber("driftwood","Driftwood",spr_KSW_Bobber_Driftwood,spr_KSW_Bobber_Driftwood_Pal,borange,75,,0,-2);
	scr_KSW_AddBobber("riverLily","River Lily",spr_KSW_Bobber_RiverLily,spr_KSW_Bobber_RiverLily_Pal,borange,75,,0,-4);
	scr_KSW_AddBobber("baseball","Baseball",spr_KSW_Bobber_Baseball,spr_KSW_Bobber_Baseball_Pal,borange,75,snd_KSW_Bobber_Baseball,0,-4);
	scr_KSW_AddBobber("survivalBurger","Survival Burger",spr_KSW_Bobber_SurvivalBurger,spr_KSW_Bobber_SurvivalBurger_Pal,borange,75,,0,-5);
	scr_KSW_AddBobber("eggShapedThing","Egg Shaped Thing",spr_KSW_Bobber_EggShapedThing,spr_KSW_Bobber_EggShapedThing_Pal,mage,75,,0,-4);
	scr_KSW_AddBobber("frogEgg","Frog Egg",spr_KSW_Bobber_FrogEgg,spr_KSW_Bobber_FrogEgg_Pal,mint,75,,0,-6);
	scr_KSW_AddBobber("willysBobber","Willy's Bobber",spr_KSW_Bobber_WillysBobber,spr_KSW_Bobber_WillysBobber_Pal,glimmer,75,,0,-5);
	scr_KSW_AddBobber("void","Void",spr_KSW_Bobber_Void,spr_KSW_Bobber_Void_Pal,candy,75,,0,-4);
	scr_KSW_AddBobber("emerald","Emerald",spr_KSW_Bobber_Emerald,spr_KSW_Bobber_Emerald_Pal,mint,75,,0,-4);
	scr_KSW_AddBobber("radioactive","Radioactive",spr_KSW_Bobber_Radioactive,spr_KSW_Bobber_Radioactive_Pal,mint,75,snd_KSW_Bobber_Radioactive,0,-4);
	scr_KSW_AddBobber("mermaidPearl","Mermaid Pearl",spr_KSW_Bobber_MermaidPearl,spr_KSW_Bobber_MermaidPearl_Pal,mage,75,,0,-5);
	scr_KSW_AddBobber("iridium","Iridium",spr_KSW_Bobber_Iridium,spr_KSW_Bobber_Iridium_Pal,mage,75,,1,-5);
	scr_KSW_AddBobber("animalCracker","Animal Cracker",spr_KSW_Bobber_AnimalCracker,spr_KSW_Bobber_AnimalCracker_Pal,glimmer,75,,0,-3);
	scr_KSW_AddBobber("diamond","Diamond",spr_KSW_Bobber_Diamond,spr_KSW_Bobber_Diamond_Pal,mage,75,,0,-5);
	scr_KSW_AddBobber("stardrop","Stardrop",spr_KSW_Bobber_Stardrop,spr_KSW_Bobber_Stardrop_Pal,flux,75,snd_KSW_Bobber_Stardrop,0,-4);
	scr_KSW_AddBobber("luckyShorts","Lucky Shorts",spr_KSW_Bobber_LuckyShorts,spr_KSW_Bobber_LuckyShorts_Pal,flux,75,snd_KSW_Bobber_LuckyShorts,0,-5);
	scr_KSW_AddBobber("scarfy","Scarfy",spr_KSW_Bobber_Scarfy,spr_KSW_Bobber_Scarfy_Pal,borange,75,,0,-4);
	scr_KSW_AddBobber("NCScarfy","NC Scarfy",spr_KSW_Bobber_NCScarfy,spr_KSW_Bobber_NCScarfy_Pal,borange,75,,0,-3);
	scr_KSW_AddBobber("coreDrill","Core Drill",spr_KSW_Bobber_CoreDrill,spr_KSW_Bobber_CoreDrill_Pal,glimmer,75,,0,-7);
	scr_KSW_AddBobber("yoYo","YoYo",spr_KSW_Bobber_YoYo,spr_KSW_Bobber_YoYo_Pal,mint,75,,0,0);
	scr_KSW_AddBobber("bBall","B. Ball",spr_KSW_Bobber_BBall,spr_KSW_Bobber_BBall_Pal,candy,75,snd_KSW_Bobber_BBall,0,0);
	scr_KSW_AddBobber("top","Top",spr_KSW_Bobber_Top,spr_KSW_Bobber_Top_Pal,candy,75,,0,0);
	scr_KSW_AddBobber("wheel","Wheel",spr_KSW_Bobber_Wheel,spr_KSW_Bobber_Wheel_Pal,glimmer,75,,0,-7);
	scr_KSW_AddBobber("bobbery","Bobbery",spr_KSW_Bobber_Bobbery,spr_KSW_Bobber_Bobbery_Pal,glimmer,75,snd_KSW_Bobber_Bobbery,0,-8);
	scr_KSW_AddBobber("attackFly","Attack Fly",spr_KSW_Bobber_AttackFly,spr_KSW_Bobber_AttackFly_Pal,borange,75,snd_KSW_Bobber_AttackFly,0,0);
	scr_KSW_AddBobber("subTank","Sub Tank",spr_KSW_Bobber_SubTank,spr_KSW_Bobber_SubTank_Pal,mint,75,,0,-8);
	scr_KSW_AddBobber("heartTank","Heart Tank",spr_KSW_Bobber_HeartTank,spr_KSW_Bobber_HeartTank_Pal,candy,75,,0,-6);
	scr_KSW_AddBobber("bubble","Bubble",spr_KSW_Bobber_Bubble,spr_KSW_Bobber_Bubble_Pal,mage,75,,0,-5);
	scr_KSW_AddBobber("tooLong","[shake]TOO LONG[/shake]",spr_KSW_Bobber_TOOLONG,spr_KSW_Bobber_TOOLONG_Pal,candy,75,snd_KSW_Bobber_TOOLONG,0,-6);
	scr_KSW_AddBobber("mahjong","Mahjong",spr_KSW_Bobber_Mahjong,spr_KSW_Bobber_Mahjong_Pal,candy,75,,0,-7);
	scr_KSW_AddBobber("damage9","Damage 9",spr_KSW_Bobber_Damage9,spr_KSW_Bobber_Damage9_Pal,candy,75,snd_KSW_Bobber_Damage9,0,-3);
	scr_KSW_AddBobber("monokuma","Monokuma",spr_KSW_Bobber_Monokuma,spr_KSW_Bobber_Monokuma_Pal,candy,75,snd_KSW_Bobber_Monokuma,0,0);
	scr_KSW_AddBobber("dekofloof","Dekofloof",spr_KSW_Bobber_Dekofloof,spr_KSW_Bobber_Dekofloof_Pal,flux,75,,0,-9);
	scr_KSW_AddBobber("titanhead","Titan Head",spr_KSW_Bobber_TitanHead,spr_KSW_Bobber_TitanHead_Pal,mage,75,,1,2);
	scr_KSW_AddBobber("beanbon","Beanbon",spr_KSW_Bobber_Beanbon,spr_KSW_Bobber_Beanbon_Pal,mint,75,,0,2);
	scr_KSW_AddBobber("wiz","Wiz",spr_KSW_Bobber_Wiz,spr_KSW_Bobber_Wiz_Pal,candy,75,,0,2);
	scr_KSW_AddBobber("wooden","Wooden",spr_KSW_Bobber_Wooden,spr_KSW_Bobber_Wooden_Pal,borange,75,,0,0);
	scr_KSW_AddBobber("reinforced","Reinforced",spr_KSW_Bobber_Reinforced,spr_KSW_Bobber_Reinforced_Pal,legion,75,,-3,-3);
	scr_KSW_AddBobber("fisherofsouls","Fisher of Souls",spr_KSW_Bobber_FisherOfSouls,spr_KSW_Bobber_FisherOfSouls_Pal,flux,75,,1,0);
	scr_KSW_AddBobber("fleshcatcher","Fleshcatcher",spr_KSW_Bobber_Fleshcatcher,spr_KSW_Bobber_Fleshcatcher_Pal,candy,75,,-1,0);
	scr_KSW_AddBobber("bloody","Bloody",spr_KSW_Bobber_Bloody,spr_KSW_Bobber_Bloody_Pal,candy,75,,0,-2);
	scr_KSW_AddBobber("scarab","Scarab",spr_KSW_Bobber_Scarab,spr_KSW_Bobber_Scarab_Pal,mage,75,,0,-1);
	scr_KSW_AddBobber("fiberglass","Fiberglass",spr_KSW_Bobber_Fiberglass,spr_KSW_Bobber_Fiberglass_Pal,mage,75,,1,-1);
	scr_KSW_AddBobber("mechanic","Mechanic",spr_KSW_Bobber_Mechanic,spr_KSW_Bobber_Mechanic_Pal,candy,75,,1,0);
	scr_KSW_AddBobber("sittingduck","Sitting Duck",spr_KSW_Bobber_SittingDuck,spr_KSW_Bobber_SittingDuck_Pal,legion,75,,1,0);
	scr_KSW_AddBobber("hotline","Hotline",spr_KSW_Bobber_Hotline,spr_KSW_Bobber_Hotline_Pal,borange,75,,0,0);
	scr_KSW_AddBobber("golden","Golden",spr_KSW_Bobber_Golden,spr_KSW_Bobber_Golden_Pal,glimmer,75,,1,0);
	scr_KSW_AddBobber("starfall","Starfall",spr_KSW_Bobber_Starfall,spr_KSW_Bobber_Starfall_Pal,glimmer,75,,0,-2);
	scr_KSW_AddBobber("lavamoss","Lava Moss",spr_KSW_Bobber_Lava_Moss,spr_KSW_Bobber_Lava_Moss_Pal,borange,75,,0,-2);
	scr_KSW_AddBobber("kryptonmoss","Krypton Moss",spr_KSW_Bobber_Krypton_Moss,spr_KSW_Bobber_Krypton_Moss_Pal,mint,75,,0,-2);
	scr_KSW_AddBobber("xenonmoss","Xenon Moss",spr_KSW_Bobber_Xenon_Moss,spr_KSW_Bobber_Xenon_Moss_Pal,mage,75,,0,-2);
	scr_KSW_AddBobber("argonmoss","Argon Moss",spr_KSW_Bobber_Argon_Moss,spr_KSW_Bobber_Argon_Moss_Pal,flux,75,,0,-2);
	scr_KSW_AddBobber("neonmoss","Neon Moss",spr_KSW_Bobber_Neon_Moss,spr_KSW_Bobber_Neon_Moss_Pal,flux,75,,0,-2);
	scr_KSW_AddBobber("heliummoss","Helium Moss",spr_KSW_Bobber_Helium_Moss,spr_KSW_Bobber_Helium_Moss_Pal,glimmer,75,,0,-1);
	scr_KSW_AddBobber("wulfrum","Wulfrum",spr_KSW_Bobber_Wulfrum,spr_KSW_Bobber_Wulfrum_Pal,mint,75,,0,0);
	scr_KSW_AddBobber("sunkensinker","Sunken Sinker",spr_KSW_Bobber_SunkenSinker,spr_KSW_Bobber_SunkenSinker_Pal,mage,75,,1,0);
	scr_KSW_AddBobber("acrobatic","Acrobatic",spr_KSW_Bobber_Acrobatic,spr_KSW_Bobber_Acrobatic_Pal,mage,75,,0,0);
	scr_KSW_AddBobber("slurper","Slurper",spr_KSW_Bobber_Slurper,spr_KSW_Bobber_Slurper_Pal,candy,75,,0,0);
	scr_KSW_AddBobber("verstaltite","Verstaltite",spr_KSW_Bobber_Verstaltite,spr_KSW_Bobber_Verstaltite_Pal,mage,75,,1,0);
	scr_KSW_AddBobber("feral","Feral",spr_KSW_Bobber_Feral,spr_KSW_Bobber_Feral_Pal,borange,75,,1,-1);
	scr_KSW_AddBobber("volcanicsinker","Volcanic Sinker",spr_KSW_Bobber_VolcanicSinker,spr_KSW_Bobber_VolcanicSinker_Pal,borange,75,,0,0);
	scr_KSW_AddBobber("earlybloom","Early Bloom",spr_KSW_Bobber_EarlyBloom,spr_KSW_Bobber_EarlyBloom_Pal,borange,75,,0,-1);
	scr_KSW_AddBobber("devourerofcods","Devourer of Cods",spr_KSW_Bobber_DevourerOfCods,spr_KSW_Bobber_DevourerOfCods_Pal,flux,75,,0,0);
	scr_KSW_AddBobber("marine","Marine",spr_KSW_Bobber_Marine,spr_KSW_Bobber_Marine_Pal,borange,75,,1,-1);
	scr_KSW_AddBobber("shark","Shark",spr_KSW_Bobber_Shark,spr_KSW_Bobber_Shark_Pal,mage,75,,1,-1);
	scr_KSW_AddBobber("granite","Granite",spr_KSW_Bobber_Granite,spr_KSW_Bobber_Granite_Pal,mage,75,,1,0);
	scr_KSW_AddBobber("champion","Champion",spr_KSW_Bobber_Champion,spr_KSW_Bobber_Champion_Pal,legion,75,,1,-1);
	scr_KSW_AddBobber("geode","Geode",spr_KSW_Bobber_Geode,spr_KSW_Bobber_Geode_Pal,glimmer,75,,1,-1);
	scr_KSW_AddBobber("rlyeh","R'lyeh",spr_KSW_Bobber_Rlyeh,spr_KSW_Bobber_Rlyeh_Pal,glimmer,75,,1,-3);
	scr_KSW_AddBobber("terrarium","Terrarium",spr_KSW_Bobber_Terrarium,spr_KSW_Bobber_Terrarium_Pal,legion,75,,0,-1);
	
	scr_KSW_AddBobber("star","Star",spr_KSW_Bobber_Star,spr_KSW_Bobber_Star_Pal,glimmer,0,snd_KSW_Bobber_Star,0,-4);
	scr_KSW_AddBobber("darkMind","Dark Mind",spr_KSW_Bobber_DarkMind,spr_KSW_Bobber_DarkMind_Pal,borange,0,,0,-7);
	scr_KSW_AddBobber("starDream","Star Dream",spr_KSW_Bobber_StarDream,spr_KSW_Bobber_StarDream_Pal,candy,0,snd_KSW_Bobber_StarDream,0,-5);
	scr_KSW_AddBobber("nightmareOrb","Nightmare Orb",spr_KSW_Bobber_NightmareOrb,spr_KSW_Bobber_NightmareOrb_Pal,mage,0,snd_KSW_Bobber_NightmareOrb,1,-7);
	scr_KSW_AddBobber("starry","Starry",spr_KSW_Bobber_Starry,spr_KSW_Bobber_Starry_Pal,mage,0,,0,-4);
	scr_KSW_AddBobber("rainbowDrop","Rainbow Drop",spr_KSW_Bobber_RainbowDrop,spr_KSW_Bobber_RainbowDrop_Pal,glimmer,0,snd_KSW_Bobber_RainbowDrop,0,-4);
	scr_KSW_AddBobber("darkMatter","Dark Matter",spr_KSW_Bobber_DarkMatter,spr_KSW_Bobber_DarkMatter_Pal,flux,0,,0,-7);
	scr_KSW_AddBobber("grassBeach","Grass Beach",spr_KSW_Bobber_GrassBeach,spr_KSW_Bobber_GrassBeach_Pal,mint,0,,0,-9);
	scr_KSW_AddBobber("creamCrevasse","Cream Crevasse",spr_KSW_Bobber_CreamCrevasse,spr_KSW_Bobber_CreamCrevasse_Pal,candy,0,,0,-9);
	scr_KSW_AddBobber("hallowReen","Hallow Reen",spr_KSW_Bobber_HallowReen,spr_KSW_Bobber_HallowReen_Pal,flux,0,,0,-6);
	scr_KSW_AddBobber("serranoSprings","Serrano Springs",spr_KSW_Bobber_SerranoSprings,spr_KSW_Bobber_SerranoSprings_Pal,borange,0,,0,-7);
	scr_KSW_AddBobber("androidPort","Android Port",spr_KSW_Bobber_AndroidPort,spr_KSW_Bobber_AndroidPort_Pal,mint,0,,0,-8);
	scr_KSW_AddBobber("cloudyPark","Cloudy Park",spr_KSW_Bobber_CloudyPark,spr_KSW_Bobber_CloudyPark_Pal,legion,0,,0,-6);
	scr_KSW_AddBobber("kirby","Kirby",spr_KSW_Bobber_Kirby,spr_KSW_Bobber_Kirby_Pal,candy,0,,0,-5);
	scr_KSW_AddBobber("zero","Zero",spr_KSW_Bobber_Zero,spr_KSW_Bobber_Zero_Pal,candy,0,,0,-7);
	scr_KSW_AddBobber("masterCrown","Master Crown",spr_KSW_Bobber_MasterCrown,spr_KSW_Bobber_MasterCrown_Pal,glimmer,0,,0,-5);
	
	scr_KSW_AddBobber("legend","Legend",spr_KSW_Bobber_Legend,spr_KSW_Bobber_Legend_Pal,flux,0,,0,-7,true);
	scr_KSW_AddBobber("rogueMatter","Rogue Matter",spr_KSW_Bobber_TK_RogueMatter,spr_KSW_Bobber_TK_RogueMatter_Pal,flux,0,,0,-5,true);
	scr_KSW_AddBobber("daremo","Daremo",spr_KSW_Bobber_TK_Daremo,spr_KSW_Bobber_TK_Daremo_Pal,legion,0,,0,-6,true);
	scr_KSW_AddBobber("rosemarie","Rosemarie",spr_KSW_Bobber_TK_Rosemarie,spr_KSW_Bobber_TK_Rosemarie_Pal,flux,0,,0,-9,true);
	}#endregion
