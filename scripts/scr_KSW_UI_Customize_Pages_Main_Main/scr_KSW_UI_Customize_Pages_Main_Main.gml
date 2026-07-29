///@description KSW - UI - Customize - Pages - Main - Main

function scr_KSW_UI_Customize_Pages_Main_Main()
{
	if (mousePressedNewBubble)
	{
		scr_PlaySfx(snd_KSW_Bubble1);
		
		with (bubble[selection])
		{
			sprite_index = sprMedium;
			sprBubble = spr_KSW_Menu_TitleScreen_Bubble_Medium;
			
			isBig = false;
			mediumTimer = mediumTimerMax;
		}
		
		selection = mousePressedNewBubble_Target;
		
		with (bubble[selection])
		{
			sprite_index = sprMedium;
			sprBubble = spr_KSW_Menu_TitleScreen_Bubble_Medium;
			
			isBig = true;
			mediumTimer = mediumTimerMax;
		}
		
		with (obj_KSW_UI_Customize_Bubble) targetOffset = sign(index - other.selection) * other.bubbleOffsetMax;
	}
}