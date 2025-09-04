///@description UI - Set Hud

function scr_UI_SetHud(targetHudScript)
{
	with (obj_FrameworkControl)
	{
		#region Reset Variables
		global.hudCameraXOffset = 0;
		global.hudCameraYOffset = 0;
		#endregion
		
		#region Hud Setup
		script_execute(targetHudScript);
		#endregion
	}
}