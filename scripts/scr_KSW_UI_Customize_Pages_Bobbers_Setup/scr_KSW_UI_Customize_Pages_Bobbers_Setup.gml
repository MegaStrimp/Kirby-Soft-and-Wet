///@description KSW - UI - Customize - Pages - Bobbers - Setup

function scr_KSW_UI_Customize_Pages_Bobbers_Setup()
{
	#region Initialize Variables
	#region Selection List
	scr_KSW_Menu_Component_CreateSelectionList(global.KSW_BobberCount,true);
	
	for (var i = 0; i < ds_list_size(selectionList); i++)
	{
		if (ds_list_find_value(selectionList,i) != -1)
		{
			if ((global.KSW_BobberList[ds_list_find_value(selectionList,i)].isHidden) and (!global.KSW_BobberList[ds_list_find_value(selectionList,i)].isUnlocked))
			{
				ds_list_delete(selectionList,i);
				i--;
			}
		}
	}
	#endregion
	
	#region Component Setup
	scr_KSW_Menu_Component_Navigate_Setup(ds_list_size(selectionList));
	scr_KSW_Menu_Component_SwitchPage_Setup(3,6);
	#endregion
	
	#region Menu Variables
	playerNum = 0;
	
	isCompleted = (global.KSW_UnlockedBobberCount >= global.KSW_VisibleBobberCount);
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
	
	bobberImageIndex = [];
	for (var i = 0; i < ds_list_size(selectionList); i++)
	{
		bobberImageIndex[i] = 0;
	}
	#endregion
	#endregion
}