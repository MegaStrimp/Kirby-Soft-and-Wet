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
nameSprite = -1;
series = "";
rarity = 0;
phase = KSW_Phases.none;
phaseIconLeft = -1;
phaseIconRight = -1;
isShiny = false;
shineEffectAngle = 0;
backgroundPalette = spr_KSW_UI_CaughtBox_Palette_Locked;

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

escapeTimer = -1;
var escapeRng = irandom_range(0,666);
if (escapeRng == 0) escapeTimer = 15;

weirdIcons = [];
array_insert(weirdIcons,array_length(weirdIcons),spr_KSW_Player_Kirby_Ready);
array_insert(weirdIcons,array_length(weirdIcons),spr_KSW_UI_Customize_CharacterIcon_Kirby);
array_insert(weirdIcons,array_length(weirdIcons),spr_KSW_UI_NotifBox_Image_AllHail);
array_insert(weirdIcons,array_length(weirdIcons),spr_KSW_Particle_Eternity);
array_insert(weirdIcons,array_length(weirdIcons),spr_KSW_Particle_Gloom);
if (global.KSW_EnteredAquariumAlt) array_insert(weirdIcons,array_length(weirdIcons),spr_KSW_Menu_Aquarium_Fish);

weirdIconTimer = -1;
weirdIconIndex = 0;
var weirdIconRng = irandom_range(0,222 - (global.KSW_EnteredAquariumAlt * 66));
if (weirdIconRng == 0)
{
	weirdIconIndex = choose(0,array_length(weirdIcons) - 1);
	weirdIconTimer = 15;
}

endTimer = 60;
#endregion
#endregion