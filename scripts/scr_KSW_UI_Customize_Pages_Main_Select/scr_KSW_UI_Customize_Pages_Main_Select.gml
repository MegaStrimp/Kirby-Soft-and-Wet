///@description KSW - UI - Customize - Pages - Main - Select

function scr_KSW_UI_Customize_Pages_Main_Select()
{
	scr_PlaySfx(snd_KSW_Enter);
	
	with (obj_KSW_UI_Customize_Bubble) instance_destroy();
	
	switch (selection)
	{
		case KSW_UI_Customize_Bubbles.characters:
		scr_KSW_UI_Customize_ChangePage("characters");
		break;
		
		case KSW_UI_Customize_Bubbles.sprayPaints:
		scr_KSW_UI_Customize_ChangePage("sprayPaints");
		break;
		
		case KSW_UI_Customize_Bubbles.hats:
		scr_KSW_UI_Customize_ChangePage("hats");
		break;
		
		case KSW_UI_Customize_Bubbles.bobbers:
		scr_KSW_UI_Customize_ChangePage("bobbers");
		break;
		
		case KSW_UI_Customize_Bubbles.baits:
		scr_KSW_UI_Customize_ChangePage("baits");
		break;
		
		case KSW_UI_Customize_Bubbles.music:
		scr_KSW_UI_Customize_ChangePage("music");
		break;
		
		case KSW_UI_Customize_Bubbles.stages:
		scr_KSW_UI_Customize_ChangePage("stages");
		break;
	}
}