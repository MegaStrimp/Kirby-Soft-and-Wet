///@description KSW - Set Background - Grass Beach - Afternoon - 3

function scr_KSW_SetBackground_GrassBeach_Afternoon_3()
{
	if (backgroundSetup)
	{
		backgroundAnchor = layer_get_depth(layer_get_id("Background"));
		
		var arrayIndex = 0;
		backgroundLayer[arrayIndex] = layer_create(backgroundAnchor - (arrayIndex + 1));
		backgroundIndex[arrayIndex] = layer_background_create(backgroundLayer[arrayIndex],bg_KSW_GrassBeach_Afternoon_3);
		
		backgroundSetup = false;
	}
}