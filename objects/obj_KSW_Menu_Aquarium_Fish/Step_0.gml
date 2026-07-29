///@description Main

if (!localPause)
{
	#region Movement
	scr_Component_WalkAndTurn_Step();
	
	if (x <= 8)
	{
		dirX = 1;
	}
	else if (x >= room_width - 8)
	{
		dirX = -1;
	}
	#endregion
	
	#region Sound Timer
	if (soundTimer != -1)
	{
		soundTimer = max(soundTimer - speedMultFinal,0);
		if (soundTimer == 0)
		{
			if (catchAudio != -1)
			{
				var sfx = scr_PlaySfx(catchAudio);
				audio_sound_pitch(sfx,random_range(1 - catchAudioPitchOffset,1 + catchAudioPitchOffset));
			}
			
			soundTimer = irandom_range(soundTimerMax,soundTimerMax * 5);
		}
	}
	#endregion
	
	#region Position
	scr_Component_SetPosition(hsp,vsp);
	#endregion
}