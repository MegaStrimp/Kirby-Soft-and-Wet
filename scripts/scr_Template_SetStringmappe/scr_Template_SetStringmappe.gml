///@description Template - Set Stringmappe

function scr_Template_SetStringmappe()
{
	#region Setup
	global.Template_StringmappeCount = 0;
	
	global.Template_StringmappeList = [];
	global.Template_StringmappeIDs = ds_map_create();
	#endregion
	
	#region Add Stringmappe Here
	scr_Template_AddStringmappe("");
	#endregion
}