///@description Screen - Setup

function scr_Screen_Setup(viewWidth,viewHeight,viewScale)
{
	#region Set Screen Variables
	global.gameWidth = viewWidth;
	global.gameHeight = viewHeight;
	global.windowScale = viewScale;
	#endregion
	
	#region Set Window Size
	window_set_size(viewWidth * viewScale,viewHeight * viewScale);
	#endregion
	
	#region Gui Size
	display_set_gui_size(viewWidth,viewHeight);
	#endregion
	
	#region Resize Surface
	surface_resize(application_surface,viewWidth,viewHeight);
	//surface_resize(application_surface,global.gameWidth * viewScale,global.gameHeight * viewScale);
	#endregion
	
	#region Window Center
	window_center();
	#endregion
	
	#region Display Reset
	display_reset(0,false);
	#endregion
}