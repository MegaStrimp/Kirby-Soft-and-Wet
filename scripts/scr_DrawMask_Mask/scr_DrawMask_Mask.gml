///@description Draw Mask - Mask

function scr_DrawMask_Mask(targetSprite,targetImageIndex = 0,targetX = x,targetY = y,targetXScale = 1,targetYScale = 1,targetAngle = 0,targetBlend = c_white,targetAlpha = 1)
{
	draw_sprite_ext(targetSprite,targetImageIndex,targetX,targetY,targetXScale,targetYScale,targetAngle,targetBlend,targetAlpha);
	gpu_set_blendenable(true);
	gpu_set_colorwriteenable(true,true,true,true);
	
	gpu_set_blendmode_ext(bm_dest_alpha,bm_inv_dest_alpha);
	gpu_set_alphatestenable(true);
	draw_set_alpha(1);
}