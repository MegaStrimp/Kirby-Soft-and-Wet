///@description Draw

if ((global.shaders) and (palSprite != -1)) pal_swap_set(palSprite,palIndex,false);
draw_self();
if ((global.shaders) and (palSprite != -1)) pal_swap_reset();