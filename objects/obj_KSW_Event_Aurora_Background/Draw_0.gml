///@description Draw

#region Variables
var xx = camera_get_view_x(mainView);
var yy = camera_get_view_y(mainView);
#endregion

#region Overlay
draw_set_alpha(alpha / 3);
draw_rectangle_colour(xx,yy,xx + global.gameWidth,yy + global.gameHeight,#00296C,#00296C,#00183F,#00183F,false);
draw_set_alpha(1);
#endregion

#region Aurora
draw_sprite_ext(spr_KSW_Event_Aurora_Aurora,0,xx,yy,1,1,0,c_white,alpha / 3);
#endregion