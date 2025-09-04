///@description KSW - Obtain Stealth Tutorial

function scr_KSW_ObtainStealthTutorial(targetStealthTutorialID)
{
	if (!global.KSW_StealthTutorialList[targetStealthTutorialID].isObtained)
	{
		global.KSW_StealthTutorialList[targetStealthTutorialID].isObtained = true;
		
		scr_KSW_UI_StealthTutorial_Create(targetStealthTutorialID);
		
		if (global.KSW_StealthTutorialList[targetStealthTutorialID].isSavable) scr_KSW_SaveData("data1.ini");
	}
}