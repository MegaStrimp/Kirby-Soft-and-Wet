///@description KSW - Add Notif

function scr_KSW_AddNotif(targetID,targetText,targetUnlockScript,targetIsSavable,targetImage = [undefined],targetXScale = 3,targetYScale = 2)
{
	ds_map_add(global.KSW_NotifIDs,targetID,ds_map_size(global.KSW_NotifIDs));
	
	global.KSW_NotifList[global.KSW_NotifIDs[? targetID]] = 
	{
        id: targetID,
        text: targetText,
        image: targetImage,
		unlockScript: targetUnlockScript,
		isSavable: targetIsSavable,
		xScale: targetXScale,
		yScale: targetYScale,
		nextText: "Next",
		nextScript: undefined,
		backText: undefined,
		backScript: undefined,
		inputDelayTimer: -1,
		isObtained: false
    };
}