///@description KSW - Set Background - Cloudy Park - Day - 1

function scr_KSW_SetBackground_CloudyPark_Day_1()
{
	if (backgroundSetup)
	{
		backgroundAnchor = layer_get_depth(layer_get_id("Background"));
		
		var arrayIndex = 0;
		backgroundLayer[arrayIndex] = layer_create(backgroundAnchor - (arrayIndex + 1));
		backgroundIndex[arrayIndex] = layer_background_create(backgroundLayer[arrayIndex],bg_KSW_CloudyPark_Day_1);
		
		backgroundSetup = false;
	}
}