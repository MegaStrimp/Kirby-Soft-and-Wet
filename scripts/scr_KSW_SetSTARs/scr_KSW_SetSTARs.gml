///@description KSW - Set STARs

function scr_KSW_SetSTARs()
{
	/*
	I see you #mysteries
	
	Do not ruin people's fun
	
	There is no info here that requires datamining
	
	Find everything by yourself
	*/
	#region Setup
	global.KSW_TotalSTARCount = 0;
	
	global.KSW_STARList = [];
	global.KSW_STARIDs = ds_map_create();
	#endregion
	
	#region Add STARs Here
	scr_KSW_AddSTAR("aGift","A Gift","Gift from a beast ever lonely",spr_KSW_Menu_Aquarium_Fish);
	#endregion
}