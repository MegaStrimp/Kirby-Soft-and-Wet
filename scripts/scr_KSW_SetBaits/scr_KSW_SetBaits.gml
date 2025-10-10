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
	scr_KSW_AddBait("none","None","For the purists!",spr_UI_Shared_None,-1,candy,0,0,0,true);
	scr_KSW_AddBait("0rarity","Glod Berry","More 0 rarity fish!",spr_KSW_Bait_Icon_GlodBerry,spr_KSW_Bait_Texture_GlodBerry,glimmer,0,0,0,true);
	scr_KSW_AddBait("1rarity","Rare Cookie","More 1 rarity fish!",spr_KSW_Bait_Icon_RareCookie,spr_KSW_Bait_Texture_RareCookie,borange,0,0,0,true);
	scr_KSW_AddBait("2rarity","Big Bun","More 2 rarity fish!",spr_KSW_Bait_Icon_BigBun,spr_KSW_Bait_Texture_BigBun,borange,0,0,0,true);
	scr_KSW_AddBait("3rarity","Starfruit","More 3 rarity fish!",spr_KSW_Bait_Icon_Starfruit,spr_KSW_Bait_Texture_Starfruit,mint,0,0,0,true);
	scr_KSW_AddBait("extraDay","Sundae","Extra Daytime fish!",spr_KSW_Bait_Icon_Sundae,spr_KSW_Bait_Texture_Sundae,mage,0,0,0,true);
	scr_KSW_AddBait("extraAfternoon","Love Egg","Extra Afternoon fish!",spr_KSW_Bait_Icon_LoveEgg,spr_KSW_Bait_Texture_LoveEgg,borange,0,0,0,true);
	scr_KSW_AddBait("extraNight","Mooncake","Extra Nighttime fish!",spr_KSW_Bait_Icon_Mooncake,spr_KSW_Bait_Texture_Mooncake,flux,0,0,0,true);
	scr_KSW_AddBait("easyInputs","Ruffpaste","Easier catch inputs!",spr_KSW_Bait_Icon_Ruffpaste,spr_KSW_Bait_Texture_Ruffpaste,mage,0,0,0,true);
	scr_KSW_AddBait("fasterFinds","Rush Pepper","Less waiting time!",spr_KSW_Bait_Icon_RushPepper,spr_KSW_Bait_Texture_RushPepper,candy,0,0,0,true);
	scr_KSW_AddBait("moreShinies","Lifelight","More frequent anomalies!",spr_KSW_Bait_Icon_Lifelight,spr_KSW_Bait_Texture_Lifelight,glimmer,0,0,0,true);
	scr_KSW_AddBait("moreGrams","Stone Chum","Heavier fish!",spr_KSW_Bait_Icon_StoneChum,spr_KSW_Bait_Texture_StoneChum,legion,0,0,0,true);
	scr_KSW_AddBait("moreCoins","Baggie Candy","More coins!",spr_KSW_Bait_Icon_BaggieCandy,spr_KSW_Bait_Texture_BaggieCandy,borange,0,0,0,true);
	#endregion
}