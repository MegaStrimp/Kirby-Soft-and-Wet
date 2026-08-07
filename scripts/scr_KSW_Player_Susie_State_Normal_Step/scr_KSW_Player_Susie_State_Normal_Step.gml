///@description KSW - Player - Susie - State - Normal - Step

function scr_KSW_Player_Susie_State_Normal_Step()
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
		baitTexture = -1;
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
			baitTexture = -1;
			
			if (image_index >= 4)
			{
				scr_KSW_ThrowBobber();
				rodX = x + 19;
				rodY = y - 35;
				
				threwBobber = true;
			}
		}
		else
		{
			switch (floor(image_index))
			{
				case 4:
				rodX = x + 19;
				rodY = y - 35;
				break;
				
				case 5:
				rodX = x + 29;
				rodY = y - 25;
				break;
				
				case 6:
				rodX = x + 35;
				rodY = y - 12;
				break;
				
				default:
				rodX = x + 35;
				rodY = y - 14;
				break;
			}
		}
		break;
		
		case sprWait:
		rodX = x + 27;
		rodY = y - 20;
		break;
		
		case sprFound:
		switch (floor(image_index))
		{
			case 0:
			rodX = x + 35;
			rodY = y - 13;
			break;
				
			default:
			rodX = x + 35;
			rodY = y - 12;
			break;
		}
		bobberShake = true;
		break;
		
		case sprUp:
		rodX = x + 21;
		rodY = y - 45;
		bobberShake = true;
		break;
		
		case sprUpAnim:
		switch (floor(image_index))
		{
			case 0:
			rodX = x + 21;
			rodY = y - 45;
			break;
			
			case 1:
			rodX = x + 20;
			rodY = y - 46;
			break;
			
			default:
			rodX = x + 22;
			rodY = y - 45;
			break;
		}
		bobberShake = true;
		break;
		
		case sprDown:
		rodX = x + 33;
		rodY = y + 5;
		bobberShake = true;
		break;
		
		case sprDownAnim:
		switch (floor(image_index))
		{
			case 0:
			rodX = x + 33;
			rodY = y + 2;
			break;
			
			case 1:
			rodX = x + 34;
			rodY = y + 6;
			break;
			
			default:
			rodX = x + 33;
			rodY = y + 5;
			break;
		}
		bobberShake = true;
		break;
		
		case sprLeft:
		rodX = x + 16;
		rodY = y - 37;
		bobberShake = true;
		break;
		
		case sprLeftAnim:
		switch (floor(image_index))
		{
			case 0:
			rodX = x + 16;
			rodY = y - 37;
			break;
			
			case 1:
			rodX = x + 18;
			rodY = y - 35;
			break;
			
			default:
			rodX = x + 16;
			rodY = y - 37;
			break;
		}
		bobberShake = true;
		break;
		
		case sprRight:
		rodX = x + 32;
		rodY = y - 9;
		bobberShake = true;
		break;
		
		case sprRightAnim:
		switch (floor(image_index))
		{
			case 0:
			rodX = x + 30;
			rodY = y - 15;
			break;
			
			case 1:
			rodX = x + 30;
			rodY = y - 11;
			break;
			
			default:
			rodX = x + 32;
			rodY = y - 9;
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
		baitTexture = -1;
		break;
		
		case sprSuccess:
		rodX = -100;
		rodY = -100;
		bobberX = -100;
		bobberY = -100;
		bobberXTarget = -100;
		bobberYTarget = -100;
		baitTexture = -1;
		break;
		
		default:
		rodX = x;
		rodY = y;
		break;
	}
	#endregion
	
	#region Bait Movement
	if (baitTexture != -1)
	{
		baitX = (baitX + baitHsp) % baitWidth;
		baitY = (baitY + baitVsp) % baitHeight;
		baitAngle = (baitAngle + baitHsp) % 360;
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