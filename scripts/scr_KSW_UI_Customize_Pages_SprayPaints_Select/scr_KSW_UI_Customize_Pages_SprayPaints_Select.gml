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
			if (global.KSW_CharacterList[global.playerCharacter[playerNum]].sprayPaints[ds_list_find_value(selectionList,selection)].price == 0)
			{
				scr_PlaySfx(snd_KSW_ButtonError);
			}
			else
			{
				//BUY
			}
		}
	}
}