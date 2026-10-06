///@description Draw

#region Draw Self
draw_self();
#endregion

#region Bubble
if (global.shaders) pal_swap_set(global.KSW_BubblePalette,1,false);
draw_sprite(sprBubble,image_index,x,y);
if (global.shaders) pal_swap_reset();
#endregion