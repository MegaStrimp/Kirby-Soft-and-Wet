///@description KSW - UI - Customize - Pages - Stages - Left

function scr_KSW_UI_Customize_Pages_Stages_Left()
{
	scr_PlaySfx(snd_KSW_BossHealth);
	
	selection -= 1;
	pageOffsetTarget = selection * selectionOffset;
	
	if (selection < 0)
	{
		selection += selectionCount;
		pageOffsetTarget = selection * selectionOffset;
		pageOffset = pageOffsetTarget;
	}
}