///@description Draw End

#region Text
if (isBig)
{
	if (global.shaders) pal_swap_set(global.KSW_BubblePalette,1,false);
	draw_sprite_ext(sprText,0,x,y + 14 + textWave,1,1,textWave,c_white,1);
	if (global.shaders) pal_swap_reset();
}
#endregion