///@description KSW - Add Stage

function scr_KSW_AddStage(targetID,targetName,targetIcon,targetDayLayout,targetDayBackgrounds,targetDayBgColors,targetAfternoonLayout,targetAfternoonBackgrounds,targetAfternoonBgColors,targetNightLayout,targetNightBackgrounds,targetNightBgColors,targetPrice,targetIsDefault = false)
{
	ds_map_add(global.KSW_StageIDs,targetID,global.KSW_StageCount);
	
	global.KSW_StageList[global.KSW_StageCount] = 
	{
        ID: targetID,
		name: targetName,
		icon: targetIcon,
		dayLayout: targetDayLayout,
		dayBackgrounds: targetDayBackgrounds,
		dayBgColors: targetDayBgColors,
		afternoonLayout: targetAfternoonLayout,
		afternoonBackgrounds: targetAfternoonBackgrounds,
		afternoonBgColors: targetAfternoonBgColors,
		nightLayout: targetNightLayout,
		nightBackgrounds: targetNightBackgrounds,
		nightBgColors: targetNightBgColors,
		price: targetPrice,
		isDefault: targetIsDefault,
		forcedPhase: KSW_Phases.none,
		fishCountMax: 0,
		fishCount: 0,
		isAvailable: false,
		isUnlocked: false
    };
	
	global.KSW_StageCount += 1;
}