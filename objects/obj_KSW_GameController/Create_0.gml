///@description Create

#region Game States
enum KSW_GameStates
{
	idle_Ready,
	idle,
	waiting_Ready,
	waiting,
	waiting_End,
	catching,
	catchAnimation,
	catched
}
#endregion

#region Initialize Variables
#region Component Setup
scr_Component_ButtonInputTimer_Setup(5);
#endregion

#region Gameplay Variables
playerNum = 0;

state = KSW_GameStates.idle_Ready;

currentFishPool = scr_KSW_Game_SetPool();
currentFish = -1;
currentFishIsNew = false;
currentFishIsShiny = false;

findFishTimer = -1;

catchInput_CurrentList = -1;
catchInput_CurrentLine = -1;
catchInput_SoundCount = -1;
catchInput_CurrentLineMax = -1;
catchInput_Sfx = [snd_KSW_CatchInput1,snd_KSW_CatchInput2,snd_KSW_CatchInput3,snd_KSW_CatchInput4,snd_KSW_CatchInput5,snd_KSW_CatchInput6,snd_KSW_CatchInput7];
catchInput_SfxIndex = 0;
catchInput_NextLineTimer = -1;
catchInput_NextLineTimerMax = 60;
catchInput_UpTriggered = false;
catchInput_DownTriggered = false;
catchInput_LeftTriggered = false;
catchInput_RightTriggered = false;

canGoToMenu = false;
canGoToFishbook = false;

exitTarget = rm_KSW_Menu_TitleScreen;
exitTimer = -1;
exitTimerMax = 20;

stateReadyTimer = 30;
stateReadyTimerMax = 15;

displayedScore = global.levelScoreCurrent;
displayedScore_YOffsetTimer = -1;
displayedScore_YOffsetTimerMax = 4;

catchCombo_YOffsetTimer = -1;
catchCombo_YOffsetTimerMax = 4;

failTimer = -1;
failTimerTarget = -1;
failTimerMax = 150;
failTimerMin = 10;

failTimerBarTextureX = 0;
failTimerBarTextureWidth = 16;

phaseTimerMax = 3600;
phaseTimer = phaseTimerMax;

decorTimerMin = 7200;
decorTimerMax = 72000;
decorTimer = irandom_range(decorTimerMin,decorTimerMax);

catchAnimationState = 0;
catchAnimationTimer = -1;

flag_ScoreSfx = false;

canOffset = false;
hintOffset = 0;

bubbleIndex = 0;
bubbleSpd = sprite_get_speed(spr_KSW_UI_CatchInput_Active) / 60;
bubbleNumber = sprite_get_number(spr_KSW_UI_CatchInput_Active);

global.KSW_CurrentPhase = scr_KSW_Game_UpdatePhase();
#endregion
#endregion

#region Update Discord
scr_KSW_Game_UpdateDiscord();
#endregion