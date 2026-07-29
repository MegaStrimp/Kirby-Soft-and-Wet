///@description Main

#region Variables
var canSelect = true;
if ((localPause) or
(instance_exists(obj_Transition))) canSelect = false;
#endregion

#region Selection
if (canSelect)
{
	if (input_check_pressed("up",playerNum))
	{
		scr_KSW_Menu_Component_Navigate_Up();
	}
	
	if (input_check_pressed("down",playerNum))
	{
		scr_KSW_Menu_Component_Navigate_Down();
	}
	
	if (input_check_pressed("left",playerNum))
	{
		scr_KSW_Menu_Component_Navigate_Left();
	}
	
	if (input_check_pressed("right",playerNum))
	{
		scr_KSW_Menu_Component_Navigate_Right();
	}
	
	if ((input_check_pressed("L",playerNum)) or ((scr_MouseIsInbetween(71,3,82,15)) and (mouse_check_button_pressed(mb_left))))
	{
		scr_KSW_Menu_Component_SwitchPage_L();
		
		for (var i = 0; i < pageSelectionCount; i++)
		{
			waveNum[i] = irandom_range(3600,5000);
		}
	}
	
	if ((input_check_pressed("R",playerNum)) or ((scr_MouseIsInbetween(156,3,167,15)) and (mouse_check_button_pressed(mb_left))))
	{
		scr_KSW_Menu_Component_SwitchPage_R();
		
		for (var i = 0; i < pageSelectionCount; i++)
		{
			waveNum[i] = irandom_range(3600,5000);
		}
	}
	
	for (var i = page * pageSelectionCount; i < min((page + 1) * pageSelectionCount,selectionCount); i++)
	{
		var starX = 25 + (120 * (i % 2));
		var starY = 32 + (32 * floor((i - page * pageSelectionCount) / 2));
		
		if ((scr_MouseIsInbetween(starX - 12,starY - 12,starX + 12,starY + 12)) and (mouse_check_button_pressed(mb_left)))
		{
			scr_PlaySfx(snd_KSW_BossHealth);
			
			selection = i;
		}
	}
	
	if ((input_check_pressed("B",playerNum)) or ((scr_MouseIsInbetween(4,144,43,156)) and (mouse_check_button_pressed(mb_left))))
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