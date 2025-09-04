///@description Draw

#region Draw Self
if (global.shaders) pal_swap_set(spr_KSW_WanderingFish_Pal_Normal,global.KSW_CurrentPhase - 1,false);
draw_self();
if (global.shaders) pal_swap_reset();
#endregion