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
	
	if ((input_check_pressed("L",playerNum)) or ((!mousePressed) and (scr_MouseIsInbetween(71,3,82,15)) and (mouse_check_button_pressed(mb_left))))
	{
		mousePressed = true;
		
		if (currentLAction != -1) script_execute(currentLAction);
	}
	
	if ((input_check_pressed("R",playerNum)) or ((!mousePressed) and (scr_MouseIsInbetween(156,3,167,15)) and (mouse_check_button_pressed(mb_left))))
	{
		mousePressed = true;
		
		if (currentRAction != -1) script_execute(currentRAction);
	}
	
	if ((input_check_pressed("A",playerNum)) or (input_check_pressed("start",playerNum)) or (mouseSelected) or (mousePressedSelectedBubble) or ((!mousePressed) and (scr_MouseIsInbetween(182,144,235,156)) and (mouse_check_button_pressed(mb_left))))
	{
		mousePressed = true;
		
		if (currentSelectAction != -1) script_execute(currentSelectAction);
	}
	
	if ((input_check_pressed("Y",playerNum)) or ((scr_MouseIsInbetween(90,144,150,156)) and (mouse_check_button_pressed(mb_left))))
	{
		mousePressed = true;
		
		if (currentExtraAction != -1) script_execute(currentExtraAction);
	}
	
	if ((input_check_pressed("B",playerNum)) or ((!mousePressed) and (scr_MouseIsInbetween(4,144,43,156)) and (mouse_check_button_pressed(mb_left))))
	{
		mousePressed = true;
		
		if (currentBackAction != -1) script_execute(currentBackAction);
	}
	#endregion
}

#region Reset Variables
mouseSelected = false;
#endregion

#region Main
if (currentMainScript != -1) script_execute(currentMainScript);
#endregion

#region Reset Variables
mousePressedNewBubble = false;
mousePressedSelectedBubble = false;
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