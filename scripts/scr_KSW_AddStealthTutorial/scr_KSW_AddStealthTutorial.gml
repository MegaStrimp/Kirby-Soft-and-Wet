///@description KSW - Add Stealth Tutorial

function scr_KSW_AddStealthTutorial(targetID,targetText,targetX,targetY,targetUnlockScript,targetIsSavable)
{
	ds_map_add(global.KSW_StealthTutorialIDs,targetID,ds_map_size(global.KSW_StealthTutorialIDs));
	
	global.KSW_StealthTutorialList[global.KSW_StealthTutorialIDs[? targetID]] = 
	{
        id: targetID,
        text: targetText,
        x: targetX,
        y: targetY,
		unlockScript: targetUnlockScript,
		isSavable: targetIsSavable,
		isObtained: false
    };
}