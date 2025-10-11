///@description KSW - UI - Customize - Pages - Music - Main

function scr_KSW_UI_Customize_Pages_Music_Main()
{
	#region Selection Animation
	selectionIndex = (selectionIndex + selectionSpd) % selectionNumber;
	selectionScale = 1 + sine_wave(current_time / 6000,.1,.05,0);
	#endregion
	
	#region Page Offset
	pageOffset = lerp(pageOffset,pageOffsetTarget,.1);
	pageOffset = clamp(pageOffset,0,max(0,selectionCount - 3) * selectionOffset);
	#endregion
}