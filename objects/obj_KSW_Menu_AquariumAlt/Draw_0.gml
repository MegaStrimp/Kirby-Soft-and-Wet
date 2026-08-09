///@description Draw

#region Set Font
scribble_font_set_default("fnt_Arial");
#endregion

#region Background
draw_sprite(bg_KSW_Menu_Aquarium_Alt,0,0,0);
#endregion

#region DS
draw_sprite(spr_KSW_Menu_Aquarium_DS,0,0,0);
#endregion

#region Text
if (state > 0) scribble("▯▯▯▯▯▯▯▯▯▯▯▯▯▯▯▯▯▯▯▯▯▯▯▯▯▯▯▯").draw(4,6);
#endregion