///@description Main

#region Playtime Achievement Timer
if (playtimeAchievementTimer != -1)
{
	playtimeAchievementTimer = max(playtimeAchievementTimer - speedMultFinal,0);
	if (playtimeAchievementTimer == 0)
	{
		var achievementID = global.KSW_AchievementIDs[? "playtime1"];
		if (global.KSW_AchievementList[achievementID].unlockScript()) scr_KSW_ObtainAchievement(achievementID);
		var achievementID = global.KSW_AchievementIDs[? "playtime5"];
		if (global.KSW_AchievementList[achievementID].unlockScript()) scr_KSW_ObtainAchievement(achievementID);
		var achievementID = global.KSW_AchievementIDs[? "playtime20"];
		if (global.KSW_AchievementList[achievementID].unlockScript()) scr_KSW_ObtainAchievement(achievementID);
		
		playtimeAchievementTimer = playtimeAchievementTimerMax;
	}
}
#endregion