///@description Draw

#region Set Font
scribble_font_set_default("fnt_Advance");
#endregion

#region Overlay
draw_set_alpha(.5);
draw_rectangle_color(camera_get_view_x(mainView),camera_get_view_y(mainView),camera_get_view_x(mainView) + global.gameWidth,camera_get_view_y(mainView) + global.gameHeight,c_black,c_black,c_black,c_black,false);
draw_set_alpha(1);
#endregion

#region Draw Script
if (currentDrawScript != -1) script_execute(currentDrawScript);
#endregion