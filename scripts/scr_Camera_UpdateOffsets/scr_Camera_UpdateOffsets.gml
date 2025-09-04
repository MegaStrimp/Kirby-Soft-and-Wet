///@description Camera - Update Offsets

function scr_Camera_UpdateOffsets(xOffsetTarget,yOffsetTarget)
{
	with (global.camera)
	{
		xOffset = xOffsetTarget;
		yOffset = yOffsetTarget;
	}
}