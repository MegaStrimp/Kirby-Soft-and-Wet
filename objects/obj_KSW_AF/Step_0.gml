///@description Main

#region Text Timer
if (textTimer != -1)
{
	textTimer = max(textTimer - speedMultFinal,0);
	if (textTimer == 0)
	{
		instance_create_depth(global.gameWidth / 2,159,depth - 1,obj_KSW_AF_Text);
		
		if (!textPlayed)
		{
			audio_stop_all();
			audio_play_sound(mus_KSW_Chica,0,true);
			
			textPlayed = true;
		}
		
		textTimer = textTimerMax;
	}
}
#endregion

#region Barrel Timer
if (barrelTimer != -1)
{
	barrelTimer = max(barrelTimer - speedMultFinal,0);
	if (barrelTimer == 0)
	{
		instance_create_depth(global.gameWidth / 2,159,depth - 1,obj_KSW_AF_Text);
		
		if (!textPlayed)
		{
			audio_stop_all();
			audio_play_sound(mus_KSW_Chica,0,true);
			
			textPlayed = true;
		}
		
		barrelTimer = -1;
	}
}
#endregion