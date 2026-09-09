///@description KSW - Player - Adventure Kirby - State - Normal - Step

function scr_KSW_Player_AdventureKirby_State_Normal_Step()
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
				rodY = y - 25;
				
				threwBobber = true;
			}
		}
		else
		{
			switch (floor(image_index))
			{
				case 4:
				rodX = x + 19;
				rodY = y - 25;
				break;
				
				case 5:
				rodX = x + 27;
				rodY = y - 18;
				break;
				
				case 6:
				rodX = x + 35;
				rodY = y - 4;
				break;
				
				default:
				rodX = x + 35;
				rodY = y - 7;
				break;
			}
		}
		break;
		
		case sprWait:
		rodX = x + 28;
		rodY = y - 13;
		break;
		
		case sprFound:
		switch (floor(image_index))
		{
			case 0:
			rodX = x + 33;
			rodY = y - 5;
			break;
				
			default:
			rodX = x + 34;
			rodY = y - 4;
			break;
		}
		bobberShake = true;
		break;
		
		case sprUp:
		rodX = x + 12;
		rodY = y - 30;
		bobberShake = true;
		break;
		
		case sprUpAnim:
		switch (floor(image_index))
		{
			case 0:
			rodX = x + 11;
			rodY = y - 29;
			break;
			
			case 1:
			rodX = x + 11;
			rodY = y - 32;
			break;
			
			default:
			rodX = x + 12;
			rodY = y - 30;
			break;
		}
		bobberShake = true;
		break;
		
		case sprDown:
		rodX = x + 29;
		rodY = y + 6;
		bobberShake = true;
		break;
		
		case sprDownAnim:
		switch (floor(image_index))
		{
			case 0:
			rodX = x + 29;
			rodY = y + 5;
			break;
			
			case 1:
			rodX = x + 28;
			rodY = y + 7;
			break;
			
			default:
			rodX = x + 29;
			rodY = y + 6;
			break;
		}
		bobberShake = true;
		break;
		
		case sprLeft:
		rodX = x + 7;
		rodY = y - 30;
		bobberShake = true;
		break;
		
		case sprLeftAnim:
		switch (floor(image_index))
		{
			case 0:
			rodX = x + 6;
			rodY = y - 30;
			break;
			
			case 1:
			rodX = x + 11;
			rodY = y - 30;
			break;
			
			default:
			rodX = x + 7;
			rodY = y - 30;
			break;
		}
		bobberShake = true;
		break;
		
		case sprRight:
		rodX = x + 31;
		rodY = y - 10;
		bobberShake = true;
		break;
		
		case sprRightAnim:
		switch (floor(image_index))
		{
			case 0:
			rodX = x + 32;
			rodY = y - 20;
			break;
			
			case 1:
			rodX = x + 35;
			rodY = y - 14;
			break;
			
			default:
			rodX = x + 31;
			rodY = y - 10;
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