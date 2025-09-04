///@description End Step

#region Variables
if (grounded) and (hasJumped == 1) hasJumped = -1;
if (hasJumped == 0) hasJumped = 1;
#endregion

#region End Step
if (playerEndStep != -1) script_execute(playerEndStep);
#endregion

#region Clamp To View
if (clampToView)
{
	x = clamp(x,camera_get_view_x(mainView),camera_get_view_x(mainView) + camera_get_view_width(mainView));
	y = clamp(y,camera_get_view_y(mainView),camera_get_view_y(mainView) + camera_get_view_height(mainView));
}
#endregion

#region Clamp To Room
if (clampToRoom)
{
	x = clamp(x,0,room_width);
	y = max(0,y);
}
#endregion