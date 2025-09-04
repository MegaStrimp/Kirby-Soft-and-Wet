///@description KSW - Obtain Achievement

function scr_KSW_ObtainAchievement(targetAchievementID)
{
	if (!global.KSW_AchievementList[targetAchievementID].isObtained)
	{
		global.KSW_ObtainedAchievementCount += 1;
		global.KSW_AchievementList[targetAchievementID].isObtained = true;
		
		ds_list_add(global.notifQueue,targetAchievementID);
		
		if (!instance_exists(obj_KSW_UI_Achievement))
		{
			var nextAchievementNotif = ds_list_find_value(global.notifQueue,0);
			if (nextAchievementNotif != undefined)
			{
				scr_KSW_UI_Achievement_Create(nextAchievementNotif);
				
				ds_list_delete(global.notifQueue,0);
			}
		}
		
		scr_KSW_SaveData("data1.ini");
		
		var achievementID = global.KSW_AchievementIDs[? "getAllStars"];
		if (global.KSW_AchievementList[achievementID].unlockScript()) scr_KSW_ObtainAchievement(achievementID);
		var achievementID = global.KSW_AchievementIDs[? "doEverything"];
		if (global.KSW_AchievementList[achievementID].unlockScript()) scr_KSW_ObtainAchievement(achievementID);
	}
}