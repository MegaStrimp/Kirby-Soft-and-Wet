///@description Draw

#region Variables
var xx = camera_get_view_x(mainView);
var yy = camera_get_view_y(mainView);
#endregion

#region Overlay
draw_set_alpha(alpha / 3);
draw_rectangle_colour(xx,yy,xx + global.gameWidth,yy + global.gameHeight,#F20909,#F20909,#A00806,#A00806,false);
draw_set_alpha(1);
#endregion

#region Moon
draw_sprite_ext(spr_KSW_Event_BloodMoon_Moon,0,xx + (global.gameWidth / 2),yy + 32,1,1,0,c_white,alpha / 3);
#endregion