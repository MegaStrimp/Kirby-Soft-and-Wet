///@description Main

#region Variables
var canSelect = true;
if ((localPause) or
(instance_exists(obj_Transition)) or
(instance_exists(obj_KSW_PhaseShifter))) canSelect = false;
#endregion

#region Selection
if (canSelect)
{
	if ((input_check_pressed("B",playerNum)) or (keyboard_check_pressed(vk_escape)) or ((scr_MouseIsInbetween(4,144,43,156)) and (mouse_check_button_pressed(mb_left))))
	{
		scr_PlaySfx(snd_KSW_ButtonNo);
		
		scr_GoToRoom(rm_KSW_Menu_TitleScreen,false);
	}
	
	#region Phase Timer
	if (phaseTimer != -1)
	{
		phaseTimer = max(phaseTimer - speedMultFinal,0);
		if (phaseTimer == 0)
		{
			var targetPhase = scr_KSW_Game_UpdatePhase();
			if (global.KSW_CurrentPhase != targetPhase)
			{
				var phaseShifter = instance_create_depth(0,0,0,obj_KSW_PhaseShifter);
				with (phaseShifter)
				{
					phase = targetPhase;
				}
			}
			
			phaseTimer = phaseTimerMax;
		}
	}
	#endregion
}
#endregion

#region Bubble Timer
if (bubbleTimer != -1)
{
	bubbleTimer = max(bubbleTimer - speedMultFinal,0);
	if (bubbleTimer == 0)
	{
		scr_KSW_ParticleSet_Bubble(irandom_range(-10,room_width + 10),room_height,random_range(-.2,.2),irandom_range(-3,-2));
		
		bubbleTimer = bubbleTimerMax;
	}
}
#endregion

#region Debug
if ((global.debug) and (keyboard_check_pressed(ord("L"))))
{
	room_goto(rm_KSW_Menu_AquariumAlt);
}
#endregion

#region Button Input Timers
scr_Component_ButtonInputTimer_Step();
#endregion