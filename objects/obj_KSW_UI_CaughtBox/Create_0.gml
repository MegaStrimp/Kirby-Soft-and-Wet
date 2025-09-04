///@description Create

#region Initialize Variables
#region Box Variables
xTarget = 4;
yTarget = y;
spriteIndex = -1;
imageIndex = 0;
spritePalette = -1;
spriteXOffset = 0;
spriteYOffset = 0;
rarity = 0;
phase = KSW_Phases.none;
isShiny = false;
isTenna = false;
isNew = false;
backgroundX = 0;
backgroundY = 0;
backgroundSpd = .1;
backgroundPalette = -1;
newIndex = 0;
newSpd = sprite_get_speed(spr_KSW_Particle_New) / 60;
newNumber = sprite_get_number(spr_KSW_Particle_New);
shineIndex = 0;
shineSpd = sprite_get_speed(spr_KSW_UI_CaughtBox_Shine) / 60;
shineNumber = sprite_get_number(spr_KSW_UI_CaughtBox_Shine);
#endregion
#endregion