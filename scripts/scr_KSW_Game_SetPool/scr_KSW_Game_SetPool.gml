///@description KSW - Game - Set Pool

function scr_KSW_Game_SetPool()
{
	var rate = [];
	rate[0] = 8;
	rate[1] = 5;
	rate[2] = 3;
	rate[3] = 1;
	
	var list = [];
	var index = 0;
	
	for (var i = 0; i < ds_map_size(global.KSW_FishIDs); i++)
	{
		if ((global.KSW_CurrentPhase == global.KSW_FishList[i].phase) or (global.KSW_FishList[i].phase == KSW_Phases.none))
		{
			for (var j = 0; j < rate[global.KSW_FishList[i].rarity]; j++)
			{
				list[index] = i;
				index += 1;
			}
		}
	}
	
	return list;
}