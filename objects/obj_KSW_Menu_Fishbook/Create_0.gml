///@description Create

#region Initialize Variables
#region Component Setup
scr_Component_ButtonInputTimer_Setup(5);
#endregion

#region Menu Variables
playerNum = 0;

selection = 0;
page = 0;
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
calibMode = false;
calibX = 0;
calibY = 0;
hintOffset = 0;
shineIndex = 0;
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
buttonsList_Max = global.KSW_FishCount;
page_Max = floor((buttonsList_Max - 1) / 18);

selectionIndex = 0;
selectionSpd = sprite_get_speed(spr_KSW_Menu_Fishbook_Selection) / 60;
selectionNumber = sprite_get_number(spr_KSW_Menu_Fishbook_Selection);
#endregion
#endregion