///@description Create

#region Initialize Variables
#region Component Setup
scr_Component_ButtonInputTimer_Setup(5);
#endregion

#region Menu Variables
playerNum = 0;

phaseTimerMax = 3600;
phaseTimer = phaseTimerMax;

bubbleTimer = 0;
bubbleTimerMax = 10;

fishCount = 0;
maxFishCount = 0;
isFull = false;
#endregion
#endregion

#region Spawn Fishes
for (var i = 0; i < global.KSW_FishCount; i++)
{
	var amount = global.KSW_FishList[i].isCaught - global.KSW_FishList[i].isCaughtShiny;
	if (amount > 0)
	{
		for (var j = 0; j < amount; j++)
		{
			fishCount += 1;
			
			with (instance_create_depth(irandom_range(0,room_width),irandom_range(0,room_height),irandom_range(1,99),obj_KSW_Menu_Aquarium_Fish))
			{
				sprite_index = global.KSW_FishList[i].sprite;
				catchAudio = global.KSW_FishList[i].catchAudio;
				catchAudioPitchOffset = global.KSW_FishList[i].catchAudioPitchOffset;
				
				if (catchAudio != -1) soundTimer = irandom_range(soundTimerMax,soundTimerMax * 5);
				
				scale = random_range(.25,1);
				scale = 1;
				dirX = choose(-1,1);
				drawDirX = dirX;
				
				image_xscale = scale * drawDirX;
				image_yscale = scale;
			}
		}
	}
	
	amount = global.KSW_FishList[i].isCaughtShiny;
	if (amount > 0)
	{
		for (var j = 0; j < amount; j++)
		{
			fishCount += 1;
			
			with (instance_create_depth(irandom_range(0,room_width),irandom_range(0,room_height),irandom_range(1,99),obj_KSW_Menu_Aquarium_Fish))
			{
				sprite_index = global.KSW_FishList[i].sprite;
				catchAudio = global.KSW_FishList[i].catchAudio;
				catchAudioPitchOffset = global.KSW_FishList[i].catchAudioPitchOffset;
				
				if (catchAudio != -1) soundTimer = irandom_range(soundTimerMax,soundTimerMax * 5);
				
				palSprite = global.KSW_FishList[i].palette;
				isShiny = true;
				
				scale = random_range(.25,1);
				scale = 1;
				dirX = choose(-1,1);
				drawDirX = dirX;
				
				image_xscale = scale * drawDirX;
				image_yscale = scale;
			}
		}
	}
	
	maxFishCount = 300;
	if ((global.isMobile) or (global.isOpera)) maxFishCount = 60;
	
	while (instance_number(obj_KSW_Menu_Aquarium_Fish) > maxFishCount)
	{
		fishCount = maxFishCount;
		isFull = true;
		
		with (obj_KSW_Menu_Aquarium_Fish)
		{
			var rng = irandom_range(0,2);
			if (rng == 0)
			{
				instance_destroy();
				
				if (instance_number(obj_KSW_Menu_Aquarium_Fish) <= other.maxFishCount) break;
			}
		}
	}
}
#endregion