///@description KSW - Menu - Fishbook - Sort - Default

function scr_KSW_Menu_Fishbook_Sort_Default()
{
	scr_KSW_UI_StealthTutorial_Create_Custom(global.gameWidth / 2,global.gameHeight / 2,"Sorted By Default",60,.2,fa_center,fa_middle);
	
	scr_KSW_Menu_Component_CreateSelectionList(global.KSW_FishCount);
}