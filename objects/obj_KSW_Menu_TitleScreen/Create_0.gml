///@description Create

#region Initialize Variables
#region Component Setup
scr_Component_ButtonInputTimer_Setup(5);
#endregion

#region Menu Variables
enum KSW_MainMenu_Buttons
{
	settings,
	stars,
	startFishing,
	fishbook,
	shop,
	discord
}

playerNum = 0;

state = 0;

logoWave = 0;

phaseTimerMax = 3600;
phaseTimer = phaseTimerMax;
background_TextY = 48;

bubbleTimer = 0;
bubbleTimerMax = 10;

global.KSW_CurrentPhase = scr_KSW_Game_UpdatePhase();
#endregion
#endregion

#region Create Bubbles
bubbleCount = 0;

scr_KSW_Menu_TitleScreen_CreateBubble(KSW_MainMenu_Buttons.settings,spr_KSW_Menu_TitleScreen_Bubble_Settings_Small,spr_KSW_Menu_TitleScreen_Bubble_Settings_Medium,spr_KSW_Menu_TitleScreen_Bubble_Settings_Big,spr_KSW_Menu_TitleScreen_Text_Settings);
scr_KSW_Menu_TitleScreen_CreateBubble(KSW_MainMenu_Buttons.stars,spr_KSW_Menu_TitleScreen_Bubble_Stars_Small,spr_KSW_Menu_TitleScreen_Bubble_Stars_Medium,spr_KSW_Menu_TitleScreen_Bubble_Stars_Big,spr_KSW_Menu_TitleScreen_Text_Stars);
scr_KSW_Menu_TitleScreen_CreateBubble(KSW_MainMenu_Buttons.startFishing,spr_KSW_Menu_TitleScreen_Bubble_StartFishing_Small,spr_KSW_Menu_TitleScreen_Bubble_StartFishing_Medium,spr_KSW_Menu_TitleScreen_Bubble_StartFishing_Big,spr_KSW_Menu_TitleScreen_Text_StartFishing);
scr_KSW_Menu_TitleScreen_CreateBubble(KSW_MainMenu_Buttons.fishbook,spr_KSW_Menu_TitleScreen_Bubble_Fishbook_Small,spr_KSW_Menu_TitleScreen_Bubble_Fishbook_Medium,spr_KSW_Menu_TitleScreen_Bubble_Fishbook_Big,spr_KSW_Menu_TitleScreen_Text_Fishbook);
//scr_KSW_Menu_TitleScreen_CreateBubble(KSW_MainMenu_Buttons.shop,spr_KSW_Menu_TitleScreen_Bubble_Discord_Small,spr_KSW_Menu_TitleScreen_Bubble_Discord_Medium,spr_KSW_Menu_TitleScreen_Bubble_Discord_Big,spr_KSW_Menu_TitleScreen_Text_Discord);
scr_KSW_Menu_TitleScreen_CreateBubble(KSW_MainMenu_Buttons.discord,spr_KSW_Menu_TitleScreen_Bubble_Discord_Small,spr_KSW_Menu_TitleScreen_Bubble_Discord_Medium,spr_KSW_Menu_TitleScreen_Bubble_Discord_Big,spr_KSW_Menu_TitleScreen_Text_Discord);

bubbleOffsetMax = 20 / ln(bubbleCount);

with (obj_KSW_Menu_TitleScreen_Bubble)
{
	xAnchor = 48 + (((240 - 96) / (other.bubbleCount - 1)) * index);
	
	targetOffset = sign(index - global.KSW_MainMenuSelection) * other.bubbleOffsetMax;
	
	if (global.KSW_MainMenuSelection == index)
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
#endregion