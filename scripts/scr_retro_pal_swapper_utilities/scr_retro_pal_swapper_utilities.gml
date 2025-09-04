///@func pal_swap_draw_palette(pal_sprite,pal_index,x,y);
//Draws only the specified palette from the given palette sprite.
function pal_swap_draw_palette(_sprite,_index,_x,_y) {
	draw_sprite_part(_sprite,0,floor(_index),0,1,sprite_get_height(_sprite),_x,_y);
}


///@func pal_swap_get_color_count(pal_sprite);
function pal_swap_get_color_count(_sprite) {
	return(sprite_get_height(_sprite));
}

///@dfunc pal_swap_get_pal_count(pal_sprite)
//returns the number of palettes for the given sprite.
//Useful for clamping palette selection.
function pal_swap_get_pal_count(_sprite) {
	return(sprite_get_width(_sprite));
}