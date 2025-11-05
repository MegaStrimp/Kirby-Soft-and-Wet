///@description KSW - Set Background - Cream Crevasse - Day - 1

function scr_KSW_SetBackground_CreamCrevasse_Day_1()
{
	if (backgroundSetup)
	{
		backgroundAnchor = layer_get_depth(layer_get_id("Background"));
		
		var arrayIndex = 0;
		backgroundLayer[arrayIndex] = layer_create(backgroundAnchor - (arrayIndex + 1));
		backgroundIndex[arrayIndex] = layer_background_create(backgroundLayer[arrayIndex],bg_KSW_CreamCrevasse_Day_1);
		arrayIndex += 1;
		backgroundAnchor = layer_get_depth(layer_get_id("Player"));
		backgroundLayer[arrayIndex] = layer_create(backgroundAnchor - (arrayIndex + 1));
		backgroundIndex[arrayIndex] = layer_background_create(backgroundLayer[arrayIndex],spr_KSW_Layout_CreamCrevasse_Overlay);
		layer_background_htiled(backgroundIndex[arrayIndex],true);
		layer_background_vtiled(backgroundIndex[arrayIndex],true);
		arrayIndex += 1;
		backgroundLayer[arrayIndex] = layer_create(backgroundAnchor - (arrayIndex + 1));
		backgroundIndex[arrayIndex] = layer_background_create(backgroundLayer[arrayIndex],spr_KSW_Layout_CreamCrevasse_Overlay);
		layer_background_htiled(backgroundIndex[arrayIndex],true);
		layer_background_vtiled(backgroundIndex[arrayIndex],true);
		
		backgroundSetup = false;
	}
	
	var hsp = .5;
	var vsp = .3;
	
	var arrayIndex = 1;
	layer_x(backgroundLayer[arrayIndex],layer_get_x(backgroundLayer[arrayIndex]) + hsp);
	layer_y(backgroundLayer[arrayIndex],layer_get_y(backgroundLayer[arrayIndex]) + vsp);
	arrayIndex += 1;
	layer_x(backgroundLayer[arrayIndex],layer_get_x(backgroundLayer[arrayIndex]) - hsp);
	layer_y(backgroundLayer[arrayIndex],layer_get_y(backgroundLayer[arrayIndex]) + vsp);
}