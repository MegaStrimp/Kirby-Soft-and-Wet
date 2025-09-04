///@description Create

#region Initialize Variables
#region Sprites
sprSmall = spr_KSW_Menu_TitleScreen_Bubble_Settings_Small;
sprMedium = spr_KSW_Menu_TitleScreen_Bubble_Settings_Medium;
sprBig = spr_KSW_Menu_TitleScreen_Bubble_Settings_Big;
sprBubble = spr_KSW_Menu_TitleScreen_Bubble_Small;
sprText = spr_KSW_Menu_TitleScreen_Text_Settings;
#endregion

#region Bubble Variables
number = KSW_MainMenu_Buttons.settings;
mediumTimer = -1;
mediumTimerMax = 2;
isBig = false;
waveNum = irandom_range(3600,5000);
textWave = 0;
#endregion
#endregion