///@description Create

#region Initialize Variables
#region Component Setup
scr_KSW_Menu_Component_Navigate_Setup(global.KSW_FishCount);
scr_KSW_Menu_Component_SwitchPage_Setup(3,6);
scr_Component_ButtonInputTimer_Setup(5);
#endregion

#region Menu Variables
playerNum = 0;

selectionList = -1;
isZoomed = false;
isCompleted = (global.KSW_CaughtUniqueFishCount >= global.KSW_FishCount);
zoomAlpha = isZoomed;
selectionImageIndex = 0;
selectionScale = 1;
selectionStarCount = 0;
selectionStarTimer = -1;
selectionStarTimerMax = 5;
backgroundX = 0;
backgroundY = 0;
backgroundSpd = .1;
hintOffset = 0;
shineIndex = 0;
shineEffectAngle = 0;
shineSpd = sprite_get_speed(spr_KSW_UI_CaughtBox_Shine) / 60;
shineNumber = sprite_get_number(spr_KSW_UI_CaughtBox_Shine);

drawSurface = -1;
drawSurface_PixelH = shader_get_uniform(shd_ColoredOutline,"pixelH");
drawSurface_PixelW = shader_get_uniform(shd_ColoredOutline,"pixelW");
drawSurface_OutlineColor = shader_get_uniform(shd_ColoredOutline,"outlineColor");

fishIsShiny = [];
fishImageIndex = [];
for (var i = 0; i < global.KSW_FishCount; i++)
{
	fishIsShiny[i] = false;
	fishImageIndex[i] = 0;
}

selectionIndex = 0;
selectionSpd = sprite_get_speed(spr_KSW_Menu_Fishbook_Selection) / 60;
selectionNumber = sprite_get_number(spr_KSW_Menu_Fishbook_Selection);

scr_KSW_Menu_Component_CreateSelectionList(global.KSW_FishCount);

scr_KSW_Menu_Fishbook_CalibMode_Setup();
#endregion
#endregion