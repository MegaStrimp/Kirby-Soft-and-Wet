///@description KSW - Obtain Bobber

function scr_KSW_ObtainBobber(targetBobberID)
{
	if (!global.KSW_BobberList[targetBobberID].isObtained)
	{
		if (!global.KSW_BobberList[targetBobberID].isHidden) global.KSW_UnlockedBobberCount += 1;
		global.KSW_BobberList[targetBobberID].isObtained = true;
		
		ds_list_add(global.KSW_AvailableBobbers,targetBobberID);
		
		scr_KSW_SaveData("data1.ini");
	}
}