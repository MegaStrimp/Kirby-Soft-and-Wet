///@description Begin Step

#region Variables
var cameraXOffsetFinal = cameraXOffset + global.hudCameraXOffset;
var cameraYOffsetFinal = cameraYOffset + global.hudCameraYOffset;
#endregion

#region Begin Step
if (playerBeginStep != -1) script_execute(playerBeginStep);
#endregion

#region Camera
if (playerNum == 0) scr_Camera_UpdateOffsets(cameraXOffsetFinal,cameraYOffsetFinal);
#endregion