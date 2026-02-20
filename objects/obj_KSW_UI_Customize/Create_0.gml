///@description Create

#region Initialize Variables
#region Component Setup
scr_Component_ButtonInputTimer_Setup(5);
#endregion

#region Gameplay Variables
enum KSW_UI_Customize_Bubbles
{
	characters,
	sprayPaints,
	hats,
	bobbers,
	baits,
	rubies,
	music,
	stages
}

playerNum = 0;

selection = 0;
selectionList = -1;
currentPage = 0;

currentSetupScript = -1;
currentMainScript = -1;
currentSelectAction = -1;
currentBackAction = -1;
currentUpAction = -1;
currentDownAction = -1;
currentLeftAction = -1;
currentRightAction = -1;
currentLAction = -1;
currentRAction = -1;
currentDrawScript = -1;

exitTimer = -1;
exitTimerMax = 10;

hintOffset = 32;

displayedCoins_YOffsetTimer = -1;
displayedCoins_YOffsetTimerMax = 4;

switchStage = false;

coinsVisible = true;

mousePressed = false;
mousePressedNewBubble = false;
mousePressedNewBubble_Target = -1;
mousePressedSelectedBubble = false;
mouseSelected = false;

scr_KSW_UI_Customize_SetPages();

scr_KSW_UI_Customize_ChangePage("main");

scr_KSW_Menu_Fishbook_CalibMode_Setup();
#endregion
#endregion