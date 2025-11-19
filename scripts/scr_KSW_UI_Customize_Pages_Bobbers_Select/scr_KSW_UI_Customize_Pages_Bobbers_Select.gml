///@description KSW - UI - Customize - Pages - Bobbers - Select

function scr_KSW_UI_Customize_Pages_Bobbers_Select()
{
	if (ds_list_find_value(selectionList,selection) == -1)
	{
		scr_PlaySfx(snd_KSW_ButtonYes);
		
		global.KSW_EquippedBobberShuffle[playerNum] = true;
	}
	else
	{
		if (global.KSW_BobberList[ds_list_find_value(selectionList,selection)].isUnlocked)
		{
			scr_PlaySfx(snd_KSW_ButtonYes);
			
			global.KSW_EquippedBobberShuffle[playerNum] = false;
			global.KSW_EquippedBobberID[playerNum] = ds_list_find_value(selectionList,selection);
		}
		else
		{
			if ((global.KSW_BobberList[ds_list_find_value(selectionList,selection)].price == 0) or (global.KSW_CurrentCoins < global.KSW_BobberList[ds_list_find_value(selectionList,selection)].price))
			{
				scr_PlaySfx(snd_KSW_ButtonError);
			}
			else
			{
				scr_PlaySfx(snd_KSW_Coin);
				scr_PlaySfx(snd_KSW_Buy);
				
				var finalPrice = global.KSW_BobberList[ds_list_find_value(selectionList,selection)].price;
				global.KSW_CurrentCoins -= finalPrice;
				with (obj_KSW_GameController) displayedCoins -= finalPrice;
				
				displayedCoins_YOffsetTimer = displayedCoins_YOffsetTimerMax;
				
				scr_KSW_ObtainBobber(ds_list_find_value(selectionList,selection));
				
				isCompleted = (global.KSW_UnlockedBobberCount >= global.KSW_VisibleBobberCount);
			}
		}
	}
}