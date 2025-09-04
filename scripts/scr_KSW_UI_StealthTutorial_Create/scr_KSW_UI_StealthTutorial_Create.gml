///@description KSW - UI - Stealth Tutorial - Create

function scr_KSW_UI_StealthTutorial_Create(targetStealthTutorialID)
{
	with (obj_KSW_UI_StealthTutorial) destroyTimer = 0;
	
	var targetX = global.KSW_StealthTutorialList[targetStealthTutorialID].x;
	var targetY = global.KSW_StealthTutorialList[targetStealthTutorialID].y;
	
	var stealthTutorial = instance_create_depth(targetX,targetY,-100,obj_KSW_UI_StealthTutorial);
	with (stealthTutorial)
	{
        text = string_upper(global.KSW_StealthTutorialList[targetStealthTutorialID].text);
	}
}