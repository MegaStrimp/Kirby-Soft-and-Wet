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
	discord,
	
	length
}

playerNum = 0;

state = 0;

logoWave = 0;

bubbleWidthMax = 0;
phaseTimerMax = 3600;
phaseTimer = phaseTimerMax;
background_TextY = 48;

bubbleTimer = 0;
bubbleTimerMax = 10;

buttonsList_Max = KSW_MainMenu_Buttons.length - 1;

global.KSW_CurrentPhase = scr_KSW_Game_UpdatePhase();
#endregion
#endregion

#region Create Bubbles
var i = 0;
bubble[i] = instance_create_depth(48 + (36 * i),102,depth - 1,obj_KSW_Menu_TitleScreen_Bubble);
with (bubble[i])
{
	sprSmall = spr_KSW_Menu_TitleScreen_Bubble_Settings_Small;
	sprMedium = spr_KSW_Menu_TitleScreen_Bubble_Settings_Medium;
	sprBig = spr_KSW_Menu_TitleScreen_Bubble_Settings_Big;
	sprText = spr_KSW_Menu_TitleScreen_Text_Settings;
	
	number = KSW_MainMenu_Buttons.settings;
	
	if (global.KSW_MainMenuSelection == number)
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

i += 1;
bubble[i] = instance_create_depth(48 + (36 * i),102,depth - 1,obj_KSW_Menu_TitleScreen_Bubble);
with (bubble[i])
{
	sprSmall = spr_KSW_Menu_TitleScreen_Bubble_Stars_Small;
	sprMedium = spr_KSW_Menu_TitleScreen_Bubble_Stars_Medium;
	sprBig = spr_KSW_Menu_TitleScreen_Bubble_Stars_Big;
	sprText = spr_KSW_Menu_TitleScreen_Text_Stars;
	
	number = KSW_MainMenu_Buttons.stars;
	
	if (global.KSW_MainMenuSelection == number)
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

i += 1;
bubble[i] = instance_create_depth(48 + (36 * i),102,depth - 1,obj_KSW_Menu_TitleScreen_Bubble);
with (bubble[i])
{
	sprSmall = spr_KSW_Menu_TitleScreen_Bubble_StartFishing_Small;
	sprMedium = spr_KSW_Menu_TitleScreen_Bubble_StartFishing_Medium;
	sprBig = spr_KSW_Menu_TitleScreen_Bubble_StartFishing_Big;
	sprText = spr_KSW_Menu_TitleScreen_Text_StartFishing;
	
	number = KSW_MainMenu_Buttons.startFishing;
	
	if (global.KSW_MainMenuSelection == number)
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

i += 1;
bubble[i] = instance_create_depth(48 + (36 * i),102,depth - 1,obj_KSW_Menu_TitleScreen_Bubble);
with (bubble[i])
{
	sprSmall = spr_KSW_Menu_TitleScreen_Bubble_Fishbook_Small;
	sprMedium = spr_KSW_Menu_TitleScreen_Bubble_Fishbook_Medium;
	sprBig = spr_KSW_Menu_TitleScreen_Bubble_Fishbook_Big;
	sprText = spr_KSW_Menu_TitleScreen_Text_Fishbook;
	
	number = KSW_MainMenu_Buttons.fishbook;
	
	if (global.KSW_MainMenuSelection == number)
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

i += 1;
bubble[i] = instance_create_depth(48 + (36 * i),102,depth - 1,obj_KSW_Menu_TitleScreen_Bubble);
with (bubble[i])
{
	sprSmall = spr_KSW_Menu_TitleScreen_Bubble_Discord_Small;
	sprMedium = spr_KSW_Menu_TitleScreen_Bubble_Discord_Medium;
	sprBig = spr_KSW_Menu_TitleScreen_Bubble_Discord_Big;
	sprText = spr_KSW_Menu_TitleScreen_Text_Discord;
	
	number = KSW_MainMenu_Buttons.discord;
	
	if (global.KSW_MainMenuSelection == number)
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