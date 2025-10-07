///@description Main

#region Calib Mobe
if (global.debug) scr_KSW_Menu_Fishbook_CalibMode_Step();
#endregion

if (exitTimer == -1)
{
	#region Selection
	if (input_check_pressed("up",playerNum))
	{
		if (currentUpAction != -1) script_execute(currentUpAction);
	}
	
	if (input_check_pressed("down",playerNum))
	{
		if (currentDownAction != -1) script_execute(currentDownAction);
	}
	
	if (input_check_pressed("left",playerNum))
	{
		if (currentLeftAction != -1) script_execute(currentLeftAction);
	}
	
	if (input_check_pressed("right",playerNum))
	{
		if (currentRightAction != -1) script_execute(currentRightAction);
	}
	
	if (input_check_pressed("L",playerNum))
	{
		if (currentLAction != -1) script_execute(currentLAction);
	}
	
	if (input_check_pressed("R",playerNum))
	{
		if (currentRAction != -1) script_execute(currentRAction);
	}
	
	if ((input_check_pressed("A",playerNum)) or (input_check_pressed("start",playerNum)))
	{
		if (currentSelectAction != -1) script_execute(currentSelectAction);
	}
	
	if (input_check_pressed("B",playerNum))
	{
		if (currentBackAction != -1) script_execute(currentBackAction);
	}
	#endregion
}

#region Main
if (currentMainScript != -1) script_execute(currentMainScript);
#endregion

#region Exit Timer
if (exitTimer != -1)
{
	exitTimer = max(exitTimer - speedMultFinal,0);
	if (exitTimer == 0)
	{
		with (obj_KSW_UI_Customize_Bubble) instance_destroy();
		
		instance_destroy();
	}
}
#endregion

#region Displayed Coins - Y Offset Timer
if (displayedCoins_YOffsetTimer != -1)
{
	displayedCoins_YOffsetTimer = max(displayedCoins_YOffsetTimer - speedMultFinal,0);
	if (displayedCoins_YOffsetTimer == 0)
	{
		displayedCoins_YOffsetTimer = -1;
	}
}
#endregion

#region Button Input Timers
scr_Component_ButtonInputTimer_Step();
#endregion

#region Hint Offset
hintOffset = lerp(hintOffset,32 * (exitTimer != -1),.1);
#endregion