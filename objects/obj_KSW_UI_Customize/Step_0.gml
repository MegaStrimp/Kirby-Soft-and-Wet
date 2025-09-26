///@description Main

if (exitTimer == -1)
{
	#region Close
	if (input_check_pressed("B",playerNum))
	{
		scr_PlaySfx(snd_KSW_ButtonNo);
	
		global.pause = false;
	
		exitTimer = exitTimerMax;
	}
	#endregion

	#region Go To Shop
	if (input_check_pressed("X",playerNum))
	{
		scr_PlaySfx(snd_KSW_ButtonChange);
		
		goToShop = true;
		
		exitTimer = exitTimerMax;
	}
	#endregion
}

#region Exit Timer
if (exitTimer != -1)
{
	exitTimer = max(exitTimer - speedMultFinal,0);
	if (exitTimer == 0)
	{
		if (goToShop)
		{
			scr_GoToRoom(rm_KSW_Menu_Shop,false);
		}
		else
		{
			with (obj_KSW_UI_Customize_Bubble) instance_destroy();
			
			instance_destroy();
		}
	}
}
#endregion

#region Button Input Timers
scr_Component_ButtonInputTimer_Step();
#endregion

#region Hint Offset
hintOffset = lerp(hintOffset,32 * (exitTimer != -1),.1);
#endregion