///@description Post-Draw

#region Border Art
if (global.borderArt_Sprite != -1)
{
	draw_sprite_stretched(global.borderArt_Sprite,0,0,0,window_get_width(),window_get_height());
}
#endregion

#region Screen Palette
if (!global.applicationSurfaceAutoDraw)
{
	if ((global.shaders) and (global.screenPalette != -1)) pal_swap_set(global.screenPalette,global.screenPaletteIndex,false);
	
	var screenX = 0;
	var screenY = 0;
	var screenWidth = global.gameWidth * global.windowScale;
	var screenHeight = global.gameHeight * global.windowScale;
	if (global.fullscreen)
	{
		var newScale = scr_Screen_ScaleToScreenSize();
		screenWidth = global.gameWidth * newScale;
		screenHeight = global.gameHeight * newScale;
		screenX = (display_get_width() - screenWidth) / 2;
		screenY = (display_get_height() - screenHeight) / 2;
	}
	
	draw_surface_stretched(application_surface,screenX,screenY,screenWidth,screenHeight);
	if ((global.shaders) and (global.screenPalette != -1)) pal_swap_reset();
}
#endregion