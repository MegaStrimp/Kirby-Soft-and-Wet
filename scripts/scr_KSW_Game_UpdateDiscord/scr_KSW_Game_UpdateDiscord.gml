///@description KSW - Game - Update Discord

function scr_KSW_Game_UpdateDiscord()
{
	var formattedScore = string_replace_all(string_format(min(global.levelScoreCurrent,999999999999),6,0)," ","0");
	
	scr_Discord_Setup("Fishing in " + string(global.KSW_StageList[global.KSW_CurrentStageID].name) + " - " + string(formattedScore) + " G","Collection " + string(global.KSW_CaughtUniqueFishCount) + "/" + string(global.KSW_FishCount),string_lower(global.KSW_StageList[global.KSW_CurrentStageID].ID),global.gameTitle + " " + global.versionNumber,"strimp","From Strimp's Kitchen");
}