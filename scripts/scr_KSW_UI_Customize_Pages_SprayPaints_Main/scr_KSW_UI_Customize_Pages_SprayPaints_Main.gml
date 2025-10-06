///@description KSW - UI - Customize - Pages - Spray Paints - Main

function scr_KSW_UI_Customize_Pages_SprayPaints_Main()
{
	if (!localPause)
	{
		#region Selection Animation
		selectionIndex = (selectionIndex + selectionSpd) % selectionNumber;
		selectionScale = 1 + sine_wave(current_time / 6000,.1,.05,0);
		#endregion
		
		#region Background Movement
		backgroundX = (backgroundX + (backgroundSpd * speedMultFinal)) % 50;
		backgroundY = (backgroundY + (backgroundSpd * speedMultFinal)) % 40;
		#endregion
	}
}