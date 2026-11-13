///@description KSW - Add Event

function scr_KSW_AddEvent(targetID,targetName,targetColor,targetColorRaw,targetStage,targetPhase,targetSetupScript,targetEndScript,targetEndTimer = 1200,targetWeight = 10)
{
	ds_map_add(global.KSW_EventIDs,targetID,global.KSW_EventCount);
	
	global.KSW_EventList[global.KSW_EventCount] = 
	{
        ID: targetID,
		name: targetName,
		color: targetColor,
		colorRaw: targetColorRaw,
		stage: targetStage,
		phase: targetPhase,
		setupScript: targetSetupScript,
		endScript: targetEndScript,
		endTimer: targetEndTimer,
		weight: targetWeight
    };
	
	global.KSW_EventCount += 1;
}