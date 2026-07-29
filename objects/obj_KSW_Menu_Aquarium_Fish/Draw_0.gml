///@description Draw

#region Draw Self
if ((global.shaders) and (palSprite != -1)) pal_swap_set(palSprite,isShiny,false);
draw_self();
if ((global.shaders) and (palSprite != -1)) pal_swap_reset();
#endregion