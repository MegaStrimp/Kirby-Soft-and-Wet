///@description KSW - UI - Customize - Pages - Bobbers - Setup

function scr_KSW_UI_Customize_Pages_Bobbers_Setup()
{
	#region Initialize Variables
	#region Component Setup
	scr_KSW_Menu_Component_Navigate_Setup(global.KSW_BobberCount);
	scr_KSW_Menu_Component_SwitchPage_Setup(3,6);
	#endregion
	
	#region Menu Variables
	playerNum = 0;
	
	isCompleted = (global.KSW_UnlockedBobberCount >= global.KSW_BobberCount);
	selectionImageIndex = 0;
	selectionScale = 1;
	selectionStarCount = 0;
	selectionStarTimer = -1;
	selectionStarTimerMax = 5;
	backgroundX = 0;
	backgroundY = 0;
	backgroundSpd = .1;
	hintOffset = 0;
	
	drawSurface = -1;
	drawSurface_PixelH = shader_get_uniform(shd_ColoredOutline,"pixelH");
	drawSurface_PixelW = shader_get_uniform(shd_ColoredOutline,"pixelW");
	drawSurface_OutlineColor = shader_get_uniform(shd_ColoredOutline,"outlineColor");
	
	bobberImageIndex = [];
	for (var i = 0; i < global.KSW_FishCount; i++)
	{
		bobberImageIndex[i] = 0;
	}
	
	selectionIndex = 0;
	selectionSpd = sprite_get_speed(spr_KSW_Menu_Fishbook_Selection) / 60;
	selectionNumber = sprite_get_number(spr_KSW_Menu_Fishbook_Selection);
	#endregion
	#endregion
}