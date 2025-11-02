///@description KSW - UI - Customize - Pages - Main - Setup

function scr_KSW_UI_Customize_Pages_Main_Setup()
{
	#region Menu Variables
	currentBubbleIndex = 0;
	#endregion
	
	#region Set Bubbles
	with (obj_KSW_UI_Customize_Bubble) instance_destroy();
	
	scr_KSW_UI_Customize_SetBubbles();
	#endregion
}