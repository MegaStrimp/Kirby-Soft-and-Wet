///@description KSW - UI - Customize - Pages - Music - Back

function scr_KSW_UI_Customize_Pages_Music_Back()
{
	scr_PlaySfx(snd_KSW_ButtonNo);
	
	selection = KSW_UI_Customize_Bubbles.music;
	
	coinsVisible = true;
	
	scr_KSW_UI_Customize_ChangePage("main");
}