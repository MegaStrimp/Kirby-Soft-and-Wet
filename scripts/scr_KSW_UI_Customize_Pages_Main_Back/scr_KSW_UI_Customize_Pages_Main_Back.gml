///@description KSW - UI - Customize - Pages - Main - Back

function scr_KSW_UI_Customize_Pages_Main_Back()
{
	scr_PlaySfx(snd_KSW_ButtonNo);
	
	scr_KSW_SaveData("data1.ini");
	
	global.pause = false;
	
	exitTimer = exitTimerMax;
}