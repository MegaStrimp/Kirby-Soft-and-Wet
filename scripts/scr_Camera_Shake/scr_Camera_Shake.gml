///@description Camera - Shake

function scr_Camera_Shake()
{
	shakeXFinal = 0;
	shakeYFinal = 0;
	
	if (!global.pauseFinal)
	{
		shakeXFinal = floor(choose(-shakeX,shakeX));
		shakeYFinal = floor(choose(-shakeY,shakeY));
		
		shakeX = max(0,shakeX - .1);
		shakeY = max(0,shakeY - .1);
	}
}