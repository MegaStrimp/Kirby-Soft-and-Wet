///@description KSW - Player - Kirby - State - Normal - Step

function scr_KSW_Player_Kirby_State_Normal_Step()
{
	#region Setup
	if (playerState_Setup)
	{
		playerState_Setup = false;
	}
	#endregion
	
	#region Rod Position
	bobberShake = false;
	
	switch (sprite_index)
	{
		case sprReady:
		rodX = -100;
		rodY = -100;
		bobberX = -100;
		bobberY = -100;
		bobberXTarget = -100;
		bobberYTarget = -100;
		break;
		
		case sprThrow:
		if (!threwBobber)
		{
			rodX = -100;
			rodY = -100;
			bobberX = -100;
			bobberY = -100;
			bobberXTarget = -100;
			bobberYTarget = -100;
			
			if (image_index >= 4)
			{
				scr_KSW_Player_ThrowBobber();
				rodX = x + 15;
				rodY = y - 24;
				
				threwBobber = true;
			}
		}
		else
		{
			switch (floor(image_index))
			{
				case 4:
				rodX = x + 15;
				rodY = y - 24;
				break;
				
				case 5:
				rodX = x + 27;
				rodY = y - 16;
				break;
				
				case 6:
				rodX = x + 35;
				rodY = y - 5;
				break;
				
				default:
				rodX = x + 35;
				rodY = y - 9;
				break;
			}
		}
		break;
		
		case sprWait:
		rodX = x + 29;
		rodY = y - 13;
		break;
		
		case sprFound:
		rodX = x + 35;
		rodY = y - 8;
		bobberShake = true;
		break;
		
		case sprUp:
		rodX = x + 17;
		rodY = y - 33;
		bobberShake = true;
		break;
		
		case sprUpAnim:
		switch (floor(image_index))
		{
			case 0:
			rodX = x + 16;
			rodY = y - 32;
			break;
			
			case 1:
			rodX = x + 16;
			rodY = y - 34;
			break;
			
			default:
			rodX = x + 17;
			rodY = y - 33;
			break;
		}
		bobberShake = true;
		break;
		
		case sprDown:
		rodX = x + 31;
		rodY = y + 7;
		bobberShake = true;
		break;
		
		case sprDownAnim:
		switch (floor(image_index))
		{
			case 0:
			rodX = x + 31;
			rodY = y + 5;
			break;
			
			case 1:
			rodX = x + 30;
			rodY = y + 7;
			break;
			
			default:
			rodX = x + 31;
			rodY = y + 7;
			break;
		}
		bobberShake = true;
		break;
		
		case sprLeft:
		rodX = x + 9;
		rodY = y - 31;
		bobberShake = true;
		break;
		
		case sprLeftAnim:
		switch (floor(image_index))
		{
			default:
			rodX = x + 9;
			rodY = y - 31;
			break;
		}
		bobberShake = true;
		break;
		
		case sprRight:
		rodX = x + 34;
		rodY = y - 12;
		bobberShake = true;
		break;
		
		case sprRightAnim:
		switch (floor(image_index))
		{
			case 0:
			rodX = x + 33;
			rodY = y - 19;
			break;
			
			case 1:
			rodX = x + 39;
			rodY = y - 14;
			break;
			
			default:
			rodX = x + 34;
			rodY = y - 12;
			break;
		}
		bobberShake = true;
		break;
		
		case sprFailed:
		rodX = -100;
		rodY = -100;
		bobberX = -100;
		bobberY = -100;
		bobberXTarget = -100;
		bobberYTarget = -100;
		break;
		
		case sprSuccess:
		rodX = -100;
		rodY = -100;
		bobberX = -100;
		bobberY = -100;
		bobberXTarget = -100;
		bobberYTarget = -100;
		break;
		
		default:
		rodX = x;
		rodY = y;
		break;
	}
	#endregion
	
	#region Bobber Movement
	var targetLerpSpd = .05;
	if (bobberY >= 120) targetLerpSpd = .025;
	
	if (!bobberShake)
	{
		bobberX = lerp(bobberX,bobberXTarget,targetLerpSpd);
		bobberY = lerp(bobberY,bobberYTarget,targetLerpSpd);
		
		if (bobberYTarget != -100)
		{
			if (bobberY >= 120)
			{
				if (!bobberInWater)
				{
					scr_PlaySfx(snd_KSW_BaitInWater);
					scr_PlaySfx(snd_KSW_Splash1);
					
					bobberInWater = true;
				}
				
				bobberYTarget -= 3;
			}
			else
			{
				bobberYTarget += 3;
			}
		}
	}
	#endregion
	
	#region Animation
	shakeX = isShaking;
	
	if (bobberX != -100) sprBobberImageIndex = (sprBobberImageIndex + (sprBobberSpeed * speedMultFinal)) % sprBobberImageNumber;
	#endregion
}