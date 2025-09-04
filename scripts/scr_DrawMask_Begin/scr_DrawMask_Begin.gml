///@description Draw Mask - Begin

function scr_DrawMask_Begin(rectX1 = 0,rectY1 = 0,rectX2 = room_width,rectY2 = room_height)
{
	gpu_set_blendenable(false);
	gpu_set_colorwriteenable(false,false,false,true);
	draw_set_alpha(0);
	draw_rectangle(rectX1,rectY1,rectX2,rectY2,false);
}