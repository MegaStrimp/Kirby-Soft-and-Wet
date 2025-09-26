///@description KSW - UI - Customize - Set Pages

function scr_KSW_UI_Customize_SetPages()
{
	#region Setup
	KSW_PageCount = 0;
	
	KSW_PageList = [];
	KSW_PageIDs = ds_map_create();
	#endregion
	
	#region Add Pages Here
	scr_KSW_UI_Customize_AddPage("");
	#endregion
}