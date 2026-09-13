///@description Draw

if (isSilhouette)
{
	gpu_set_fog(true,c_black,0,0);
}
else
{
	if ((global.shaders) and (palSprite != -1)) pal_swap_set(palSprite,palIndex,false);
}
draw_self();

if (isSilhouette)
{
	gpu_set_fog(false,c_black,0,0);
}
else
{
	if ((global.shaders) and (palSprite != -1)) pal_swap_reset();
}