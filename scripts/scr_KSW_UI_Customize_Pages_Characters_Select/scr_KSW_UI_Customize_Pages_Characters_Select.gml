///@description KSW - UI - Customize - Pages - Characters - Select

function scr_KSW_UI_Customize_Pages_Characters_Select()
{
	if (global.KSW_CharacterList[ds_list_find_value(selectionList,selection)].isUnlocked)
	{
		scr_PlaySfx(snd_KSW_ButtonYes);
		
		var switchCharacter = (global.playerCharacter[playerNum] != ds_list_find_value(selectionList,selection));
		
		global.playerCharacter[playerNum] = ds_list_find_value(selectionList,selection);
		
		if (switchCharacter)
		{
			var targetSetupScript = global.KSW_CharacterList[global.playerCharacter[playerNum]].setupScript;
			if (targetSetupScript != undefined) script_execute(targetSetupScript);
		}
	}
	else
	{
		if ((global.KSW_CharacterList[ds_list_find_value(selectionList,selection)].price == 0) or (global.KSW_CurrentCoins < global.KSW_CharacterList[ds_list_find_value(selectionList,selection)].price))
		{
			scr_PlaySfx(snd_KSW_ButtonError);
		}
		else
		{
			scr_PlaySfx(snd_KSW_Coin);
			scr_PlaySfx(snd_KSW_Buy);
			
			var finalPrice = global.KSW_CharacterList[ds_list_find_value(selectionList,selection)].price;
			global.KSW_CurrentCoins -= finalPrice;
			with (obj_KSW_GameController) displayedCoins -= finalPrice;
			
			displayedCoins_YOffsetTimer = displayedCoins_YOffsetTimerMax;
			
			global.KSW_UnlockedCharacterCount += 1;
			global.KSW_CharacterList[ds_list_find_value(selectionList,selection)].isUnlocked = true;
			
			isCompleted = (global.KSW_UnlockedCharacterCount >= global.KSW_CharacterCount);
		}
	}
}