///@description KSW - UI - Customize - Pages - Baits - Select

function scr_KSW_UI_Customize_Pages_Baits_Select()
{
	if (global.KSW_BaitList[ds_list_find_value(selectionList,selection)].isUnlocked)
	{
		scr_PlaySfx(snd_KSW_ButtonYes);
		
		global.KSW_EquippedBaitID[playerNum] = ds_list_find_value(selectionList,selection);
	}
	else
	{
		if (((global.KSW_BaitList[ds_list_find_value(selectionList,selection)].exNeeded) and (!global.KSW_ExModeActive)) or ((global.KSW_BaitList[ds_list_find_value(selectionList,selection)].price == 0) or (global.KSW_CurrentCoins < global.KSW_BaitList[ds_list_find_value(selectionList,selection)].price)))
		{
			scr_PlaySfx(snd_KSW_ButtonError);
		}
		else
		{
			scr_PlaySfx(snd_KSW_Coin);
			scr_PlaySfx(snd_KSW_Buy);
			
			var finalPrice = global.KSW_BaitList[ds_list_find_value(selectionList,selection)].price;
			global.KSW_CurrentCoins -= finalPrice;
			with (obj_KSW_GameController) displayedCoins -= finalPrice;
			
			displayedCoins_YOffsetTimer = displayedCoins_YOffsetTimerMax;
			
			global.KSW_UnlockedBaitCount += 1;
			global.KSW_BaitList[ds_list_find_value(selectionList,selection)].isUnlocked = true;
			
			var achievementID = global.KSW_AchievementIDs[? "collectBait1"];
			if (global.KSW_AchievementList[achievementID].unlockScript()) scr_KSW_ObtainAchievement(achievementID);
			
			var achievementID = global.KSW_AchievementIDs[? "collectBaitAll"];
			if (global.KSW_AchievementList[achievementID].unlockScript()) scr_KSW_ObtainAchievement(achievementID);
			
			isCompleted = (global.KSW_UnlockedBaitCount >= global.KSW_BaitCount);
		}
	}
}