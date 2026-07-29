///@description KSW - Add Achievement

function scr_KSW_AddAchievement(targetID,targetName,targetDescription,targetIcon,targetUnlockScript,targetBobberReward = -1,targetHidden = false)
{
	ds_map_add(global.KSW_AchievementIDs,targetID,global.KSW_TotalAchievementCount);
	
	global.KSW_AchievementList[global.KSW_AchievementIDs[? targetID]] = 
	{
        id: targetID,
        name: targetName,
        description: targetDescription,
        icon: targetIcon,
		unlockScript: targetUnlockScript,
		bobberReward: targetBobberReward,
		isHidden: targetHidden,
		isObtained: false
    };
	
	if (targetBobberReward != -1) global.KSW_BobberList[targetBobberReward].tiedAchievementName = targetName;
	
	global.KSW_TotalAchievementCount += 1;
	if (!targetHidden) global.KSW_VisibleAchievementCount += 1;
}