///@description End Step

#region Camera View Size
camera_set_view_size(mainView,global.gameWidth,global.gameHeight);
#endregion

#region Shake
scr_Camera_Shake();
#endregion

#region Camera Setup
if (isActive)
{
	if (cameraState != -1) script_execute(cameraState);
}
#endregion

#region Background Control
if (backgroundState != -1) script_execute(backgroundState);
#endregion