///@description KSW - Set Background - Night - 4

function scr_KSW_SetBackground_Night_4()
{
	if (backgroundSetup)
	{
		backgroundAnchor = layer_get_depth(layer_get_id("Background"));
		
		var arrayIndex = 0;
		backgroundLayer[arrayIndex] = layer_create(backgroundAnchor - (arrayIndex + 1));
		backgroundIndex[arrayIndex] = layer_background_create(backgroundLayer[arrayIndex],bg_KSW_Night_4);
		
		backgroundSetup = false;
	}
}