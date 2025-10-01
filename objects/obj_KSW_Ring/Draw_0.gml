///@description Draw

#region Variables
var xx = camera_get_view_x(mainView);
var yy = camera_get_view_y(mainView);
#endregion

#region Draw Self
draw_sprite_ext(sprite_index,image_index,xx,yy,1,1,0,c_white,alpha);
#endregion