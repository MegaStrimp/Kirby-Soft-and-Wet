///@description KSW - Game - Update Discord

function scr_KSW_Game_UpdateDiscord()
{
	var formattedScore = string_replace_all(string_format(min(global.levelScoreCurrent,999999999999),6,0)," ","0");
	
	scr_Discord_Setup("Fishing - " + string(formattedScore) + " G","Collection " + string(global.KSW_CaughtUniqueFishCount) + "/" + string(global.KSW_FishCount),"icon",global.gameTitle,"strimp","From Strimp's Kitchen");
}