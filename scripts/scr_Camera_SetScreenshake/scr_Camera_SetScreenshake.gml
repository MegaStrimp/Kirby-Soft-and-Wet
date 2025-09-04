///@description Camera - Set Screenshake

function scr_Camera_SetScreenshake(shakeXVal,shakeYVal)
{
	with (global.camera)
	{
		shakeX = shakeXVal;
		shakeY = shakeYVal;
	}
}