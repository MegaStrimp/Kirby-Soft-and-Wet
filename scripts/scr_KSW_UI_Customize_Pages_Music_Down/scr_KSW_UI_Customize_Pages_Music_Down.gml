///@description KSW - UI - Customize - Pages - Music - Down

function scr_KSW_UI_Customize_Pages_Music_Down()
{
	//scr_PlaySfx(snd_KSW_BossHealth);
	
	//pageOffset = selection * selectionOffset;
	selection += 1;
	pageOffsetTarget = selection * selectionOffset;
	
	if (selection >= selectionCount)
	{
		selection -= selectionCount;
		pageOffsetTarget = selection * selectionOffset;
		pageOffset = pageOffsetTarget;
	}
}