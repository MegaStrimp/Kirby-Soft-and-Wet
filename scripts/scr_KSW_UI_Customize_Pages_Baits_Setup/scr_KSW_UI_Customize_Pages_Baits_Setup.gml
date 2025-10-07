///@description KSW - UI - Customize - Pages - Baits - Setup

function scr_KSW_UI_Customize_Pages_Baits_Setup()
{
	#region Initialize Variables
	#region Selection List
	scr_KSW_Menu_Component_CreateSelectionList(global.KSW_BaitCount);
	#endregion
	
	#region Component Setup
	scr_KSW_Menu_Component_Navigate_Setup(ds_list_size(selectionList));
	scr_KSW_Menu_Component_SwitchPage_Setup(3,6);
	#endregion
	
	#region Menu Variables
	playerNum = 0;
	
	isCompleted = (global.KSW_UnlockedBaitCount >= global.KSW_BaitCount);
	selectionImageIndex = 0;
	selectionScale = 1;
	backgroundX = 0;
	backgroundY = 0;
	backgroundSpd = .1;
	hintOffset = 0;
	
	drawSurface = -1;
	drawSurface_PixelH = shader_get_uniform(shd_ColoredOutline,"pixelH");
	drawSurface_PixelW = shader_get_uniform(shd_ColoredOutline,"pixelW");
	drawSurface_OutlineColor = shader_get_uniform(shd_ColoredOutline,"outlineColor");
	
	selectionIndex = 0;
	selectionSpd = sprite_get_speed(spr_KSW_Menu_Fishbook_Selection) / 60;
	selectionNumber = sprite_get_number(spr_KSW_Menu_Fishbook_Selection);
	
	baitImageIndex = [];
	for (var i = 0; i < ds_list_size(selectionList); i++)
	{
		baitImageIndex[i] = 0;
	}
	#endregion
	#endregion
}