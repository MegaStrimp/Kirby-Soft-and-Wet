///@description KSW - UI - Customize - Pages - Characters - Setup

function scr_KSW_UI_Customize_Pages_Characters_Setup()
{
	#region Initialize Variables
	#region Selection List
	scr_KSW_Menu_Component_CreateSelectionList(global.KSW_CharacterCount);
	#endregion
	
	#region Component Setup
	scr_KSW_Menu_Component_Navigate_Setup(ds_list_size(selectionList));
	#endregion
	
	#region Menu Variables
	playerNum = 0;
	
	isCompleted = (global.KSW_UnlockedCharacterCount >= global.KSW_CharacterCount);
	selectionOffset = 76;
	backgroundX = 0;
	backgroundY = 0;
	backgroundSpd = .1;
	
	selectionIndex = 0;
	selectionSpd = sprite_get_speed(spr_KSW_Menu_Fishbook_Selection) / 60;
	selectionNumber = sprite_get_number(spr_KSW_Menu_Fishbook_Selection);
	
	pageOffset = 0;
	pageOffsetTarget = 0;
	#endregion
	#endregion
}