///@description Set Global Speed Multiplier

function scr_SetGlobalSpeedMultiplier(timeMultTarget,timeMultTimer)
{
	global.speedMultGlobal = timeMultTarget;
	
	with (obj_FrameworkControl)
	{
		speedMultGlobalTimer = timeMultTimer;
	}
}