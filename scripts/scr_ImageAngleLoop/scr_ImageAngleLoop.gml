///@description Image Angle Loop
function scr_ImageAngleLoop()
{
	if (image_angle >= 360) image_angle -= 360;
	if (image_angle < 0) image_angle += 360;
}