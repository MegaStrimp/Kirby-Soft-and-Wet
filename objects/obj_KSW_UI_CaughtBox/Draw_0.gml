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
		draw_sprite(spr_KSW_UI_CaughtBox_Texture,0,x - (flag_ThrowCoin * 2) + backgroundX + ((ix - 2) * 50),y + backgroundY + ((iy - 2) * 40));
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
	draw_sprite(spriteIndex,imageIndex,x - (flag_ThrowCoin * 2) + 14 + spriteXOffset,y + 14 + spriteYOffset);
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
	draw_sprite(spr_KSW_UI_CaughtBox_Star,0,x - (flag_ThrowCoin * 2) - 2 + (12 * i),y + 22);
}
#endregion

#region Phase
if (phaseIconLeft != -1) draw_sprite(phaseIconLeft,0,x - (flag_ThrowCoin * 2) - 8,y - 6)
if (phaseIconRight != -1) draw_sprite(phaseIconRight,0,x - (flag_ThrowCoin * 2) + 17,y - 6)
#endregion

#region New
if (isNew) draw_sprite(spr_KSW_Particle_New,newIndex,x - (flag_ThrowCoin * 2) - 1,y - 2);
#endregion