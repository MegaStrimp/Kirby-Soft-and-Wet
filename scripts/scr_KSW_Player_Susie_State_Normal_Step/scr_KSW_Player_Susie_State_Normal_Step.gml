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
				rodX = x + 15;
				rodY = y - 29;
				
				threwBobber = true;
			}
		}
		else
		{
			switch (floor(image_index))
			{
				case 4:
				rodX = x + 15;
				rodY = y - 29;
				break;
				
				case 5:
				rodX = x + 25;
				rodY = y - 19;
				break;
				
				case 6:
				rodX = x + 31;
				rodY = y - 6;
				break;
				
				default:
				rodX = x + 31;
				rodY = y - 8;
				break;
			}
		}
		break;
		
		case sprWait:
		rodX = x + 23;
		rodY = y - 14;
		break;
		
		case sprFound:
		switch (floor(image_index))
		{
			case 0:
			rodX = x + 31;
			rodY = y - 7;
			break;
				
			default:
			rodX = x + 31;
			rodY = y - 6;
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
		rodX = x + 29;
		rodY = y + 11;
		bobberShake = true;
		break;
		
		case sprDownAnim:
		switch (floor(image_index))
		{
			case 0:
			rodX = x + 29;
			rodY = y + 8;
			break;
			
			case 1:
			rodX = x + 30;
			rodY = y + 12;
			break;
			
			default:
			rodX = x + 29;
			rodY = y + 11;
			break;
		}
		bobberShake = true;
		break;
		
		case sprLeft:
		rodX = x + 12;
		rodY = y - 31;
		bobberShake = true;
		break;
		
		case sprLeftAnim:
		switch (floor(image_index))
		{
			case 0:
			rodX = x + 12;
			rodY = y - 31;
			break;
			
			case 1:
			rodX = x + 14;
			rodY = y - 29;
			break;
			
			default:
			rodX = x + 12;
			rodY = y - 31;
			break;
		}
		bobberShake = true;
		break;
		
		case sprRight:
		rodX = x + 28;
		rodY = y - 3;
		bobberShake = true;
		break;
		
		case sprRightAnim:
		switch (floor(image_index))
		{
			case 0:
			rodX = x + 26;
			rodY = y - 9;
			break;
			
			case 1:
			rodX = x + 26;
			rodY = y - 5;
			break;
			
			default:
			rodX = x + 28;
			rodY = y - 3;
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