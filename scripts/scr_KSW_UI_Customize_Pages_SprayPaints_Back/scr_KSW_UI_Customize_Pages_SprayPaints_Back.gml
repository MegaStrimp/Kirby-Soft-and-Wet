///@description KSW - UI - Customize - Pages - Spray Paints - Back

function scr_KSW_UI_Customize_Pages_SprayPaints_Back()
{
	scr_PlaySfx(snd_KSW_ButtonNo);
	
	//selection = KSW_UI_Customize_Bubbles.sprayPaints;
	selection = currentBubbleIndex;
	
	scr_KSW_UI_Customize_ChangePage("main");
}