///@description KSW - Player - Gooey - State - Normal - Step

function scr_KSW_Player_Gooey_State_Normal_Step()
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
			
			if (image_index >= 5)
			{
				scr_KSW_ThrowBobber();
				rodX = x + 13;
				rodY = y + 3;
				
				threwBobber = true;
			}
		}
		else
		{
			rodX = x + 13;
			rodY = y + 3;
		}
		break;
		
		case sprWait:
		rodX = x + 11;
		rodY = y - 1;
		break;
		
		case sprFound:
		switch (floor(image_index))
		{
			case 0:
			rodX = x + 13;
			rodY = y;
			break;
			
			default:
			rodX = x + 13;
			rodY = y + 1;
			break;
		}
		bobberShake = true;
		break;
		
		case sprUp:
		rodX = x + 13;
		rodY = y - 1;
		bobberShake = true;
		break;
		
		case sprUpAnim:
		switch (floor(image_index))
		{
			case 0:
			rodX = x + 13;
			rodY = y - 1;
			break;
			
			case 1:
			rodX = x + 10;
			rodY = y - 6;
			break;
			
			default:
			rodX = x + 11;
			rodY = y - 4;
			break;
		}
		bobberShake = true;
		break;
		
		case sprDown:
		rodX = x + 12;
		rodY = y - 2;
		bobberShake = true;
		break;
		
		case sprDownAnim:
		switch (floor(image_index))
		{
			case 0:
			rodX = x + 12;
			rodY = y - 2;
			break;
			
			case 1:
			rodX = x + 14;
			rodY = y;
			break;
			
			default:
			rodX = x + 13;
			rodY = y - 1;
			break;
		}
		bobberShake = true;
		break;
		
		case sprLeft:
		rodX = x + 10;
		rodY = y - 3;
		bobberShake = true;
		break;
		
		case sprLeftAnim:
		switch (floor(image_index))
		{
			case 0:
			rodX = x + 10;
			rodY = y - 3;
			break;
			
			default:
			rodX = x + 11;
			rodY = y - 3;
			break;
		}
		bobberShake = true;
		break;
		
		case sprRight:
		rodX = x + 13;
		rodY = y + 4;
		bobberShake = true;
		break;
		
		case sprRightAnim:
		switch (floor(image_index))
		{
			case 0:
			rodX = x + 13;
			rodY = y + 4;
			break;
			
			case 1:
			rodX = x + 15;
			rodY = y + 4;
			break;
			
			default:
			rodX = x + 14;
			rodY = y + 4;
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