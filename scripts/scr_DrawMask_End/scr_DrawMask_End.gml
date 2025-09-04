///@description Draw Mask - End

function scr_DrawMask_End()
{
	draw_set_alpha(1);
	gpu_set_alphatestenable(false);
	gpu_set_blendenable(true);
	gpu_set_blendmode(bm_normal);
	gpu_set_colorwriteenable(true,true,true,true);
}