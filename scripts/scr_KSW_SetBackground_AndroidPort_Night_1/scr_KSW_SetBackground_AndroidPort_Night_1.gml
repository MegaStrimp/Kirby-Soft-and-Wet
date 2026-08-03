///@description KSW - Set Background - Android Port - Night - 1

function scr_KSW_SetBackground_AndroidPort_Night_1()
{
	if (backgroundSetup)
	{
		backgroundAnchor = layer_get_depth(layer_get_id("Background"));
		
		var arrayIndex = 0;
		backgroundLayer[arrayIndex] = layer_create(backgroundAnchor - (arrayIndex + 1));
		backgroundIndex[arrayIndex] = layer_background_create(backgroundLayer[arrayIndex],bg_KSW_AndroidPort_Night_1);
		arrayIndex += 1;
		backgroundLayer[arrayIndex] = layer_create(backgroundAnchor - (arrayIndex + 1));
		backgroundIndex[arrayIndex] = layer_background_create(backgroundLayer[arrayIndex],bg_KSW_AndroidPort_Night_1_Decal_1);
		backgroundX[arrayIndex] = 0;
		layer_background_htiled(backgroundIndex[arrayIndex],true);
		layer_background_vtiled(backgroundIndex[arrayIndex],true);
		arrayIndex += 1;
		backgroundLayer[arrayIndex] = layer_create(backgroundAnchor - (arrayIndex + 1));
		backgroundIndex[arrayIndex] = layer_background_create(backgroundLayer[arrayIndex],bg_KSW_AndroidPort_Night_1_Decal_2);
		backgroundX[arrayIndex] = 0;
		layer_background_htiled(backgroundIndex[arrayIndex],true);
		layer_background_vtiled(backgroundIndex[arrayIndex],true);
		
		backgroundSetup = false;
	}
	
	var bgWidth = sprite_get_width(bg_KSW_AndroidPort_Night_1_Decal_1);
	
	var arrayIndex = 0;
	arrayIndex += 1;
	backgroundX[arrayIndex] = (backgroundX[arrayIndex] - .2) % bgWidth;
	layer_x(backgroundLayer[arrayIndex],backgroundX[arrayIndex]);
	arrayIndex += 1;
	backgroundX[arrayIndex] = (backgroundX[arrayIndex] - .3) % bgWidth;
	layer_x(backgroundLayer[arrayIndex],backgroundX[arrayIndex]);
}