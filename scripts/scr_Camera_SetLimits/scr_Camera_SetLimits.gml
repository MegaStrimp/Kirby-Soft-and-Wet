///@description Camera - Set Screenshake

function scr_Camera_SetLimits(x1Limit,x2Limit,y1Limit,y2Limit)
{
	with (global.camera)
	{
		cameraX1Limit = x1Limit;
		cameraX2Limit = x2Limit;
		cameraY1Limit = y1Limit;
		cameraY2Limit = y2Limit;
	}
}