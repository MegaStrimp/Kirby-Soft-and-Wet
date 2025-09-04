///@description Set Global Freeze Frame

function scr_SetGlobalFreezeFrame(freezeFrameTimerTarget)
{
	global.freezeFrame = true;
	
	with (obj_FrameworkControl)
	{
		freezeFrameTimer = freezeFrameTimerTarget;
	}
}