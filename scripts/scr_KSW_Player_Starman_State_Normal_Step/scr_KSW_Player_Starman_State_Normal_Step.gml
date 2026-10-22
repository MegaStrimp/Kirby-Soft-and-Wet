///@description KSW - Player - Starman - State - Normal - Step

function scr_KSW_Player_Starman_State_Normal_Step()
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
			
			if (image_index >= 2)
			{
				scr_KSW_ThrowBobber();
				rodX = x + 30;
				rodY = y - 5;
				
				threwBobber = true;
			}
		}
		else
		{
			switch (floor(image_index))
			{
				case 2:
				rodX = x + 30;
				rodY = y - 5;
				break;
				
				case 3:
				rodX = x + 32;
				rodY = y;
				break;
				
				case 4:
				rodX = x + 32;
				rodY = y;
				break;
				
				default:
				rodX = x + 32;
				rodY = y;
				break;
			}
		}
		break;
		
		case sprWait:
		rodX = x + 15;
		rodY = y - 14;
		break;
		
		case sprFound:
		switch (floor(image_index))
		{
			case 0:
			rodX = x + 15;
			rodY = y - 14;
			break;
			
			case 1:
			rodX = x + 17;
			rodY = y - 13;
			break;
				
			default:
			rodX = x + 18;
			rodY = y - 13;
			break;
		}
		bobberShake = true;
		break;
		
		case sprUp:
		rodX = x + 11;
		rodY = y - 23;
		bobberShake = true;
		break;
		
		case sprUpAnim:
		switch (floor(image_index))
		{
			case 0:
			rodX = x + 11;
			rodY = y - 23;
			break;
			
			case 1:
			rodX = x + 11;
			rodY = y - 22;
			break;
			
			default:
			rodX = x + 11;
			rodY = y - 23;
			break;
		}
		bobberShake = true;
		break;
		
		case sprDown:
		rodX = x - 3;
		rodY = y - 21;
		bobberShake = true;
		break;
		
		case sprDownAnim:
		switch (floor(image_index))
		{
			case 0:
			rodX = x - 3;
			rodY = y - 21;
			break;
			
			case 1:
			rodX = x - 3;
			rodY = y - 20;
			break;
			
			default:
			rodX = x - 3;
			rodY = y - 21;
			break;
		}
		bobberShake = true;
		break;
		
		case sprLeft:
		rodX = x - 3;
		rodY = y - 19;
		bobberShake = true;
		break;
		
		case sprLeftAnim:
		switch (floor(image_index))
		{
			case 0:
			rodX = x - 3;
			rodY = y - 19;
			break;
			
			case 1:
			rodX = x + 2;
			rodY = y - 17;
			break;
			
			default:
			rodX = x + 4;
			rodY = y - 20;
			break;
		}
		bobberShake = true;
		break;
		
		case sprRight:
		rodX = x + 22;
		rodY = y - 21;
		bobberShake = true;
		break;
		
		case sprRightAnim:
		switch (floor(image_index))
		{
			case 0:
			rodX = x + 22;
			rodY = y - 21;
			break;
			
			case 1:
			rodX = x + 24;
			rodY = y - 19;
			break;
			
			default:
			rodX = x + 24;
			rodY = y - 19;
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
	
	bobberShineIndex = (bobberShineIndex + bobberShineSpd) % bobberShineNumber;
	#endregion
	
	#region Animation
	shakeX = isShaking;
	
	if (bobberX != -100) sprBobberImageIndex = (sprBobberImageIndex + (sprBobberSpeed * speedMultFinal)) % sprBobberImageNumber;
	#endregion
}