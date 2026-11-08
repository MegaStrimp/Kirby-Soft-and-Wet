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
	scr_KSW_AddSTAR("lost","Lost","What happens when the game is over? When the villain wins? For some, it is the last glimpse they see before falling down",spr_KSW_Ring,-120,-80);
	scr_KSW_AddSTAR("eternity","Eternity","The Web of Doomed Timelines. When a world is beyond saving, she aborbs it all",spr_KSW_Particle_Eternity);
	scr_KSW_AddSTAR("theSea","The Sea","One of the many containment made out of the various Universes fallen into Eternity. Nobody can escape. For the betterment of everyone else",spr_KSW_Menu_Aquarium_Ocean,-120,-80);
	scr_KSW_AddSTAR("ego","Ego","How did it die? Where did it belong? What was its story? The same questions could be asked for anything in here. The dreams are broken, lives are shattered, and stories are left untold when your world is doomed",spr_KSW_Player_Kirby_Ready);
	#endregion
}