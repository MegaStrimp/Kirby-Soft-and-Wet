///@description KSW - Player - Throw Bobber

function scr_KSW_ThrowBobber()
{
	scr_PlaySfx(snd_KSW_RodThrow);
	
	bobberInWater = false;
	
	if (global.KSW_EquippedBobberShuffle[playerNum]) global.KSW_EquippedBobberID[playerNum] = ds_list_find_value(global.KSW_AvailableBobbers,irandom_range(0,ds_list_size(global.KSW_AvailableBobbers) - 1));
	
	sprBobber = global.KSW_BobberList[global.KSW_EquippedBobberID[playerNum]].sprite;
	bobberXOffset = global.KSW_BobberList[global.KSW_EquippedBobberID[playerNum]].xOffset;
	bobberYOffset = global.KSW_BobberList[global.KSW_EquippedBobberID[playerNum]].yOffset;
	
	sprBobberImageIndex = 0;
	sprBobberSpeed = sprite_get_speed(sprBobber) / 60;
	sprBobberImageNumber = sprite_get_number(sprBobber);
	
	bobberXTarget = irandom_range(140,230);
	bobberYTarget = irandom_range(30,50);
	
	bobberX = x + 17;
	bobberY = y - 15;
	
	baitTexture = global.KSW_BaitList[global.KSW_EquippedBaitID[playerNum]].texture;
	if (baitTexture != -1)
	{
		baitWidth = sprite_get_width(baitTexture);
		baitHeight = sprite_get_height(baitTexture);
	}
	
	baitX = 0;
	baitY = 0;
	baitAngle = 0;
}