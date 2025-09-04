///@description Camera - Set State

function scr_Camera_SetState(targetState)
{
	with (global.camera)
	{
		cameraState = targetState;
		cameraState_Setup = true;
	}
}