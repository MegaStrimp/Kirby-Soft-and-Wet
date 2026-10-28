///@description KSW - UI - Customize - Pages - Hats - Select

function scr_KSW_UI_Customize_Pages_Hats_Select()
{
	if (ds_list_find_value(selectionList,selection) == -1)
	{
		scr_PlaySfx(snd_KSW_ButtonYes);
		
		global.KSW_PlayerEquippedHatShuffle[playerNum] = true;
	}
	else
	{
		if (global.KSW_CharacterList[global.playerCharacter[playerNum]].hats[ds_list_find_value(selectionList,selection)].isUnlocked)
		{
			scr_PlaySfx(snd_KSW_ButtonYes);
			
			global.KSW_PlayerEquippedHatShuffle[playerNum] = false;
			global.KSW_PlayerEquippedHatID[playerNum][global.playerCharacter[playerNum]] = ds_list_find_value(selectionList,selection);
		}
		else
		{
			if ((global.KSW_CharacterList[global.playerCharacter[playerNum]].hats[ds_list_find_value(selectionList,selection)].price == 0) or (global.KSW_CurrentCoins < global.KSW_CharacterList[global.playerCharacter[playerNum]].hats[ds_list_find_value(selectionList,selection)].price))
			{
				scr_PlaySfx(snd_KSW_ButtonError);
			}
			else
			{
				scr_PlaySfx(snd_KSW_Coin);
				scr_PlaySfx(snd_KSW_Buy);
				
				var finalPrice = global.KSW_CharacterList[global.playerCharacter[playerNum]].hats[ds_list_find_value(selectionList,selection)].price;
				global.KSW_CurrentCoins -= finalPrice;
				with (obj_KSW_GameController) displayedCoins -= finalPrice;
				
				displayedCoins_YOffsetTimer = displayedCoins_YOffsetTimerMax;
				
				global.KSW_UnlockedHatCount[global.playerCharacter[playerNum]] += 1;
				global.KSW_CharacterList[global.playerCharacter[playerNum]].hats[ds_list_find_value(selectionList,selection)].isUnlocked = true;
				
				var achievementID = global.KSW_AchievementIDs[? "collectHats1"];
				if (global.KSW_AchievementList[achievementID].unlockScript()) scr_KSW_ObtainAchievement(achievementID);
				
				var achievementID = global.KSW_AchievementIDs[? "collectHats30"];
				if (global.KSW_AchievementList[achievementID].unlockScript()) scr_KSW_ObtainAchievement(achievementID);
				
				var achievementID = global.KSW_AchievementIDs[? "collectHats50"];
				if (global.KSW_AchievementList[achievementID].unlockScript()) scr_KSW_ObtainAchievement(achievementID);
				
				var achievementID = global.KSW_AchievementIDs[? "collectHatsAll"];
				if (global.KSW_AchievementList[achievementID].unlockScript()) scr_KSW_ObtainAchievement(achievementID);
				
				isCompleted = (global.KSW_UnlockedHatCount[global.playerCharacter[playerNum]] >= global.KSW_HatCount[global.playerCharacter[playerNum]]);
			}
		}
	}
}