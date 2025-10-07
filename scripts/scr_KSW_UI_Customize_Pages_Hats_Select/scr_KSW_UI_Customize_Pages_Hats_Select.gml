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
			global.KSW_PlayerEquippedHatID[global.playerCharacter[playerNum]][playerNum] = ds_list_find_value(selectionList,selection);
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
				
				global.KSW_CurrentCoins -= global.KSW_CharacterList[global.playerCharacter[playerNum]].hats[ds_list_find_value(selectionList,selection)].price;
				
				displayedCoins_YOffsetTimer = displayedCoins_YOffsetTimerMax;
				
				global.KSW_CharacterList[global.playerCharacter[playerNum]].hats[ds_list_find_value(selectionList,selection)].isUnlocked = true;
			}
		}
	}
}