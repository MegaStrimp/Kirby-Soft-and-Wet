///@description KSW - UI - Customize - Pages - Stages - Select

function scr_KSW_UI_Customize_Pages_Stages_Select()
{
	if (global.KSW_StageList[ds_list_find_value(selectionList,selection)].isUnlocked)
	{
		scr_PlaySfx(snd_KSW_ButtonYes);
		
		if (global.KSW_CurrentStageID != ds_list_find_value(selectionList,selection)) switchStage = true;
		global.KSW_CurrentStageID = ds_list_find_value(selectionList,selection);
	}
	else
	{
		if ((global.KSW_StageList[ds_list_find_value(selectionList,selection)].price == 0) or (global.KSW_CurrentCoins < global.KSW_StageList[ds_list_find_value(selectionList,selection)].price))
		{
			scr_PlaySfx(snd_KSW_ButtonError);
		}
		else
		{
			scr_PlaySfx(snd_KSW_Coin);
			scr_PlaySfx(snd_KSW_Buy);
			
			global.KSW_CurrentCoins -= global.KSW_StageList[ds_list_find_value(selectionList,selection)].price;
			
			displayedCoins_YOffsetTimer = displayedCoins_YOffsetTimerMax;
			
			global.KSW_UnlockedStageCount += 1;
			global.KSW_StageList[ds_list_find_value(selectionList,selection)].isUnlocked = true;
			
			isCompleted = (global.KSW_UnlockedStageCount >= global.KSW_StageCount);
		}
	}
}