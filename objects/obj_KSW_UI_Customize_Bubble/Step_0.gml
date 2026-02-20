///@description Main

if (!localPause)
{
	#region Offset
	offset = lerp(offset,targetOffset,.05);
	#endregion
	
	#region Movement
	var waveX = sine_wave(current_time / waveNum,1,3,0);
	var waveY = sine_wave(current_time / (waveNum + 300),.7,4,0);
	textWave = sine_wave(current_time / floor(waveNum * 1.5),1,4,0);
	
	x = xAnchor + offset + waveX;
	y = yAnchor + waveY;
	#endregion
	
	#region Mouse Click
	if ((position_meeting(mouse_x,mouse_y,id)) and (mouse_check_button_pressed(mb_left)))
	{
		with (obj_KSW_UI_Customize)
		{
			if (other.isBig)
			{
				mousePressedSelectedBubble = true;
			}
			else
			{
				mousePressedNewBubble = true;
				mousePressedNewBubble_Target = other.index;
			}
		}
	}
	#endregion
	
	#region Medium Timer
	if (mediumTimer != -1)
	{
		mediumTimer = max(mediumTimer - speedMultFinal,0);
		if (mediumTimer == 0)
		{
			if (isBig)
			{
				sprite_index = sprBig;
				sprBubble = spr_KSW_Menu_TitleScreen_Bubble_Big;
			}
			else
			{
				sprite_index = sprSmall;
				sprBubble = spr_KSW_Menu_TitleScreen_Bubble_Small;
			}
		
			mediumTimer = -1;
		}
	}
	#endregion
}