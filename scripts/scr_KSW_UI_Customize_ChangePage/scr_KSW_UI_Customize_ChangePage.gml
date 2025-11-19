///@description KSW - Menu - Title Screen - Change Page

function scr_KSW_UI_Customize_ChangePage(targetPageID)
{
	var finalID = KSW_PageIDs[? targetPageID];
	
	currentSetupScript = KSW_PageList[finalID].setupScript;
	currentMainScript = KSW_PageList[finalID].mainScript;
	currentSelectAction = KSW_PageList[finalID].selectAction;
	currentBackAction = KSW_PageList[finalID].backAction;
	currentUpAction = KSW_PageList[finalID].upAction;
	currentDownAction = KSW_PageList[finalID].downAction;
	currentLeftAction = KSW_PageList[finalID].leftAction;
	currentRightAction = KSW_PageList[finalID].rightAction;
	currentLAction = KSW_PageList[finalID].lAction;
	currentRAction = KSW_PageList[finalID].rAction;
	currentXAction = KSW_PageList[finalID].xAction;
	currentDrawScript = KSW_PageList[finalID].drawScript;
	
	if (currentSetupScript != -1) script_execute(currentSetupScript);
}