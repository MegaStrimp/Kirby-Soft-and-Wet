///@description KSW - Set Bobbers

function scr_KSW_SetBobbers()
{
	#region Setup
	global.KSW_BobberCount = 0;
	
	global.KSW_BobberList = [];
	global.KSW_BobberIDs = ds_map_create();
	#endregion
	
	#region Add Bobbers Here
	scr_KSW_AddBobber("red","Red",spr_KSW_Bobber_Red,false,false,true);
	scr_KSW_AddBobber("blue","Blue",spr_KSW_Bobber_Blue,false,false,true);
	scr_KSW_AddBobber("green","Green",spr_KSW_Bobber_Green,false,false,true);
	scr_KSW_AddBobber("rainbowDrop","Rainbow Drop",spr_KSW_Bobber_RainbowDrop,false);
	scr_KSW_AddBobber("kirby","Kirby",spr_KSW_Bobber_Kirby,false);
	scr_KSW_AddBobber("star","Star",spr_KSW_Bobber_Star,false);
	scr_KSW_AddBobber("darkMatter","Dark Matter",spr_KSW_Bobber_DarkMatter,false);
	scr_KSW_AddBobber("starry","Starry",spr_KSW_Bobber_Starry,false);
	scr_KSW_AddBobber("legend","Legend",spr_KSW_Bobber_Legend,false,true);
	scr_KSW_AddBobber("hayuto","Hayuto",spr_KSW_Bobber_Hayuto,false,true);
	scr_KSW_AddBobber("deirdre","Deirdre",spr_KSW_Bobber_Deirdre,false,true);
	scr_KSW_AddBobber("rogueMatter","Rogue Matter",spr_KSW_Bobber_RogueMatter,false,true);
	#endregion
}