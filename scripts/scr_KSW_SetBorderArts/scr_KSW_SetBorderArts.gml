///@description KSW - Set Border Arts

function scr_KSW_SetBorderArts()
{
	#region Setup
	global.KSW_BorderArtCount = 0;
	
	global.KSW_BorderArtList = [];
	global.KSW_BorderArtIDs = ds_map_create();
	#endregion
	
	#region Add BorderArts Here
	scr_KSW_AddBorderArt("random","Random",-2);
	scr_KSW_AddBorderArt("none","None",-1);
	scr_KSW_AddBorderArt("default","Default",spr_KSW_BorderArt_Default);
	scr_KSW_AddBorderArt("androidPort","Android Port",spr_KSW_BorderArt_AndroidPort);
	#endregion
}