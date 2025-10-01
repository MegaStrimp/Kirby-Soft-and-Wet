///@description Main

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

#region Button Input Timers
scr_Component_ButtonInputTimer_Step();
#endregion

#region Hint Offset
hintOffset = lerp(hintOffset,32 * (exitTimer != -1),.1);
#endregion