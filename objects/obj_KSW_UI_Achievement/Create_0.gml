///@description Create

#region Initialize Variables
state = 0;
stateTimer = 300;

bubbleTimerCount = irandom_range(3,6);
bubbleTimer = 0;
bubbleTimerMax = 4;
wave = 0;
boxY = -50;
targetBoxY = 0;
soundPlayed = false;

drawSurface = -1;
drawSurface_PixelH = shader_get_uniform(shd_ColoredOutline,"pixelH");
drawSurface_PixelW = shader_get_uniform(shd_ColoredOutline,"pixelW");
drawSurface_OutlineColor = shader_get_uniform(shd_ColoredOutline,"outlineColor");

name = "";
description = "";
icon = spr_KSW_Achievement_Icon_Default;
isHidden = false;
#endregion