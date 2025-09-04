///@description Draw GUI Begin

if ((global.shaders) and (!global.applicationSurfaceAutoDraw) and (global.screenPalette != -1)) pal_swap_set(global.screenPalette,global.screenPaletteIndex,false);

#region Hud
if (global.hasHud)
{
	if (hudDrawGUI != -1) script_execute(hudDrawGUI);
}
#endregion

#region Pause AI Draw GUI Begin
if (gamePauseAIDrawGUIBegin != -1) script_execute(gamePauseAIDrawGUIBegin);
#endregion

if ((global.shaders) and (!global.applicationSurfaceAutoDraw) and (global.screenPalette != -1)) pal_swap_reset();