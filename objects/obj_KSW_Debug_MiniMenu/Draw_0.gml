///@description Draw

#region Variables
var xx = xStart + camera_get_view_x(mainView);
var yy = yStart + camera_get_view_y(mainView);
#endregion

#region Set Font
scribble_font_set_default("fnt_Advance_Small");
#endregion

#region Overlay
draw_set_alpha(.2);
draw_rectangle_color(camera_get_view_x(mainView),camera_get_view_y(mainView),camera_get_view_x(mainView) + global.gameWidth,camera_get_view_y(mainView) + global.gameHeight,c_black,c_black,c_black,c_black,false);
draw_set_alpha(1);
#endregion

#region Background
draw_roundrect_color(xx,yy,xx + 86,yy + 54,#633EC1,#637CC1,false);
draw_roundrect_color(xx,yy,xx + 86,yy + 54,#D6C9FF,#D6C9FF,true);
#endregion

#region Page Title
scribble_font_set_default("fnt_Advance");
scribble("Red " + string(1)).align(fa_center).draw(xx + 43,yy - 8);
#endregion