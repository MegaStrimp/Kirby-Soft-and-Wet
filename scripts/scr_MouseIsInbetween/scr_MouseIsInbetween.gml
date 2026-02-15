///@description Mouse Is Inbetween

function scr_MouseIsInbetween(x1,y1,x2,y2)
{
	return ((mouse_x >= x1) and (mouse_x < x2) and (mouse_y >= y1) and (mouse_y < y2));
}