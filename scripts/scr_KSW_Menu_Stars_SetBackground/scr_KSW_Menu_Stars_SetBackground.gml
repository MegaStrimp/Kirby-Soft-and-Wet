///@description KSW - Menu - Stars - Set Background

function scr_KSW_Menu_Stars_SetBackground()
{
	if (backgroundSetup)
	{
		backgroundAnchor = layer_get_depth(layer_get_id("Background"));
		
		var arrayIndex = 0;
		backgroundLayer[arrayIndex] = layer_create(backgroundAnchor - (arrayIndex + 1));
		backgroundIndex[arrayIndex] = layer_background_create(backgroundLayer[arrayIndex],bg_KSW_Menu_Stars);
		
		backgroundSetup = false;
	}
	
	var arrayIndex = 0;
	layer_background_htiled(backgroundIndex[arrayIndex],true);
	layer_background_vtiled(backgroundIndex[arrayIndex],true);
}