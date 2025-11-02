///@description KSW - Set Background - Grass Beach - Day - 2

function scr_KSW_SetBackground_GrassBeach_Day_2()
{
	if (backgroundSetup)
	{
		backgroundAnchor = layer_get_depth(layer_get_id("Background"));
		
		var arrayIndex = 0;
		backgroundLayer[arrayIndex] = layer_create(backgroundAnchor - (arrayIndex + 1));
		backgroundIndex[arrayIndex] = layer_background_create(backgroundLayer[arrayIndex],bg_KSW_GrassBeach_Day_2);
		
		backgroundSetup = false;
	}
}