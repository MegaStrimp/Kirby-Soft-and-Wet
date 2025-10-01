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
	music,
	stages
}

playerNum = 0;

selection = 0;
currentPage = 0;

currentSetupScript = undefined;
currentSelectAction = undefined;
currentBackAction = undefined;
currentUpAction = undefined;
currentDownAction = undefined;
currentLeftAction = undefined;
currentRightAction = undefined;
currentLAction = undefined;
currentRAction = undefined;
currentDrawScript = undefined;

exitTimer = -1;
exitTimerMax = 10;

hintOffset = 32;

scr_KSW_UI_Customize_SetPages();

scr_KSW_UI_Customize_ChangePage("main");
#endregion
#endregion