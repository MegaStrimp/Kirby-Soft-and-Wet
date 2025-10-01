///@description KSW - UI - Customize - Pages - Main - Right

function scr_KSW_UI_Customize_Pages_Main_Right()
{
	scr_PlaySfx(snd_KSW_Bubble1);
	
	with (bubble[selection])
	{
		sprite_index = sprMedium;
		sprBubble = spr_KSW_Menu_TitleScreen_Bubble_Medium;
		
		isBig = false;
		mediumTimer = mediumTimerMax;
	}
	
	selection = (selection + 1 + bubbleCount) % bubbleCount;
	
	with (bubble[selection])
	{
		sprite_index = sprMedium;
		sprBubble = spr_KSW_Menu_TitleScreen_Bubble_Medium;
		
		isBig = true;
		mediumTimer = mediumTimerMax;
	}
	
	with (obj_KSW_UI_Customize_Bubble) targetOffset = sign(index - other.selection) * other.bubbleOffsetMax;
}