///@description KSW - Game - Update Discord

function scr_KSW_Game_UpdateDiscord()
{
	var formattedScore = string_replace_all(string_format(min(global.levelScoreCurrent,999999999999),6,0)," ","0");
	var finalCollection = "Collection " + string(global.KSW_CaughtUniqueFishCount) + "/" + string(global.KSW_FishCount);
	if (global.KSW_CaughtShinyFishCount > 0) finalCollection = "Collection " + string(global.KSW_CaughtUniqueFishCount) + "/" + string(global.KSW_FishCount) + " - " + string(global.KSW_CaughtShinyFishCount) + "/" + string(global.KSW_FishCount);
	
	scr_Discord_Setup("Fishing in " + string(global.KSW_StageList[global.KSW_CurrentStageID].name) + " as " + string(global.KSW_CharacterList[global.playerCharacter[0]].name) + " - " + string(formattedScore) + " G",finalCollection,string_lower(global.KSW_StageList[global.KSW_CurrentStageID].ID),global.gameTitle + " " + global.versionNumber,"strimp","From Strimp's Kitchen");
}