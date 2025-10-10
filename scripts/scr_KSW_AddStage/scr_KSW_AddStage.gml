///@description KSW - Add Stage

function scr_KSW_AddStage(targetID,targetName,targetDayLayout,targetDayBackgrounds,targetAfternoonLayout,targetAfternoonBackgrounds,targetNightLayout,targetNightBackgrounds)
{
	ds_map_add(global.KSW_StageIDs,targetID,global.KSW_StageCount);
	
	global.KSW_StageList[global.KSW_StageCount] = 
	{
        ID: targetID,
		name: targetName,
		dayLayout: targetDayLayout,
		dayBackgrounds: targetDayBackgrounds,
		afternoonLayout: targetAfternoonLayout,
		afternoonBackgrounds: targetAfternoonBackgrounds,
		nightLayout: targetNightLayout,
		nightBackgrounds: targetNightBackgrounds,
		forcedPhase: KSW_Phases.none,
		isAvailable: false,
		isUnlocked: false
    };
	
	global.KSW_StageCount += 1;
}