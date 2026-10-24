///@description KSW - Debug - Wiki - Gif Saver

function scr_KSW_Debug_Wiki_GifSaver(targetSprite,targetFilePath)
{
	scr_KSW_Debug_Wiki_SpriteSaver(targetSprite,targetFilePath) //STRIMPTODO
	exit;
	
	var spriteNumber = sprite_get_number(targetSprite);
	var spriteSpeed = floor(100 / max(1,sprite_get_speed(targetSprite)));
	var spriteWidth = sprite_get_width(targetSprite);
	var spriteHeight = sprite_get_height(targetSprite);
	var spriteXOffset = sprite_get_xoffset(targetSprite);
	var spriteYOffset = sprite_get_yoffset(targetSprite);
	var scale = 1;
	
	while (((spriteWidth * scale) * (spriteHeight * scale)) <= 503)
	{
		scale += 1;
	}
	
	var surface = surface_create(spriteWidth * scale,spriteHeight * scale);
	
	var gif = gif_open(spriteWidth * scale,spriteHeight * scale);
	
	for (var i = 0; i < spriteNumber; i++)
	{
		surface_set_target(surface);
		draw_clear_alpha(c_black,0);
		draw_sprite_ext(targetSprite,i,spriteXOffset * scale,spriteYOffset * scale,scale,scale,0,c_white,1);
		surface_reset_target();
		
		gif_add_surface(gif,surface,spriteSpeed,0,0,3);
	}
	
	surface_free(surface);
	
	gif_save(gif,targetFilePath);
}