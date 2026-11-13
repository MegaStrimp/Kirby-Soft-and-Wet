///@description Draw

#region Variables
var xx = camera_get_view_x(mainView);
var yy = camera_get_view_y(mainView);
#endregion

#region Text
scribble(title + "\n" + description).align(fa_center,fa_middle).wrap(200).draw(xx + (global.gameWidth / 2),yy + (global.gameHeight / 2));
#endregion