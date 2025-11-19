///@description KSW - UI - Customize - Pages - Spray Paints - Select

function scr_KSW_UI_Customize_Pages_SprayPaints_Select()
{
	if (ds_list_find_value(selectionList,selection) == -1)
	{
		scr_PlaySfx(snd_KSW_ButtonYes);
		
		global.KSW_PlayerEquippedSprayPaintShuffle[playerNum] = true;
	}
	else
	{
		if (global.KSW_CharacterList[global.playerCharacter[playerNum]].sprayPaints[ds_list_find_value(selectionList,selection)].isUnlocked)
		{
			scr_PlaySfx(snd_KSW_ButtonYes);
			
			global.KSW_PlayerEquippedSprayPaintShuffle[playerNum] = false;
			global.KSW_PlayerEquippedSprayPaintID[global.playerCharacter[playerNum]][playerNum] = ds_list_find_value(selectionList,selection);
		}
		else
		{
			if ((global.KSW_CharacterList[global.playerCharacter[playerNum]].sprayPaints[ds_list_find_value(selectionList,selection)].price == 0) or (global.KSW_CurrentCoins < global.KSW_CharacterList[global.playerCharacter[playerNum]].sprayPaints[ds_list_find_value(selectionList,selection)].price))
			{
				scr_PlaySfx(snd_KSW_ButtonError);
			}
			else
			{
				scr_PlaySfx(snd_KSW_Coin);
				scr_PlaySfx(snd_KSW_Buy);
				
				var finalPrice = global.KSW_CharacterList[global.playerCharacter[playerNum]].sprayPaints[ds_list_find_value(selectionList,selection)].price;
				global.KSW_CurrentCoins -= finalPrice;
				with (obj_KSW_GameController) displayedCoins -= finalPrice;
				
				displayedCoins_YOffsetTimer = displayedCoins_YOffsetTimerMax;
				
				global.KSW_UnlockedSprayPaintCount[global.playerCharacter[playerNum]] += 1;
				global.KSW_CharacterList[global.playerCharacter[playerNum]].sprayPaints[ds_list_find_value(selectionList,selection)].isUnlocked = true;
				
				isCompleted = (global.KSW_UnlockedSprayPaintCount[global.playerCharacter[playerNum]] >= global.KSW_SprayPaintCount[global.playerCharacter[playerNum]]);
			}
		}
	}
}