///@description Pause - Set Pause

function scr_Pause_SetPause(targetPauseScript)
{
	with (obj_FrameworkControl)
	{
		script_execute(targetPauseScript);
	}
}