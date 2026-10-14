///@description KSW - Player - Kabula - State - Normal - Step

function scr_KSW_Player_Kabula_State_Normal_Step()
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
				rodX = x + 29;
				rodY = y - 11;
				
				scr_PlaySfx(snd_KSW_Character_Kabula_Throw);
				scr_KSW_ParticleSet_KabulaExplosion(x + 29,y - 11);
				
				threwBobber = true;
			}
		}
		else
		{
			switch (floor(image_index))
			{
				case 4:
				rodX = x + 29;
				rodY = y - 11;
				break;
				
				case 5:
				rodX = x + 29;
				rodY = y - 11;
				break;
				
				default:
				rodX = x + 26;
				rodY = y - 11;
				break;
			}
		}
		break;
		
		case sprWait:
		rodX = x + 25;
		rodY = y - 11;
		break;
		
		case sprFound:
		rodX = x + 25;
		rodY = y - 11;
		bobberShake = true;
		break;
		
		case sprUp:
		rodX = x + 25;
		rodY = y - 11;
		bobberShake = true;
		break;
		
		case sprUpAnim:
		rodX = x + 25;
		rodY = y - 11;
		bobberShake = true;
		break;
		
		case sprDown:
		rodX = x + 25;
		rodY = y - 11;
		bobberShake = true;
		break;
		
		case sprDownAnim:
		rodX = x + 25;
		rodY = y - 11;
		bobberShake = true;
		break;
		
		case sprLeft:
		rodX = x + 25;
		rodY = y - 11;
		bobberShake = true;
		break;
		
		case sprLeftAnim:
		rodX = x + 25;
		rodY = y - 11;
		bobberShake = true;
		break;
		
		case sprRight:
		rodX = x + 25;
		rodY = y - 11;
		bobberShake = true;
		break;
		
		case sprRightAnim:
		switch (floor(image_index))
		{
			case 0:
			rodX = x + 25;
			rodY = y - 11;
			break;
			
			case 1:
			rodX = x + 25;
			rodY = y - 11;
			break;
			
			default:
			rodX = x + 25;
			rodY = y - 11;
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