///@description KSW - UI - Customize - Pages - Stages - Right

function scr_KSW_UI_Customize_Pages_Stages_Right()
{
	scr_PlaySfx(snd_KSW_BossHealth);
	
	selection += 1;
	pageOffsetTarget = selection * selectionOffset;
	
	if (selection >= selectionCount)
	{
		selection -= selectionCount;
		pageOffsetTarget = selection * selectionOffset;
		pageOffset = pageOffsetTarget;
	}
}