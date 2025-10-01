///@description KSW - Set Bobbers

function scr_KSW_SetBobbers()
{
	#region Setup
	global.KSW_BobberCount = 0;
	
	global.KSW_BobberList = [];
	global.KSW_BobberIDs = ds_map_create();
	#endregion
	
	#region Add Bobbers Here
	scr_KSW_AddBobber("red","Red",spr_KSW_Bobber_Red,0,false,true);
	scr_KSW_AddBobber("blue","Blue",spr_KSW_Bobber_Blue,0,false,true);
	scr_KSW_AddBobber("green","Green",spr_KSW_Bobber_Green,0,false,true);
	scr_KSW_AddBobber("rainbowDrop","Rainbow Drop",spr_KSW_Bobber_RainbowDrop,0);
	scr_KSW_AddBobber("kirby","Kirby",spr_KSW_Bobber_Kirby,100);
	scr_KSW_AddBobber("star","Star",spr_KSW_Bobber_Star,0);
	scr_KSW_AddBobber("darkMatter","Dark Matter",spr_KSW_Bobber_DarkMatter,0);
	scr_KSW_AddBobber("starry","Starry",spr_KSW_Bobber_Starry,0);
	scr_KSW_AddBobber("legend","Legend",spr_KSW_Bobber_Legend,0,true);
	scr_KSW_AddBobber("hayuto","Hayuto",spr_KSW_Bobber_Hayuto,0,true);
	scr_KSW_AddBobber("deirdre","Deirdre",spr_KSW_Bobber_Deirdre,0,true);
	scr_KSW_AddBobber("rogueMatter","Rogue Matter",spr_KSW_Bobber_RogueMatter,0,true);
	#endregion
}