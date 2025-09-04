///@description Draw

#region Mask
scr_DrawMask_Begin();
scr_DrawMask_Mask(spr_KSW_UI_CaughtBox_Mask);

#region Texture
for (var ix = 0; ix < 3; ix++)
{
	for (var iy = 0; iy < 3; iy++)
	{
		if ((global.shaders) and (backgroundPalette != -1)) pal_swap_set(backgroundPalette,1,false);
		draw_sprite(spr_KSW_UI_CaughtBox_Texture,0,x + backgroundX + ((ix - 2) * 50),y + backgroundY + ((iy - 2) * 40));
		if ((global.shaders) and (backgroundPalette != -1)) pal_swap_reset();
	}
}
#endregion

#region Shine
if (isShiny) draw_sprite(spr_KSW_UI_CaughtBox_Shine,shineIndex,x,y);
#endregion

#region Sprite
if (spriteIndex != -1)
{
	if ((global.shaders) and (spritePalette != -1)) pal_swap_set(spritePalette,isShiny,false);
	draw_sprite(spriteIndex,imageIndex,x + 14 + spriteXOffset,y + 14 + spriteYOffset);
	if ((global.shaders) and (spritePalette != -1)) pal_swap_reset();
}
#endregion

scr_DrawMask_End();
#endregion

#region Box
draw_sprite(spr_KSW_UI_CaughtBox_Box,isShiny,x,y);
#endregion

#region Rarity
for (var i = 0; i < rarity; i++)
{
	draw_sprite(spr_KSW_UI_CaughtBox_Star,0,x - 2 + (12 * i),y + 22);
}
#endregion

#region Phase
var phaseSprite = -1;

if (isTenna)
{
	phaseSprite = spr_KSW_Menu_TitleScreen_Phase_TVTime;
}
else
{
	switch (phase)
	{
		case KSW_Phases.day:
		phaseSprite = spr_KSW_Menu_TitleScreen_Phase_Day;
		break;
		
		case KSW_Phases.afternoon:
		phaseSprite = spr_KSW_Menu_TitleScreen_Phase_Afternoon;
		break;
		
		case KSW_Phases.night:
		phaseSprite = spr_KSW_Menu_TitleScreen_Phase_Night;
		break;
	}
}

if (phaseSprite != -1) draw_sprite(phaseSprite,0,x + 17,y - 6)
#endregion

#region New
if (isNew) draw_sprite(spr_KSW_Particle_New,newIndex,x - 1,y - 2);
#endregion