///@description KSW - Set Music

function scr_KSW_SetMusic()
{
	#region Setup
	global.KSW_MusicCount = 0;
	
	global.KSW_MusicList = [];
	global.KSW_MusicIDs = ds_map_create();
	#endregion
	
	#region Add Music Here
	#region Day
	scr_KSW_AddMusic("pipoPipo","Pipo Pipo","Serani Poji",KSW_Phases.day,mus_KSW_PipoPipo);
	scr_KSW_AddMusic("rippleField1","Ripple Field 1","Kirby's Dream Land 3",KSW_Phases.day,mus_KSW_RippleField1);
	scr_KSW_AddMusic("floatIslands1","Float Islands","Kirby Super Star",KSW_Phases.day,mus_KSW_FloatIslands1);
	scr_KSW_AddMusic("floatIslands2","Float Islands","Kirby Super Star Ultra",KSW_Phases.day,mus_KSW_FloatIslands2);
	scr_KSW_AddMusic("floatIslands3","Float Islands","Kirby's Blowout Blast",KSW_Phases.day,mus_KSW_FloatIslands3);
	scr_KSW_AddMusic("floralFields","Floral Fields","Kirby Triple Deluxe",KSW_Phases.day,mus_KSW_FloralFields);
	scr_KSW_AddMusic("submarineTorpedo","Submarine Torpedo Time","Kirby and the Rainbow Curse",KSW_Phases.day,mus_KSW_SubmarineTorpedo);
	scr_KSW_AddMusic("surfingStars","Surfing Stars","Kirby Mass Attack",KSW_Phases.day,mus_KSW_SurfingStars);
	scr_KSW_AddMusic("whispyStage","Whispy Woods Land","Kirby's Pinball Land",KSW_Phases.day,mus_KSW_WhispyStage);
	scr_KSW_AddMusic("firstHole","The First Hole","Kirby's Dream Course",KSW_Phases.day,mus_KSW_FirstHole);
	scr_KSW_AddMusic("onionOcean","Onion Ocean","Kirby's Return to Dream Land",KSW_Phases.day,mus_KSW_OnionOcean);
	scr_KSW_AddMusic("reefResort","Reef Resort","Kirby Star Allies",KSW_Phases.day,mus_KSW_ReefResort);
	scr_KSW_AddMusic("destinyIslands","Destiny Islands","Kingdom Hearts",KSW_Phases.day,mus_KSW_DestinyIslands);
	scr_KSW_AddMusic("artisans","Artisans","Spyro The Dragon",KSW_Phases.day,mus_KSW_Artisans);
	scr_KSW_AddMusic("sunrisespring","Sunrise Spring","Spyro: Year of The Dragon",KSW_Phases.day,mus_KSW_SunriseSpring);
	scr_KSW_AddMusic("luauisland","Luau Island","Spyro: Enter The Dragonfly",KSW_Phases.day,mus_KSW_LuauIsland);
	scr_KSW_AddMusic("junkyardisles","Junkyard Isles","Skylanders Giants",KSW_Phases.day,mus_KSW_JunkyardIsles);
	scr_KSW_AddMusic("ghostisland","Ghost Island","Pac-Man World",KSW_Phases.day,mus_KSW_GhostIsland);
	scr_KSW_AddMusic("pacvillage","Pac-Village","Pac-Man World 2",KSW_Phases.day,mus_KSW_PacVillage);
	#endregion
	
	#region Afternoon
	scr_KSW_AddMusic("rippleField3","Ripple Field 3","Kirby's Dream Land 3",KSW_Phases.afternoon,mus_KSW_RippleField3);
	scr_KSW_AddMusic("seaDrifting","Sea Drifting","Kirby and the Rainbow Curse",KSW_Phases.afternoon,mus_KSW_SeaDrifting);
	scr_KSW_AddMusic("seaStage1","Sea Stage","Kirby Super Star",KSW_Phases.afternoon,mus_KSW_SeaStage1);
	scr_KSW_AddMusic("seaStage2","Sea Stage","Kirby Super Star Ultra",KSW_Phases.afternoon,mus_KSW_SeaStage2);
	scr_KSW_AddMusic("aquaStar","Aqua Star","Kirby 64",KSW_Phases.afternoon,mus_KSW_AquaStar);
	scr_KSW_AddMusic("bountifulStar","Bountiful Star","Kirby Planet Robobot",KSW_Phases.afternoon,mus_KSW_BountifulStar);
	scr_KSW_AddMusic("happyMambo","Happy Mambo","Kirby's Return to Dream Land",KSW_Phases.afternoon,mus_KSW_HappyMambo);
	scr_KSW_AddMusic("kinesTheme","Kine the Fish","Kirby's Dream Land 2",KSW_Phases.afternoon,mus_KSW_KinesTheme);
	scr_KSW_AddMusic("misteen","Planet Misteen","Kirby Star Allies",KSW_Phases.afternoon,mus_KSW_Misteen);
	scr_KSW_AddMusic("overWater","Over Water","Kirby's Dream Course",KSW_Phases.afternoon,mus_KSW_OverWater);
	scr_KSW_AddMusic("wateryGraves","Watery Graves","Plants vs Zombies",KSW_Phases.afternoon,mus_KSW_WateryGraves);
	scr_KSW_AddMusic("perplexingPool","Perplexing Pool","Pikmin 2",KSW_Phases.afternoon,mus_KSW_PerplexingPool);
	scr_KSW_AddMusic("summerforest","Summer Forest","Spyro 2: Ripto's Rage",KSW_Phases.afternoon,mus_KSW_SummerForest);
	scr_KSW_AddMusic("sunnybeach","Sunny Beach","Spyro 2: Ripto's Rage",KSW_Phases.afternoon,mus_KSW_SunnyBeach);
	scr_KSW_AddMusic("mysticmarsh","Mystic Marsh","Spyro 2: Ripto's Rage",KSW_Phases.afternoon,mus_KSW_MysticMarsh);
	scr_KSW_AddMusic("dragonshores","Dragon Shores","Spyro 2: Ripto's Rage",KSW_Phases.afternoon,mus_KSW_DragonShores);
	scr_KSW_AddMusic("seashellshore","Seashell Shore","Spyro: Year of The Dragon",KSW_Phases.afternoon,mus_KSW_SeashellShore);
	scr_KSW_AddMusic("middaygardens","Midday Gardens","Spyro: Year of The Dragon",KSW_Phases.afternoon,mus_KSW_MiddayGardens);
	scr_KSW_AddMusic("capnflynnsship","Cap'n Flynn's Ship","Skylanders Giants",KSW_Phases.afternoon,mus_KSW_CapnFlynnsShip);
	scr_KSW_AddMusic("buccaneerbeach","Buccaneer Beach","Pac-Man World",KSW_Phases.afternoon,mus_KSW_BuccaneerBeach);
	scr_KSW_AddMusic("thebearbasics","The Bear Basics","Pac-Man World 2",KSW_Phases.afternoon,mus_KSW_TheBearBasics);
	scr_KSW_AddMusic("scubaduba","Scuba Duba","Pac-Man World 2",KSW_Phases.afternoon,mus_KSW_ScubaDuba);
	#endregion
	
	#region Night
	scr_KSW_AddMusic("rippleField2","Ripple Field 2","Kirby's Dream Land 3",KSW_Phases.night,mus_KSW_RippleField2);
	scr_KSW_AddMusic("summerSands","Summer Sands and Cool Waves","Kirby's Return to Dream Land",KSW_Phases.night,mus_KSW_SummerSands);
	scr_KSW_AddMusic("abandonedBeach","Abandoned Beach","Kirby and the Forgotten Land",KSW_Phases.night,mus_KSW_AbandonedBeach);
	scr_KSW_AddMusic("castlesCake","Castles of Cake","Kirby's Dream Course",KSW_Phases.night,mus_KSW_CastlesCake);
	scr_KSW_AddMusic("dreamCourseCredits","Staff Roll","Kirby's Dream Course",KSW_Phases.night,mus_KSW_DreamCourseCredits);
	scr_KSW_AddMusic("echosEdge","Echo's Edge","Kirby Star Allies",KSW_Phases.night,mus_KSW_EchosEdge);
	scr_KSW_AddMusic("icebergOcean","Iceberg Ocean","Kirby's Dream Course",KSW_Phases.night,mus_KSW_IcebergOcean);
	scr_KSW_AddMusic("jigsawPlains","Jigsaw Plains","Kirby's Dream Course",KSW_Phases.night,mus_KSW_JigsawPlains);
	scr_KSW_AddMusic("rideSky","Ride to the Sky","Kirby's Dream Course",KSW_Phases.night,mus_KSW_RideSky);
	scr_KSW_AddMusic("destinyislands2","Destiny Islands","Kingdom Hearts Re: Chain of Memories",KSW_Phases.night,mus_KSW_DestinyIslands2);
	scr_KSW_AddMusic("gnorccove","Gnorc Cove","Spyro The Dragon",KSW_Phases.night,mus_KSW_GnorcCove);
	scr_KSW_AddMusic("hurricos","Hurricos","Spyro 2: Ripto's Rage",KSW_Phases.night,mus_KSW_Hurricos);
	scr_KSW_AddMusic("aquariatowers","Aquaria Towers","Spyro 2: Ripto's Rage",KSW_Phases.night,mus_KSW_AquariaTowers);
	scr_KSW_AddMusic("breezeharbor","Breeze Harbor","Spyro 2: Ripto's Rage",KSW_Phases.night,mus_KSW_BreezeHarbor);
	scr_KSW_AddMusic("eveninglake","Evening Lake","Spyro: Year of The Dragon",KSW_Phases.night,mus_KSW_EveningLake);
	scr_KSW_AddMusic("cutthroatcarnival","Cutthroat Carnival","Skylanders Giants",KSW_Phases.night,mus_KSW_CutthroatCarnival);
	#endregion
	
	#region Any
	#endregion
	scr_KSW_AddMusic("goBeyond","Go Beyond","Nico Bellisario",KSW_Phases.none,mus_KSW_Title);
	scr_KSW_AddMusic("excessExpress","Excess Express at Dusk","Paper Mario TTYD",KSW_Phases.none,mus_KSW_Fishbook);
	scr_KSW_AddMusic("kommSusserTodd","Komm Susser Tod","Shiro Sagisu",KSW_Phases.none,mus_KSW_Credits,5.66);
	scr_KSW_AddMusic("floatIslandsSettings","Float Islands KDL3","What.sf2",KSW_Phases.none,mus_KSW_Settings,7.5);
	scr_KSW_AddMusic("lake","Lake","Pokemon Diamond - Pearl",KSW_Phases.none,mus_KSW_Stars,5.66);
	scr_KSW_AddMusic("day1","Day 1","Red Velvet",KSW_Phases.none,mus_KSW_Day1);
	scr_KSW_AddMusic("milesShop","Miles Shop","Kirby Air Riders",KSW_Phases.none,mus_KSW_Aquarium,0.505);
	#endregion
    
	#region Custom
	if ((!global.isMobile) and (!global.isOpera)) scr_KSW_AddMusic("custom","Custom Music","You...?",KSW_Phases.none,-1);
	#endregion
}