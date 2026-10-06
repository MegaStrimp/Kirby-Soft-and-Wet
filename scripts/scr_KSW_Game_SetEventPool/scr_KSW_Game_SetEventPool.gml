///@description KSW - Game - Set Event Pool

function scr_KSW_Game_SetEventPool()
{
	var list = [];
	var index = 0;
	
	for (var i = 0; i < ds_map_size(global.KSW_EventIDs); i++)
	{
		if ((global.KSW_EventList[i].stage == -1) or (global.KSW_CurrentStageID == global.KSW_EventList[i].stage))
		{
			var passPhaseCheck = false;
			
			if ((global.KSW_CurrentPhase == global.KSW_EventList[i].phase) or (passPhaseCheck) or (global.KSW_EventList[i].phase == KSW_Phases.none))
			{
				for (var j = 0; j < global.KSW_EventList[i].weight; j++)
				{
					list[index] = i;
					index += 1;
				}
			}
		}
	}
	
	return list;
}