///@description KSW - Set Background - Fountain of Dreams - Afternoon - 1

function scr_KSW_SetBackground_FountainOfDreams_Afternoon_1()
{
	if (backgroundSetup)
	{
		backgroundAnchor = layer_get_depth(layer_get_id("Background"));
		
		var arrayIndex = 0;
		backgroundLayer[arrayIndex] = layer_create(backgroundAnchor - (arrayIndex + 1));
		backgroundIndex[arrayIndex] = layer_background_create(backgroundLayer[arrayIndex],bg_KSW_FountainOfDreams_Afternoon_1);
		arrayIndex += 1;
		backgroundLayer[arrayIndex] = layer_create(backgroundAnchor - (arrayIndex + 1));
		backgroundIndex[arrayIndex] = layer_background_create(backgroundLayer[arrayIndex],bg_KSW_FountainOfDreams_Afternoon_1_Decal_1);
		backgroundImageIndex[arrayIndex] = 0;
		backgroundImageSpeed[arrayIndex] = sprite_get_speed(bg_KSW_FountainOfDreams_Afternoon_1_Decal_1) / 60;
		backgroundImageNumber[arrayIndex] = sprite_get_number(bg_KSW_FountainOfDreams_Afternoon_1_Decal_1);
		layer_background_speed(backgroundIndex[arrayIndex],0);
		arrayIndex += 1;
		backgroundLayer[arrayIndex] = layer_create(backgroundAnchor - (arrayIndex + 1));
		backgroundIndex[arrayIndex] = layer_background_create(backgroundLayer[arrayIndex],bg_KSW_FountainOfDreams_Afternoon_1_Decal_2);
		backgroundImageIndex[arrayIndex] = 0;
		backgroundImageSpeed[arrayIndex] = sprite_get_speed(bg_KSW_FountainOfDreams_Afternoon_1_Decal_2) / 60;
		backgroundImageNumber[arrayIndex] = sprite_get_number(bg_KSW_FountainOfDreams_Afternoon_1_Decal_2);
		layer_background_speed(backgroundIndex[arrayIndex],0);
		
		backgroundSetup = false;
	}
	
	var arrayIndex = 0;
	arrayIndex += 1;
	backgroundImageIndex[arrayIndex] = (backgroundImageIndex[arrayIndex] + backgroundImageSpeed[arrayIndex]) % backgroundImageNumber[arrayIndex];
	layer_background_index(backgroundIndex[arrayIndex],backgroundImageIndex[arrayIndex]);
	arrayIndex += 1;
	backgroundImageIndex[arrayIndex] = (backgroundImageIndex[arrayIndex] + backgroundImageSpeed[arrayIndex]) % backgroundImageNumber[arrayIndex];
	layer_background_index(backgroundIndex[arrayIndex],backgroundImageIndex[arrayIndex]);
}