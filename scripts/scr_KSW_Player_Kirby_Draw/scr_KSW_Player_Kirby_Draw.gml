///@description KSW - Player - Kirby - Draw

function scr_KSW_Player_Kirby_Draw()
{
	#region Draw Rod
	var bobberShakeFinal = bobberShake * irandom_range(-1,1);
	scr_DrawCurve(rodX + shakeXFinal,rodY,bobberX + bobberShakeFinal,bobberY,0,8);
	draw_sprite(sprBobber,sprBobberImageIndex,bobberX + bobberShakeFinal,bobberY);
	#endregion
	
	#region Draw Self
	if (sprite_index != -1) draw_sprite_ext(sprite_index,image_index,x + shakeXFinal + drawXOffset,y + shakeYFinal + drawYOffset,image_xscale,image_yscale,image_angle,image_blend,image_alpha);
	#endregion
}