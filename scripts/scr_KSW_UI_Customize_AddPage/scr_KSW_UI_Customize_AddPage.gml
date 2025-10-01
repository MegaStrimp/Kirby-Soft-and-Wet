///@description KSW - UI - Customize - Add Page

function scr_KSW_UI_Customize_AddPage(targetID,targetSetupScript,targetMainScript,targetSelectAction,targetBackAction,targetUpAction,targetDownAction,targetLeftAction,targetRightAction,targetLAction,targetRAction,targetDrawScript)
{
	ds_map_add(KSW_PageIDs,targetID,KSW_PageCount);
	
	KSW_PageList[KSW_PageCount] = 
	{
        ID: targetID,
        setupScript: targetSetupScript,
        mainScript: targetMainScript,
		selectAction: targetSelectAction,
		backAction: targetBackAction,
		upAction: targetUpAction,
		downAction: targetDownAction,
		leftAction: targetLeftAction,
		rightAction: targetRightAction,
		lAction: targetLAction,
		rAction: targetRAction,
        drawScript: targetDrawScript,
    };
	
	KSW_PageCount += 1;
}