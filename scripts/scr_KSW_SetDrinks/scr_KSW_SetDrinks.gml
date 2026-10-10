///@description KSW - Set Drinks

function scr_KSW_SetDrinks()
{
	#region Setup
	global.KSW_DrinkCount = 0;
	
	global.KSW_DrinkList = [];
	global.KSW_DrinkIDs = ds_map_create();
	#endregion
	
	#region Stages
	var anyStage = -1;
	var grassBeach = global.KSW_StageIDs[? "grassBeach"];
	var creamCrevasse = global.KSW_StageIDs[? "creamCrevasse"];
	var hallowReen = global.KSW_StageIDs[? "hallowReen"];
	var serranoSprings = global.KSW_StageIDs[? "serranoSprings"];
	var androidPort = global.KSW_StageIDs[? "androidPort"];
	#endregion
	
	#region Add Drinks Here
	scr_KSW_AddDrink("iceCreamIsland","Ice Cream Island",spr_KSW_Drink_IceCreamIsland,anyStage);
	scr_KSW_AddDrink("orangeOcean","Orange Ocean",spr_KSW_Drink_OrangeOcean,anyStage);
	scr_KSW_AddDrink("yogurtYard","Yogurt Yard",spr_KSW_Drink_YogurtYard,anyStage);
	
	scr_KSW_AddDrink("berryJuice","Berry Juice",spr_KSW_Drink_BerryJuice,grassBeach);
	scr_KSW_AddDrink("sodaPop","Soda Pop",spr_KSW_Drink_SodaPop,grassBeach);
	scr_KSW_AddDrink("bajaBlastCan","Baja Blast Can",spr_KSW_Drink_BajaBlastCan,grassBeach);
	scr_KSW_AddDrink("superHealingPotion","Super Healing Potion",spr_KSW_Drink_SuperHealingPotion,grassBeach);
	scr_KSW_AddDrink("wumpaFruit","Wumpa Fruit",spr_KSW_Drink_WumpaFruit,grassBeach);
	scr_KSW_AddDrink("appleBomb","Apple Bomb",spr_KSW_Drink_AppleBomb,grassBeach);
	scr_KSW_AddDrink("bananaPeel","Banana Peel",spr_KSW_Drink_BananaPeel,grassBeach);
	scr_KSW_AddDrink("fairyBottle","Fairy Bottle",spr_KSW_Drink_FairyBottle,grassBeach);
	scr_KSW_AddDrink("heartContainer","Heart Container",spr_KSW_Drink_HeartContainer,grassBeach);
	scr_KSW_AddDrink("paopuFruitPile","Paopu Fruit Pile",spr_KSW_Drink_PaopuFruitPile,grassBeach);
	scr_KSW_AddDrink("tallDrink","Tall Drink",spr_KSW_Drink_TallDrink,grassBeach);
	scr_KSW_AddDrink("goldenBanana","Golden Banana",spr_KSW_Drink_GoldenBanana,grassBeach);
	scr_KSW_AddDrink("pelletPosy","Pellet Posy",spr_KSW_Drink_PelletPosy,grassBeach);
	scr_KSW_AddDrink("luckyLunch","Lucky Lunch",spr_KSW_Drink_LuckyLunch,grassBeach);
	scr_KSW_AddDrink("stardewWine","Stardew Wine",spr_KSW_Drink_StardewWine,grassBeach);
	
	scr_KSW_AddDrink("rootBeerFloat","Root Beer Float",spr_KSW_Drink_RootBeerFloat,creamCrevasse);
	scr_KSW_AddDrink("iceCream","Ice Cream",spr_KSW_Drink_IceCream,creamCrevasse);
	scr_KSW_AddDrink("mooMooMilk","Moo Moo Milk",spr_KSW_Drink_MooMooMilk,creamCrevasse);
	scr_KSW_AddDrink("shortcake","Shortcake",spr_KSW_Drink_Shortcake,creamCrevasse);
	scr_KSW_AddDrink("syrup","Syrup",spr_KSW_Drink_Syrup,creamCrevasse);
	scr_KSW_AddDrink("kirbySorbet","Kirby Sorbet",spr_KSW_Drink_KirbySorbet,creamCrevasse);
	scr_KSW_AddDrink("goldenApple","Golden Apple",spr_KSW_Drink_GoldenApple,creamCrevasse);
	scr_KSW_AddDrink("sushi","Sushi",spr_KSW_Drink_Sushi,creamCrevasse);
	scr_KSW_AddDrink("strawberryTofu","Strawberry Tofu",spr_KSW_Drink_StrawberryTofu,creamCrevasse);
	scr_KSW_AddDrink("orangeWinterberry","Orange Winterberry",spr_KSW_Drink_OrangeWinterberry,creamCrevasse);
	scr_KSW_AddDrink("bobaTea","Boba Tea",spr_KSW_Drink_BobaTea,creamCrevasse);
	scr_KSW_AddDrink("stardropTea","Stardrop Tea",spr_KSW_Drink_StardropTea,creamCrevasse);
	scr_KSW_AddDrink("starfait","Starfait",spr_KSW_Drink_Starfait,creamCrevasse);
	
	scr_KSW_AddDrink("undyneSoda","Undyne Soda",spr_KSW_Drink_UndyneSoda,hallowReen);
	scr_KSW_AddDrink("breadMonster","Bread Monster",spr_KSW_Drink_BreadMonster,hallowReen);
	scr_KSW_AddDrink("mrCupcake","Mr. Cupcake",spr_KSW_Drink_MrCupcake,hallowReen);
	scr_KSW_AddDrink("jesusJuice","Jesus Juice",spr_KSW_Drink_JesusJuice,hallowReen);
	scr_KSW_AddDrink("healthTonic","Health Tonic",spr_KSW_Drink_HealthTonic,hallowReen);
	scr_KSW_AddDrink("invisibilityPotion","Invisibility Potion",spr_KSW_Drink_InvisibilityPotion,hallowReen);
	scr_KSW_AddDrink("wallChicken","Wall Chicken",spr_KSW_Drink_WallChicken,hallowReen);
	scr_KSW_AddDrink("magicUrn","Magic Urn",spr_KSW_Drink_MagicUrn,hallowReen);
	scr_KSW_AddDrink("bustlingFungus","Bustling Fungus",spr_KSW_Drink_BustlingFungus,hallowReen);
	scr_KSW_AddDrink("bileBomb","Bile Bomb",spr_KSW_Drink_BileBomb,hallowReen);
	scr_KSW_AddDrink("healthDrink","Health Drink",spr_KSW_Drink_HealthDrink,hallowReen);
	scr_KSW_AddDrink("greenHerb","Green Herb",spr_KSW_Drink_GreenHerb,hallowReen);
	
	scr_KSW_AddDrink("hotSauce","Hot Sauce",spr_KSW_Drink_HotSauce,serranoSprings);
	scr_KSW_AddDrink("freshWater","Fresh Water",spr_KSW_Drink_FreshWater,serranoSprings);
	scr_KSW_AddDrink("tea","Tea",spr_KSW_Drink_Tea,serranoSprings);
	scr_KSW_AddDrink("burger","Burger",spr_KSW_Drink_Burger,serranoSprings);
	scr_KSW_AddDrink("lemonade","Lemonade",spr_KSW_Drink_Lemonade,serranoSprings);
	scr_KSW_AddDrink("fireWatermelon","Fire Watermelon",spr_KSW_Drink_FireWatermelon,serranoSprings);
	scr_KSW_AddDrink("vial","Vial",spr_KSW_Drink_Vial,serranoSprings);
	scr_KSW_AddDrink("liberTea","Liber-Tea",spr_KSW_Drink_LiberTea,serranoSprings);
	scr_KSW_AddDrink("garlic","Garlic",spr_KSW_Drink_Garlic,serranoSprings);
	scr_KSW_AddDrink("fleaBrew","Flea Brew",spr_KSW_Drink_FleaBrew,serranoSprings);
	scr_KSW_AddDrink("spicyEel","SpicyEel",spr_KSW_Drink_SpicyEel,serranoSprings);
	scr_KSW_AddDrink("estusFlask","Estus Flask",spr_KSW_Drink_EstusFlask,serranoSprings);
	
	scr_KSW_AddDrink("queensBatteryAcid","Queen's Battery Acid",spr_KSW_Drink_QueensBatteryAcid,androidPort);
	scr_KSW_AddDrink("gamerCombo","Gamer Combo",spr_KSW_Drink_GamerCombo,androidPort);
	scr_KSW_AddDrink("cherries","Cherries",spr_KSW_Drink_Cherries,androidPort);
	scr_KSW_AddDrink("nukaColaQuantum","Nuka Cola Quantum",spr_KSW_Drink_NukaColaQuantum,androidPort);
	scr_KSW_AddDrink("ETank","E Tank",spr_KSW_Drink_ETank,androidPort);
	scr_KSW_AddDrink("monkeySerum","Monkey Serum",spr_KSW_Drink_MonkeySerum,androidPort);
	scr_KSW_AddDrink("lifePot","Life Pot",spr_KSW_Drink_LifePot,androidPort);
	scr_KSW_AddDrink("gravitySuitUpgrade","Gravity Suit Upgrade",spr_KSW_Drink_GravitySuitUpgrade,androidPort);
	scr_KSW_AddDrink("bigBeverage","Big Beverage",spr_KSW_Drink_BigBeverage,androidPort);
	scr_KSW_AddDrink("chiliDog","Chili Dog",spr_KSW_Drink_ChiliDog,androidPort);
	scr_KSW_AddDrink("plumJuice","Plum Juice",spr_KSW_Drink_PlumJuice,androidPort);
	scr_KSW_AddDrink("chugJug","Chug Jug",spr_KSW_Drink_ChugJug,androidPort);
	scr_KSW_AddDrink("lieCake","LieCake",spr_KSW_Drink_LieCake,androidPort);
	#endregion
}