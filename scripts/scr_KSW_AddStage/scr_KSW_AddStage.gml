///@description KSW - Add Stage

function scr_KSW_AddStage(targetID,targetName,targetDayLayout,targetAfternoonLayout,targetNightLayout,targetBackgrounds)
{
	ds_map_add(global.KSW_StageIDs,targetID,global.KSW_StageCount);
	
	global.KSW_StageList[global.KSW_StageCount] = 
	{
        ID: targetID,
		name: targetName,
		dayLayout: targetDayLayout,
		afternoonLayout: targetAfternoonLayout,
		nightLayout: targetNightLayout,
		backgrounds: targetBackgrounds,
		isAvailable: false,
		isUnlocked: false
    };
	
	global.KSW_StageCount += 1;
}