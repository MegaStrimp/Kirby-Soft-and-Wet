///@description KSW - Player - Throw Bobber

function scr_KSW_ThrowBobber()
{
	scr_PlaySfx(snd_KSW_RodThrow);
	
	bobberInWater = false;
	
	var targetBobberIndex = ds_list_find_value(global.KSW_AvailableBobbers,irandom_range(0,ds_list_size(global.KSW_AvailableBobbers) - 1));
	
	sprBobber = global.KSW_BobberList[targetBobberIndex].sprite;
	
	sprBobberImageIndex = 0;
	sprBobberSpeed = sprite_get_speed(sprBobber) / 60;
	sprBobberImageNumber = sprite_get_number(sprBobber);
	
	bobberXTarget = irandom_range(140,230);
	bobberYTarget = irandom_range(30,50);
	
	bobberX = x + 17;
	bobberY = y - 15;
}