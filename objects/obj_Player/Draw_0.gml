///@description Draw

#region Shake
shakeXFinal = 0;
shakeYFinal = 0;

if (!localPause)
{
	shakeXFinal = floor(choose(-shakeX,shakeX));
	shakeYFinal = floor(choose(-shakeY,shakeY));
	
	shakeX = max(0,shakeX - .1);
	shakeY = max(0,shakeY - .1);
}
#endregion

#region Draw
if (playerDraw != -1)
{
	script_execute(playerDraw);
}
else
{
	if (sprite_index != -1)
	{
		if ((global.shaders) and (palSprite != -1)) pal_swap_set(palSprite,palIndex,false);
		draw_sprite_ext(sprite_index,image_index,x + shakeXFinal + drawXOffset,y + shakeYFinal + drawYOffset,image_xscale,image_yscale,image_angle,image_blend,image_alpha);
		if ((global.shaders) and (palSprite != -1)) pal_swap_reset();
	}
}
#endregion
