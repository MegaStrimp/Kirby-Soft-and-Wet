///@description Create

#region Initialize Variables
#region Component Setup
scr_Component_ButtonInputTimer_Setup(5);
#endregion

#region Gameplay Variables
playerNum = 0;

spriteIndex = -1;
imageIndex = 0;
spritePalette = -1;
spriteXOffset = 0;
spriteYOffset = 0;
name = "";
rarity = 0;
phase = KSW_Phases.none;
isShiny = false;
backgroundPalette = spr_KSW_UI_CaughtBox_Palette_Locked;
isTenna = false;

drawSurface = -1;
drawSurface_PixelH = shader_get_uniform(shd_ColoredOutline,"pixelH");
drawSurface_PixelW = shader_get_uniform(shd_ColoredOutline,"pixelW");
drawSurface_OutlineColor = shader_get_uniform(shd_ColoredOutline,"outlineColor");

backgroundX = 0;
backgroundY = 0;
backgroundSpd = .1;
alpha = 0;
alphaTarget = 1;
starCount = 0;
starTimer = -1;
starTimerMax = 5;
endTimer = 60;
#endregion
#endregion