///@description KSW - Game - Set Pool

function scr_KSW_Game_SetPool(playerNum)
{
	var rate = [];
	rate[0] = 24 - ((global.KSW_EquippedBaitID[playerNum] == global.KSW_BaitIDs[? "0rarity"]) * 5);
	rate[1] = 15 - ((global.KSW_EquippedBaitID[playerNum] == global.KSW_BaitIDs[? "1rarity"]) * 4);
	rate[2] = 9 - ((global.KSW_EquippedBaitID[playerNum] == global.KSW_BaitIDs[? "2rarity"]) * 3);
	rate[3] = 3 - ((global.KSW_EquippedBaitID[playerNum] == global.KSW_BaitIDs[? "3rarity"]) * 2);
	
	var list = [];
	var index = 0;
	
	for (var i = 0; i < ds_map_size(global.KSW_FishIDs); i++)
	{
		if ((global.KSW_FishList[i].stage == -1) or (global.KSW_CurrentStageID == global.KSW_FishList[i].stage))
		{
			var passPhaseCheck = false;
			switch (global.KSW_BaitList[global.KSW_EquippedBaitID[playerNum]].ID)
			{
				case "extraDay":
				passPhaseCheck = ((global.KSW_CurrentPhase != KSW_Phases.day) and (global.KSW_FishList[i].phase == KSW_Phases.day))
				break;
				
				case "extraAfternoon":
				passPhaseCheck = ((global.KSW_CurrentPhase != KSW_Phases.afternoon) and (global.KSW_FishList[i].phase == KSW_Phases.afternoon))
				break;
				
				case "extraNight":
				passPhaseCheck = ((global.KSW_CurrentPhase != KSW_Phases.night) and (global.KSW_FishList[i].phase == KSW_Phases.night))
				break;
			}
			
			if ((global.KSW_CurrentPhase == global.KSW_FishList[i].phase) or (passPhaseCheck) or (global.KSW_FishList[i].phase == KSW_Phases.none))
			{
				var maxRarity = ((rate[global.KSW_FishList[i].rarity]) - (passPhaseCheck));
				
				for (var j = 0; j < maxRarity; j++)
				{
					list[index] = i;
					index += 1;
				}
			}
		}
	}
	
	return list;
}