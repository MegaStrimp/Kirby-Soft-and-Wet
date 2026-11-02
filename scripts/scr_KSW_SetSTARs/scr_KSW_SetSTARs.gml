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
	scr_KSW_AddSTAR("aGift","A Gift","Humble gift from a beast ever lonely. Every world is protected by a spirit of dreams, found in different shapes and forms. If they fail, there is no going back",spr_KSW_Menu_Aquarium_Fish);
	scr_KSW_AddSTAR("lost","Lost","What happens when the game is over? When the villain wins? For some, it is the last glimpse they see before falling down",spr_KSW_Ring);
	scr_KSW_AddSTAR("eternity","Eternity","The Web of Doomed Timelines. When a world is beyond saving, she aborbs it all",spr_KSW_Particle_Eternity);
	#endregion
}