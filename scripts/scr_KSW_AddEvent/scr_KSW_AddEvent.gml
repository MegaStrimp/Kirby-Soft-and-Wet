///@description KSW - Add Event

function scr_KSW_AddEvent(targetID,targetName,targetColor,targetSetupScript,targetEndScript,targetEndTimer = 1200)
{
	ds_map_add(global.KSW_EventIDs,targetID,global.KSW_EventCount);
	
	global.KSW_EventList[global.KSW_EventCount] = 
	{
        ID: targetID,
		name: targetName,
		color: targetColor,
		setupScript: targetSetupScript,
		endScript: targetEndScript,
		endTimer: targetEndTimer
    };
	
	global.KSW_EventCount += 1;
}