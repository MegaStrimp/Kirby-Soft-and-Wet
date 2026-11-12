///@description Draw

#region Variables
var xx = camera_get_view_x(mainView);
var yy = camera_get_view_y(mainView);
#endregion

#region Overlay
draw_set_alpha(alpha / 3);
draw_rectangle_colour(xx,yy,xx + global.gameWidth,yy + global.gameHeight,#FFB45E,#FFB45E,#DD9E52,#DD9E52,false);
draw_set_alpha(1);
#endregion