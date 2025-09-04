///@description Main

if (!localPause)
{
	#region Wave
	wave = sine_wave(current_time / 2000,1,4,0);
	#endregion
	
	#region Text Movement
	textVsp = lerp(textVsp,-.1,.05);
	textY += textVsp;
	#endregion
	
	#region Strimp Movement
	strimpIndex = (strimpIndex + strimpAnimSpd) % strimpImageNumber;
	if (state == 2)
	{
		strimpVsp = lerp(strimpVsp,-1,.02);
		strimpBubbleSize = min(1,strimpBubbleSize + .02);
	}
	strimpY += strimpVsp;
	#endregion
	
	#region Skip
	if ((!instance_exists(obj_Transition)) and ((input_check_pressed("start",playerNum))))
	{
		audio_stop_sound(global.musicPlaying);
		global.musicPlaying = audio_play_sound(mus_KSW_Title,0,true);
		audio_sound_set_track_position(global.musicPlaying,49);
		
		var fade = scr_GoToRoom(rm_KSW_Menu_TitleScreen,false);
		with (fade)
		{
			fadeColor = c_white;
			alphaSpd = 0.02;
		}
		
		stateTimer = -1;
	}
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
				stateTimer = 120;
				break;
				
				case 2:
				scr_PlaySfx(snd_KSW_Bubble1);
				
				stateTimer = 120;
				break;
				
				case 3:
				creditsBubbleTimer = 0;
				
				stateTimer = 150;
				break;
				
				case 4:
				audio_stop_sound(global.musicPlaying);
				global.musicPlaying = audio_play_sound(mus_KSW_Title,0,true);
				audio_sound_set_track_position(global.musicPlaying,49);
				
				stateTimer = 30;
				break;
				
				case 5:
				var fade = scr_GoToRoom(rm_KSW_Menu_TitleScreen,false);
				with (fade)
				{
					fadeColor = c_white;
					alphaSpd = 0.02;
				}
				
				stateTimer = -1;
				break;
			}
		}
	}
	#endregion
	
	#region Strimp Bubble Timer
	if (strimpBubbleTimer != -1)
	{
		strimpBubbleTimer = max(strimpBubbleTimer - speedMultFinal,0);
		if (strimpBubbleTimer == 0)
		{
			scr_PlaySfx(snd_KSW_Bubble1);
			
			for (var i = 0; i < irandom_range(1,4); i++)
			{
				scr_KSW_ParticleSet_Bubble((room_width / 2) - 40 + irandom_range(0,5),textY + irandom_range(-25,25),irandom_range(-1,0),irandom_range(-3,-2));
				scr_KSW_ParticleSet_Bubble((room_width / 2) + 40 - irandom_range(0,5),textY + irandom_range(-25,25),irandom_range(0,1),irandom_range(-3,-2));
			}
			
			if (strimpBubbleTimerCount <= 0)
			{
				strimpBubbleTimer = -1;
			}
			else
			{
				strimpBubbleTimerCount -= 1;
				
				strimpBubbleTimer = strimpBubbleTimerMax;
			}
		}
	}
	#endregion
	
	#region Credits Bubble Timer
	if (creditsBubbleTimer != -1)
	{
		creditsBubbleTimer = max(creditsBubbleTimer - speedMultFinal,0);
		if (creditsBubbleTimer == 0)
		{
			scr_PlaySfx(snd_KSW_Bubble1);
			
			for (var i = 0; i < irandom_range(1,4); i++)
			{
				scr_KSW_ParticleSet_Bubble(31 - 25 + irandom_range(0,5),51 + wave + irandom_range(-25,25),irandom_range(-1,0),irandom_range(-3,-2));
				scr_KSW_ParticleSet_Bubble(31 + 25 - irandom_range(0,5),51 + wave + irandom_range(-25,25),irandom_range(0,1),irandom_range(-3,-2));
				
				scr_KSW_ParticleSet_Bubble(209 - 25 + irandom_range(0,5),85 + wave + irandom_range(-25,25),irandom_range(-1,0),irandom_range(-3,-2));
				scr_KSW_ParticleSet_Bubble(209 + 25 - irandom_range(0,5),85 + wave + irandom_range(-25,25),irandom_range(0,1),irandom_range(-3,-2));
			}
			
			if (creditsBubbleTimerCount <= 0)
			{
				creditsBubbleTimer = -1;
			}
			else
			{
				creditsBubbleTimerCount -= 1;
				
				creditsBubbleTimer = creditsBubbleTimerMax;
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
			scr_KSW_ParticleSet_Bubble(irandom_range(-10,room_width + 10),room_height,random_range(-.2,.2),irandom_range(-3,-2));
			
			bubbleTimer = bubbleTimerMax;
		}
	}
	#endregion
}