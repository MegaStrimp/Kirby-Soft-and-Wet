///@description KSW - UI - Stealth Tutorial - Create - Custom

function scr_KSW_UI_StealthTutorial_Create_Custom(targetX,targetY,targetText,targetDestroyTimer,targetTextAlphaSpd = .05,targetHalign = fa_left,targetValign = fa_top)
{
	with (obj_KSW_UI_StealthTutorial) destroyTimer = 0;
	
	var stealthTutorial = instance_create_depth(targetX,targetY,-100,obj_KSW_UI_StealthTutorial);
	with (stealthTutorial)
	{
        text = targetText;
        destroyTimer = targetDestroyTimer;
		textAlphaSpd = targetTextAlphaSpd
        halign = targetHalign;
        valigh = targetValign;
	}
}