///@description KSW - UI - Customize - Pages - Baits - Back

function scr_KSW_UI_Customize_Pages_Baits_Back()
{
	scr_PlaySfx(snd_KSW_ButtonNo);
	
	//selection = KSW_UI_Customize_Bubbles.baits;
	selection = currentBubbleIndex;
	
	with (obj_KSW_GameController) currentFishPool = scr_KSW_Game_SetPool(other.playerNum);
	
	scr_KSW_UI_Customize_ChangePage("main");
}