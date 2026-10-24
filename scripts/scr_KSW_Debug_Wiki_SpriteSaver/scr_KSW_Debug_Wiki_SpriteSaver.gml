///@description KSW - Debug - Wiki - Sprite Saver

function scr_KSW_Debug_Wiki_SpriteSaver(targetSprite,targetFilePath)
{
	var spriteNumber = sprite_get_number(targetSprite);
	var spriteWidth = sprite_get_width(targetSprite);
	var spriteHeight = sprite_get_height(targetSprite);
	var spriteXOffset = sprite_get_xoffset(targetSprite);
	var spriteYOffset = sprite_get_yoffset(targetSprite);
	
	var surface = surface_create(spriteWidth * spriteNumber,spriteHeight);
	surface_set_target(surface);
	draw_clear_alpha(c_black,0);
	
	for (var i = 0; i < spriteNumber; i++)
	{
		draw_sprite(targetSprite,i,(spriteWidth * i) + spriteXOffset,spriteYOffset);
	}
	
	surface_save(surface,targetFilePath);
	surface_reset_target();
	surface_free(surface);
}