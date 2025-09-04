///@description KSW - UI - Achievement - Create

function scr_KSW_UI_Achievement_Create(targetAchievementID)
{
	var achievementNotif = instance_create_depth(0,0,0,obj_KSW_UI_Achievement);
	with (achievementNotif)
	{
        name = string_upper(global.KSW_AchievementList[targetAchievementID].name);
        description = string_upper(global.KSW_AchievementList[targetAchievementID].description);
        icon = global.KSW_AchievementList[targetAchievementID].icon;
		isHidden = global.KSW_AchievementList[targetAchievementID].isHidden;
	}
}