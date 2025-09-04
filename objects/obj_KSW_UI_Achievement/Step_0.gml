///@description Main

if (!localPause)
{
	#region Play Sound
	if (!soundPlayed)
	{
		scr_PlaySfx(snd_KSW_StarGet);
		
		soundPlayed = true;
	}
	#endregion
	
	#region Movement
	boxY = lerp(boxY,targetBoxY,.1);
	#endregion
	
	#region Wave
	wave = sine_wave(current_time / 2000,1,1,0);
	#endregion
	
	#region State Timer
	if (stateTimer != -1)
	{
		stateTimer = max(stateTimer - speedMultFinal,0);
		if (stateTimer == 0)
		{
			state += 1;
			
			switch (state)
			{
				case 1:
				targetBoxY = -50;
				
				stateTimer = 30;
				break;
				
				case 2:
				var nextAchievementNotif = ds_list_find_value(global.notifQueue,0);
				if (nextAchievementNotif != undefined)
				{
					scr_KSW_UI_Achievement_Create(nextAchievementNotif);
					
					ds_list_delete(global.notifQueue,0);
				}
				
				instance_destroy();
				
				stateTimer = -1;
				break;
			}
		}
	}
	#endregion
	
	#region Bubble Timer
	if (bubbleTimer != -1)
	{
		bubbleTimer = max(bubbleTimer - speedMultFinal,0);
		if (bubbleTimer == 0)
		{
			scr_PlaySfx(snd_KSW_Bubble1);
			
			for (var i = 0; i < irandom_range(1,4); i++)
			{
				scr_KSW_ParticleSet_Bubble(camera_get_view_x(mainView) + (room_width / 2) - 60 + irandom_range(0,5),camera_get_view_y(mainView) + boxY + irandom_range(0,48),irandom_range(-1,0),irandom_range(-3,-2));
				scr_KSW_ParticleSet_Bubble(camera_get_view_x(mainView) + (room_width / 2) + 60 - irandom_range(0,5),camera_get_view_y(mainView) + boxY + irandom_range(0,48),irandom_range(0,1),irandom_range(-3,-2));
			}
			
			if (bubbleTimerCount <= 0)
			{
				bubbleTimer = -1;
			}
			else
			{
				bubbleTimerCount -= 1;
			
				bubbleTimer = bubbleTimerMax;
			}
		}
	}
	#endregion
}