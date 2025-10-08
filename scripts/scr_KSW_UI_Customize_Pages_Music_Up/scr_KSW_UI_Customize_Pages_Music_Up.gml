///@description KSW - UI - Customize - Pages - Music - Up

function scr_KSW_UI_Customize_Pages_Music_Up()
{
	//scr_PlaySfx(snd_KSW_BossHealth);
	
	//pageOffset = selection * selectionOffset;
	selection -= 1;
	pageOffsetTarget = selection * selectionOffset;
	
	if (selection < 0)
	{
		selection += selectionCount;
		pageOffsetTarget = selection * selectionOffset;
		pageOffset = pageOffsetTarget;
	}
}