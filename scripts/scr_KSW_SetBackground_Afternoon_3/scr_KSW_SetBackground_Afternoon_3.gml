///@description KSW - Set Background - Afternoon - 3

function scr_KSW_SetBackground_Afternoon_3()
{
	if (backgroundSetup)
	{
		backgroundAnchor = layer_get_depth(layer_get_id("Background"));
		
		var arrayIndex = 0;
		backgroundLayer[arrayIndex] = layer_create(backgroundAnchor - (arrayIndex + 1));
		backgroundIndex[arrayIndex] = layer_background_create(backgroundLayer[arrayIndex],bg_KSW_Afternoon_3);
		
		backgroundSetup = false;
	}
}