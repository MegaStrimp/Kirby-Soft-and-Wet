///@description Component - Button Input Timer - Step

function scr_Component_ButtonInputTimer_Step()
{
	#region Button Input Up Timer
	if (input_check_pressed("up",playerNum)) buttonInputTimerComponent_UpTimer = buttonInputTimerComponent_TimerMax;
	
	if (buttonInputTimerComponent_UpTimer != -1)
	{
		buttonInputTimerComponent_UpTimer = max(buttonInputTimerComponent_UpTimer - speedMultFinal,0);
		if (buttonInputTimerComponent_UpTimer == 0)
		{
			buttonInputTimerComponent_UpTimer = -1;
		}
	}
	#endregion
	
	#region Button Input Down Timer
	if (input_check_pressed("down",playerNum)) buttonInputTimerComponent_DownTimer = buttonInputTimerComponent_TimerMax;
	
	if (buttonInputTimerComponent_DownTimer != -1)
	{
		buttonInputTimerComponent_DownTimer = max(buttonInputTimerComponent_DownTimer - speedMultFinal,0);
		if (buttonInputTimerComponent_DownTimer == 0)
		{
			buttonInputTimerComponent_DownTimer = -1;
		}
	}
	#endregion
	
	#region Button Input Left Timer
	if (input_check_pressed("left",playerNum)) buttonInputTimerComponent_LeftTimer = buttonInputTimerComponent_TimerMax;
	
	if (buttonInputTimerComponent_LeftTimer != -1)
	{
		buttonInputTimerComponent_LeftTimer = max(buttonInputTimerComponent_LeftTimer - speedMultFinal,0);
		if (buttonInputTimerComponent_LeftTimer == 0)
		{
			buttonInputTimerComponent_LeftTimer = -1;
		}
	}
	#endregion
	
	#region Button Input Right Timer
	if (input_check_pressed("right",playerNum)) buttonInputTimerComponent_RightTimer = buttonInputTimerComponent_TimerMax;
	
	if (buttonInputTimerComponent_RightTimer != -1)
	{
		buttonInputTimerComponent_RightTimer = max(buttonInputTimerComponent_RightTimer - speedMultFinal,0);
		if (buttonInputTimerComponent_RightTimer == 0)
		{
			buttonInputTimerComponent_RightTimer = -1;
		}
	}
	#endregion
	
	#region Button Input A Timer
	if (input_check_pressed("A",playerNum)) buttonInputTimerComponent_ATimer = buttonInputTimerComponent_TimerMax;
	
	if (buttonInputTimerComponent_ATimer != -1)
	{
		buttonInputTimerComponent_ATimer = max(buttonInputTimerComponent_ATimer - speedMultFinal,0);
		if (buttonInputTimerComponent_ATimer == 0)
		{
			buttonInputTimerComponent_ATimer = -1;
		}
	}
	#endregion
	
	#region Button Input B Timer
	if (input_check_pressed("B",playerNum)) buttonInputTimerComponent_BTimer = buttonInputTimerComponent_TimerMax;
	
	if (buttonInputTimerComponent_BTimer != -1)
	{
		buttonInputTimerComponent_BTimer = max(buttonInputTimerComponent_BTimer - speedMultFinal,0);
		if (buttonInputTimerComponent_BTimer == 0)
		{
			buttonInputTimerComponent_BTimer = -1;
		}
	}
	#endregion
	
	#region Button Input X Timer
	if (input_check_pressed("X",playerNum)) buttonInputTimerComponent_XTimer = buttonInputTimerComponent_TimerMax;
	
	if (buttonInputTimerComponent_XTimer != -1)
	{
		buttonInputTimerComponent_XTimer = max(buttonInputTimerComponent_XTimer - speedMultFinal,0);
		if (buttonInputTimerComponent_XTimer == 0)
		{
			buttonInputTimerComponent_XTimer = -1;
		}
	}
	#endregion
	
	#region Button Input Y Timer
	if (input_check_pressed("Y",playerNum)) buttonInputTimerComponent_YTimer = buttonInputTimerComponent_TimerMax;
	
	if (buttonInputTimerComponent_YTimer != -1)
	{
		buttonInputTimerComponent_YTimer = max(buttonInputTimerComponent_YTimer - speedMultFinal,0);
		if (buttonInputTimerComponent_YTimer == 0)
		{
			buttonInputTimerComponent_YTimer = -1;
		}
	}
	#endregion
	
	#region Button Input L Timer
	if (input_check_pressed("L",playerNum)) buttonInputTimerComponent_LTimer = buttonInputTimerComponent_TimerMax;
	
	if (buttonInputTimerComponent_LTimer != -1)
	{
		buttonInputTimerComponent_LTimer = max(buttonInputTimerComponent_LTimer - speedMultFinal,0);
		if (buttonInputTimerComponent_LTimer == 0)
		{
			buttonInputTimerComponent_LTimer = -1;
		}
	}
	#endregion
	
	#region Button Input R Timer
	if (input_check_pressed("R",playerNum)) buttonInputTimerComponent_RTimer = buttonInputTimerComponent_TimerMax;
	
	if (buttonInputTimerComponent_RTimer != -1)
	{
		buttonInputTimerComponent_RTimer = max(buttonInputTimerComponent_RTimer - speedMultFinal,0);
		if (buttonInputTimerComponent_RTimer == 0)
		{
			buttonInputTimerComponent_RTimer = -1;
		}
	}
	#endregion
	
	#region Button Input LT Timer
	if (input_check_pressed("LT",playerNum)) buttonInputTimerComponent_LTTimer = buttonInputTimerComponent_TimerMax;
	
	if (buttonInputTimerComponent_LTTimer != -1)
	{
		buttonInputTimerComponent_LTTimer = max(buttonInputTimerComponent_LTTimer - speedMultFinal,0);
		if (buttonInputTimerComponent_LTTimer == 0)
		{
			buttonInputTimerComponent_LTTimer = -1;
		}
	}
	#endregion
	
	#region Button Input RT Timer
	if (input_check_pressed("RT",playerNum)) buttonInputTimerComponent_RTTimer = buttonInputTimerComponent_TimerMax;
	
	if (buttonInputTimerComponent_RTTimer != -1)
	{
		buttonInputTimerComponent_RTTimer = max(buttonInputTimerComponent_RTTimer - speedMultFinal,0);
		if (buttonInputTimerComponent_RTTimer == 0)
		{
			buttonInputTimerComponent_RTTimer = -1;
		}
	}
	#endregion
	
	#region Button Input Start Timer
	if (input_check_pressed("start",playerNum)) buttonInputTimerComponent_StartTimer = buttonInputTimerComponent_TimerMax;
	
	if (buttonInputTimerComponent_StartTimer != -1)
	{
		buttonInputTimerComponent_StartTimer = max(buttonInputTimerComponent_StartTimer - speedMultFinal,0);
		if (buttonInputTimerComponent_StartTimer == 0)
		{
			buttonInputTimerComponent_StartTimer = -1;
		}
	}
	#endregion
	
	#region Button Input Select Timer
	if (input_check_pressed("select",playerNum)) buttonInputTimerComponent_SelectTimer = buttonInputTimerComponent_TimerMax;
	
	if (buttonInputTimerComponent_SelectTimer != -1)
	{
		buttonInputTimerComponent_SelectTimer = max(buttonInputTimerComponent_SelectTimer - speedMultFinal,0);
		if (buttonInputTimerComponent_SelectTimer == 0)
		{
			buttonInputTimerComponent_SelectTimer = -1;
		}
	}
	#endregion
}