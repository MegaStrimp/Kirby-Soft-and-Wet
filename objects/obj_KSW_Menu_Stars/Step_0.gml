///@description Main

#region Variables
var canSelect = true;
if ((localPause) or
(instance_exists(obj_Transition))) canSelect = false;
#endregion

#region Selection
if (canSelect)
{
	scr_KSW_Menu_Component_Navigate_Up();
	
	scr_KSW_Menu_Component_Navigate_Down();
	
	scr_KSW_Menu_Component_Navigate_Left();
	
	scr_KSW_Menu_Component_Navigate_Right();
	
	var pressFlag = scr_KSW_Menu_Component_SwitchPage_L();
	if (pressFlag)
	{
		for (var i = 0; i < pageSelectionCount; i++)
		{
			waveNum[i] = irandom_range(3600,5000);
		}
	}
	
	var pressFlag = scr_KSW_Menu_Component_SwitchPage_R();
	if (pressFlag)
	{
		for (var i = 0; i < pageSelectionCount; i++)
		{
			waveNum[i] = irandom_range(3600,5000);
		}
	}
	
	if (input_check_pressed("B",playerNum))
	{
		scr_PlaySfx(snd_KSW_ButtonNo);
		
		scr_GoToRoom(global.roomPrevious,false);
	}
}
#endregion

if (!localPause)
{
	#region Selection Animation
	selectionIndex = (selectionIndex + selectionSpd) % selectionNumber;
	selectionScale = 1 + sine_wave(current_time / 6000, .1, .05, 0);
	#endregion
	
	#region Star Movement
	#endregion
	
	#region Falling Star Timer
	if (fallingStarTimer != -1)
	{
		fallingStarTimer = max(fallingStarTimer - speedMultFinal,0);
		if (fallingStarTimer == 0)
		{
			scr_KSW_ParticleSet_FallingStar(irandom_range(40,400),-10);
			
			fallingStarTimer = fallingStarTimerMax;
		}
	}
	#endregion
	
	#region Button Input Timers
	scr_Component_ButtonInputTimer_Step();
	#endregion
}