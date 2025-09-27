///@description Main

#region Variables
var canSelect = true;
if ((localPause) or
(instance_exists(obj_Transition))) canSelect = false;

var selectionStart = page * 8;
var selectionEnd = min((page + 1) * 8,buttonsList_Max);
#endregion

#region Selection
if (canSelect)
{
	if (input_check_pressed("up",playerNum))
	{
		scr_PlaySfx(snd_KSW_BossHealth);
		
		selection -= 2;
		if (selection < selectionStart) selection = ((selectionStart - 1) + ((ceil((selectionEnd - selectionStart) / 2) - 1) * 2) + (1 + ((2 + selection) % 2)));
		if (selection >= selectionEnd) selection -= 2;
	}
	
	if (input_check_pressed("down",playerNum))
	{
		scr_PlaySfx(snd_KSW_BossHealth);
		
		selection += 2;
		if (selection >= selectionEnd) selection = (selectionStart + (selection % 2));
	}
	
	if (input_check_pressed("left",playerNum))
	{
		scr_PlaySfx(snd_KSW_BossHealth);
		
		if ((selection % 2) == 0)
		{
			selection = min(selection + 1,selectionEnd - 1);
		}
		else
		{
			selection -= 1;
		}
	}
	
	if (input_check_pressed("right",playerNum))
	{
		scr_PlaySfx(snd_KSW_BossHealth);
		
		if ((selection % 2) == 1)
		{
			selection -= 1;
		}
		else if ((selection) >= selectionEnd - 1)
		{
			selection -= (selection % 2);
		}
		else
		{
			selection += 1;
		}
	}
	
	if (input_check_pressed("L",playerNum))
	{
		scr_PlaySfx(snd_KSW_ButtonChange);
		
		for (var i = 0; i < 8; i++)
		{
			waveNum[i] = irandom_range(3600,5000);
		}
		
		if (page == 0)
		{
			page = page_Max;
		}
		else
		{
			page -= 1;
		}
		selection = min(((page + 1) * 8) - 1,buttonsList_Max - 1);
	}
	
	if (input_check_pressed("R",playerNum))
	{
		scr_PlaySfx(snd_KSW_ButtonChange);
		
		for (var i = 0; i < 8; i++)
		{
			waveNum[i] = irandom_range(3600,5000);
		}
		
		if (page == page_Max)
		{
			page = 0;
		}
		else
		{
			page += 1;
		}
		selection = page * 8;
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