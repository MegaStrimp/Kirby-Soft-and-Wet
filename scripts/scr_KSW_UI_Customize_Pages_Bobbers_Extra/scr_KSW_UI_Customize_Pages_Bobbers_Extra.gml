///@description KSW - UI - Customize - Pages - Bobbers - Extra

function scr_KSW_UI_Customize_Pages_Bobbers_Extra()
{
	if ((ds_list_find_value(selectionList,selection) != -1) and (global.KSW_BobberList[ds_list_find_value(selectionList,selection)].shinyIsUnlocked))
    {
		bobberIsShiny[selection] = !bobberIsShiny[selection];
		
		if (ds_list_find_value(selectionList,selection) == global.KSW_EquippedBobberID[playerNum])
		{
			global.KSW_EquippedBobberIsShiny[playerNum] = bobberIsShiny[selection];
		}
	}
}