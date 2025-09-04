///@description KSW - Add Notif Prompts

function scr_KSW_AddNotifPrompts(targetID,targetNextText,targetNextScript,targetBackText,targetBackScript,inputDelayTimerTarget = 30)
{
	with (global.KSW_NotifList[global.KSW_NotifIDs[? targetID]])
	{
		nextText = targetNextText;
		nextScript = targetNextScript;
		backText = targetBackText;
		backScript = targetBackScript;
		inputDelayTimer = inputDelayTimerTarget;
    };
}