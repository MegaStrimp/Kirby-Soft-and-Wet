///@description KSW - Set Baits

function scr_KSW_SetBaits()
{
	#region Setup
	global.KSW_BaitCount = 0;
	
	global.KSW_BaitList = [];
	global.KSW_BaitIDs = ds_map_create();
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
	
	#region Add Baits Here
	scr_KSW_AddBait("none","Regular","For the purists!",-1,-1,candy,0,0,0,true);
	scr_KSW_AddBait("0rarity","Glod Berry","More 0 rarity fish!",-1,-1,candy,0,0,0,true);
	scr_KSW_AddBait("1rarity","","More 1 rarity fish!",-1,-1,candy,0,0,0,true);
	scr_KSW_AddBait("2rarity","","More 2 rarity fish!",-1,-1,candy,0,0,0,true);
	scr_KSW_AddBait("3rarity","","More 3 rarity fish!",-1,-1,candy,0,0,0,true);
	scr_KSW_AddBait("extraDay","","Extra Daytime fish!",-1,-1,candy,0,0,0,true);
	scr_KSW_AddBait("extraAfternoon","","Extra Afternoon fish!",-1,-1,candy,0,0,0,true);
	scr_KSW_AddBait("extraNight","Mooncake","Extra Nighttime fish!",-1,-1,candy,0,0,0,true);
	scr_KSW_AddBait("easyInputs","Ruffpaste","Easier catch inputs!",-1,-1,candy,0,0,0,true);
	scr_KSW_AddBait("fasterFinds","Rush Pepper","Less waiting time!",-1,-1,candy,0,0,0,true);
	scr_KSW_AddBait("moreShinies","Lifelight","More frequent anomalies!",-1,-1,candy,0,0,0,true);
	scr_KSW_AddBait("moreGrams","Stone Chum","Heavier fish!",-1,-1,candy,0,0,0,true);
	scr_KSW_AddBait("moreCoins","Baggie Candy","More coins!",-1,-1,candy,0,0,0,true);
	#endregion
}