///@description KSW - Set Events

function scr_KSW_SetEvents()
{
	#region Setup
	global.KSW_EventCount = 0;
	
	global.KSW_EventList = [];
	global.KSW_EventIDs = ds_map_create();
	#endregion
	
	#region Stages
	var anyStage = -1;
	var grassBeach = global.KSW_StageIDs[? "grassBeach"];
	var creamCrevasse = global.KSW_StageIDs[? "creamCrevasse"];
	var hallowReen = global.KSW_StageIDs[? "hallowReen"];
	var serranoSprings = global.KSW_StageIDs[? "serranoSprings"];
	var androidPort = global.KSW_StageIDs[? "androidPort"];
	var cloudyPark = global.KSW_StageIDs[? "cloudyPark"];
	#endregion
	
	#region Rarity Macros
	#macro KSW_Event_Rate_Common 10
	#macro KSW_Event_Rate_Uncommon 4
	#macro KSW_Event_Rate_Rare 2
	#macro KSW_Event_Rate_SuperRare 1
	#endregion
	
	#region Add Events Here
	scr_KSW_AddEvent("novemberRain","November Rain","Quick Fish, Faster Timer","#5BD8C1",#5BD8C1,anyStage,KSW_Phases.none,scr_KSW_Event_NovemberRain_Setup,scr_KSW_Event_NovemberRain_End,,KSW_Event_Rate_Common);
	scr_KSW_AddEvent("dimensionalFissure","Dimensional Fissure","All Stages Mixed Up","#A8FFFF",#A8FFFF,anyStage,KSW_Phases.none,scr_KSW_Event_DimensionalFissure_Setup,scr_KSW_Event_DimensionalFissure_End,,KSW_Event_Rate_Rare);
	scr_KSW_AddEvent("bloodMoon","Blood Moon","No New Fish, More Shinies","#A00806",#A00806,anyStage,KSW_Phases.none,scr_KSW_Event_BloodMoon_Setup,scr_KSW_Event_BloodMoon_End,,KSW_Event_Rate_Uncommon);
	scr_KSW_AddEvent("aurora","Aurora","Tolerant Inputs","#64EA42",#64EA42,anyStage,KSW_Phases.none,scr_KSW_Event_Aurora_Setup,scr_KSW_Event_Aurora_End,,KSW_Event_Rate_Common);
	scr_KSW_AddEvent("gambler","Gambler","Roulette Inputs, More Coins","#E8E35C",#E8E35C,anyStage,KSW_Phases.none,scr_KSW_Event_Gambler_Setup,scr_KSW_Event_Gambler_End,,KSW_Event_Rate_Rare);
	scr_KSW_AddEvent("starfall","Starfall","More New Fish","#968BE5",#968BE5,anyStage,KSW_Phases.none,scr_KSW_Event_Starfall_Setup,scr_KSW_Event_Starfall_End,,KSW_Event_Rate_Uncommon);
	scr_KSW_AddEvent("heatWave","Heat Wave","Less Coins, Easier Inputs","#DD9E52",#DD9E52,anyStage,KSW_Phases.none,scr_KSW_Event_HeatWave_Setup,scr_KSW_Event_HeatWave_End,,KSW_Event_Rate_Common);
	#endregion
}