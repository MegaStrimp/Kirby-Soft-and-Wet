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
		if ((global.KSW_BaitList[ds_list_find_value(selectionList,selection)].price == 0) or (global.KSW_CurrentCoins < global.KSW_BaitList[ds_list_find_value(selectionList,selection)].price))
		{
			scr_PlaySfx(snd_KSW_ButtonError);
		}
		else
		{
			scr_PlaySfx(snd_KSW_Coin);
			scr_PlaySfx(snd_KSW_Buy);
			
			global.KSW_CurrentCoins -= global.KSW_BaitList[ds_list_find_value(selectionList,selection)].price;
			
			displayedCoins_YOffsetTimer = displayedCoins_YOffsetTimerMax;
			
			global.KSW_UnlockedBaitCount += 1;
			global.KSW_BaitList[ds_list_find_value(selectionList,selection)].isUnlocked = true;
		}
	}
}