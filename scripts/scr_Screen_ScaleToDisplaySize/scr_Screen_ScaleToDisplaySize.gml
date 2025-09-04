///@description Screen - Scale To Screen Size

function scr_Screen_ScaleToScreenSize()
{
	var finalScale = 1;
	
	var shortestScreenDisplay = min(display_get_width(),display_get_height());
	var shortestGameDisplay = min(global.gameWidth,global.gameHeight);
	
	finalScale = shortestScreenDisplay / shortestGameDisplay;
	
	return finalScale;
}