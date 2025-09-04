///@description KSW - UI - Notif - Create

function scr_KSW_UI_Notif_Create(targetNotifID)
{
	var notifBox = instance_create_depth(0,0,-999,obj_KSW_UI_NotifBox);
	with (notifBox)
	{
        text = global.KSW_NotifList[targetNotifID].text;
		pageMax = array_length(text) - 1;
        image = global.KSW_NotifList[targetNotifID].image;
        xScale = global.KSW_NotifList[targetNotifID].xScale;
        yScale = global.KSW_NotifList[targetNotifID].yScale;
        nextText = global.KSW_NotifList[targetNotifID].nextText;
        nextScript = global.KSW_NotifList[targetNotifID].nextScript;
        backText = global.KSW_NotifList[targetNotifID].backText;
        backScript = global.KSW_NotifList[targetNotifID].backScript;
        inputDelayTimer = global.KSW_NotifList[targetNotifID].inputDelayTimer;
	}
}