///@description Create

#region Initialize Variables
#region Menu Variables
playerNum = 0;

state = 0;
stateTimer = 30;

wave = 0;

textY = -30;
textVsp = 6;

strimpIndex = 0;
strimpAnimSpd = sprite_get_speed(spr_KSW_Menu_SplashScreen_Strimp) / 60;
strimpImageNumber = sprite_get_number(spr_KSW_Menu_SplashScreen_Strimp);
strimpY = 0;
strimpVsp = 0;
strimpBubbleSize = 0;
strimpBubbleTimerCount = irandom_range(3,6);
strimpBubbleTimer = 5;
strimpBubbleTimerMax = 4;

creditsBubbleTimerCount = irandom_range(3,6);
creditsBubbleTimer = -1;
creditsBubbleTimerMax = 4;

bubbleTimer = 0;
bubbleTimerMax = 10;

global.KSW_CurrentPhase = scr_KSW_Game_UpdatePhase();
#endregion
#endregion