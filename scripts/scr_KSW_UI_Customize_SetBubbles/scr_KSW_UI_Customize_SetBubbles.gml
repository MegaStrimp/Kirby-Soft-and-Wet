///@description KSW - UI - Customize - Set Bubbles

function scr_KSW_UI_Customize_SetBubbles()
{
	bubbleCount = 0;
	
	//scr_KSW_UI_Customize_CreateBubble(KSW_UI_Customize_Bubbles.characters,spr_KSW_UI_Customize_Bubble_Characters_Small,spr_KSW_UI_Customize_Bubble_Characters_Medium,spr_KSW_UI_Customize_Bubble_Characters_Big,spr_KSW_UI_Customize_Text_Characters);
	scr_KSW_UI_Customize_CreateBubble(KSW_UI_Customize_Bubbles.sprayPaints,spr_KSW_UI_Customize_Bubble_SprayPaints_Small,spr_KSW_UI_Customize_Bubble_SprayPaints_Medium,spr_KSW_UI_Customize_Bubble_SprayPaints_Big,spr_KSW_UI_Customize_Text_SprayPaints);
	scr_KSW_UI_Customize_CreateBubble(KSW_UI_Customize_Bubbles.hats,spr_KSW_UI_Customize_Bubble_Hats_Small,spr_KSW_UI_Customize_Bubble_Hats_Medium,spr_KSW_UI_Customize_Bubble_Hats_Big,spr_KSW_UI_Customize_Text_Hats);
	scr_KSW_UI_Customize_CreateBubble(KSW_UI_Customize_Bubbles.bobbers,spr_KSW_UI_Customize_Bubble_Bobbers_Small,spr_KSW_UI_Customize_Bubble_Bobbers_Medium,spr_KSW_UI_Customize_Bubble_Bobbers_Big,spr_KSW_UI_Customize_Text_Bobbers);
	scr_KSW_UI_Customize_CreateBubble(KSW_UI_Customize_Bubbles.baits,spr_KSW_UI_Customize_Bubble_Baits_Small,spr_KSW_UI_Customize_Bubble_Baits_Medium,spr_KSW_UI_Customize_Bubble_Baits_Big,spr_KSW_UI_Customize_Text_Baits);
	scr_KSW_UI_Customize_CreateBubble(KSW_UI_Customize_Bubbles.music,spr_KSW_UI_Customize_Bubble_Music_Small,spr_KSW_UI_Customize_Bubble_Music_Medium,spr_KSW_UI_Customize_Bubble_Music_Big,spr_KSW_UI_Customize_Text_Music);
	scr_KSW_UI_Customize_CreateBubble(KSW_UI_Customize_Bubbles.stages,spr_KSW_UI_Customize_Bubble_Stages_Small,spr_KSW_UI_Customize_Bubble_Stages_Medium,spr_KSW_UI_Customize_Bubble_Stages_Big,spr_KSW_UI_Customize_Text_Stages);
	
	bubbleOffsetMax = 20 / ln(bubbleCount);
	
	with (obj_KSW_UI_Customize_Bubble)
	{
		xAnchor = 48 + (((240 - 96) / (other.bubbleCount - 1)) * index);
		x = xAnchor;
		
		targetOffset = sign(index - other.selection) * other.bubbleOffsetMax;
		
		if (other.selection == index)
		{
			sprite_index = sprBig;
			sprBubble = spr_KSW_Menu_TitleScreen_Bubble_Big;
			
			isBig = true;
		}
		else
		{
			sprite_index = sprSmall;
			sprBubble = spr_KSW_Menu_TitleScreen_Bubble_Small;
		}
	}
}