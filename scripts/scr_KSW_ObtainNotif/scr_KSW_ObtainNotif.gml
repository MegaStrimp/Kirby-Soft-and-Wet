///@description KSW - Obtain Notif

function scr_KSW_ObtainNotif(targetNotifID,forced = false)
{
	if ((forced) or (!global.KSW_NotifList[targetNotifID].isObtained))
	{
		if (!forced) global.KSW_NotifList[targetNotifID].isObtained = true;
		
		ds_list_add(global.KSW_PopupQueue,targetNotifID);
		
		if (!instance_exists(obj_KSW_UI_NotifBox))
		{
			scr_KSW_UI_Notif_Create(targetNotifID);
			
			ds_list_delete(global.KSW_PopupQueue,0);
		}
		
		if ((!forced) and (global.KSW_NotifList[targetNotifID].isSavable)) scr_KSW_SaveData("data1.ini");
	}
}