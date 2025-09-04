///@description Camera - Set Background

function scr_Camera_SetBackground(backgroundStateTarget)
{
	with (global.camera)
	{
		backgroundSetup = true;
		backgroundState = backgroundStateTarget;
	}
}