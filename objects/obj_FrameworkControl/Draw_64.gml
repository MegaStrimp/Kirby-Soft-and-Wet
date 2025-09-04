///@description Draw GUI

#region Pause
if (global.gamePause)
{
	#region Pause AI Draw GUI
	if (gamePauseAIDrawGUI != -1) script_execute(gamePauseAIDrawGUI);
	#endregion
}
#endregion