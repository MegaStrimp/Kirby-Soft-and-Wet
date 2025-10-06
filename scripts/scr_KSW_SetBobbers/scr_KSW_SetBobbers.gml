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
	var tvtime = spr_KSW_UI_CaughtBox_Palette_TVTime;
	#endregion
	
	#region Add Bobbers Here
	scr_KSW_AddBobber("red","Red",spr_KSW_Bobber_Red,candy,0,0,-4,false,true);
	scr_KSW_AddBobber("blue","Blue",spr_KSW_Bobber_Blue,candy,0,0,-4,false,true);
	scr_KSW_AddBobber("green","Green",spr_KSW_Bobber_Green,candy,0,0,-4,false,true);
	scr_KSW_AddBobber("rainbowDrop","Rainbow Drop",spr_KSW_Bobber_RainbowDrop,candy,0,0,-4);
	scr_KSW_AddBobber("kirby","Kirby",spr_KSW_Bobber_Kirby,candy,100,0,-4);
	scr_KSW_AddBobber("star","Star",spr_KSW_Bobber_Star,candy,0,0,-4);
	scr_KSW_AddBobber("darkMatter","Dark Matter",spr_KSW_Bobber_DarkMatter,candy,0,0,-7);
	scr_KSW_AddBobber("starry","Starry",spr_KSW_Bobber_Starry,candy,0,0,-4);
	scr_KSW_AddBobber("legend","Legend",spr_KSW_Bobber_Legend,candy,0,0,-8,true);
	scr_KSW_AddBobber("hayuto","Hayuto",spr_KSW_Bobber_Hayuto,candy,0,0,-8,true);
	scr_KSW_AddBobber("deirdre","Deirdre",spr_KSW_Bobber_Deirdre,candy,0,0,-5,true);
	scr_KSW_AddBobber("rogueMatter","Rogue Matter",spr_KSW_Bobber_RogueMatter,candy,0,0,-5,true);
	#endregion
}