///@description Main

#region State Step
if (playerStateStep != -1) script_execute(playerStateStep);
#endregion

#region Step
if (playerStep != -1) script_execute(playerStep);
#endregion

if (!global.pauseFinal)
{
	#region Button Buffers
	#region Down Held
    if ((input_check("down",playerNum)) and (downHeldBuffer < 1000)) downHeldBuffer += 1;
    if ((input_check_released("down",playerNum)) or (isAttacking)) downHeldBuffer = 0;
	#endregion
	#endregion
}

if (!localPause)
{
	#region Attack Make Light Invincible Timer
	if (attackMakeLightInvincibleTimer != -1)
	{
		attackMakeLightInvincibleTimer = max(attackMakeLightInvincibleTimer - speedMultFinal,0);
		if (attackMakeLightInvincibleTimer == 0)
		{
			attackMakeLightInvincible = false;
			
			attackMakeLightInvincibleTimer = -1;
		}
	}
	#endregion
	
	#region Attack Make Heavy Invincible Timer
	if (attackMakeHeavyInvincibleTimer != -1)
	{
		attackMakeHeavyInvincibleTimer = max(attackMakeHeavyInvincibleTimer - speedMultFinal,0);
		if (attackMakeHeavyInvincibleTimer == 0)
		{
			attackMakeHeavyInvincible = false;
			
			attackMakeHeavyInvincibleTimer = -1;
		}
	}
	#endregion
	
	#region Attack Cancel Timer
	if (attackCancelTimer != -1)
	{
		attackCancelTimer = max(attackCancelTimer - speedMultFinal,0);
		if (attackCancelTimer == 0)
		{
			scr_Player_CancelAttack(id,attackIndex);
		}
	}
	#endregion
	
	#region Attack Cooldown
	if (attackCooldown != -1)
	{
		attackCooldown = max(attackCooldown - speedMultFinal,0);
		if (attackCooldown == 0)
		{
			attackCooldown = -1;
		}
	}
	#endregion
	
	#region Attack Cooldown Special
	if (attackCooldownSpecial != -1)
	{
		attackCooldownSpecial = max(attackCooldownSpecial - speedMultFinal,0);
		if (attackCooldownSpecial == 0)
		{
			attackCooldownSpecial = -1;
		}
	}
	#endregion
	
	#region Hurt Timer
	if (hurtTimer != -1)
	{
		hurtTimer = max(hurtTimer - speedMultFinal,0);
		if (hurtTimer == 0)
		{
			if (hurtState == hurtStates.hurt)
			{
				hurtState = hurtStates.invincible;
				hurtTimer = hurtTimer_Invin;
			}
			else if (hurtState == hurtStates.invincible)
			{
				hurtState = hurtStates.none;
				hurtTimer = -1;
			}
		}
	}
	#endregion
	
	#region Flash Timer
	if (flashTimer != -1)
	{
		palIndex += 1;
		if (palIndex > 3) palIndex -= 3;
		
		flashTimer = max(flashTimer - speedMultFinal,0);
		if (flashTimer == 0)
		{
			palIndex = 1;
			flashTimer = -1;
		}
	}
	#endregion
}

#region Local Freeze Frame Timer
if (localFreezeFrameTimer != -1)
{
	localFreezeFrameTimer = max(localFreezeFrameTimer - speedMultFinal,0);
	if (localFreezeFrameTimer == 0)
	{
		localFreezeFrameTimer = -1;
	}
}
#endregion

#region Scale
if (attackCanTurnSprite)
{
	drawDirX = dirX;
	drawDirY = dirY;
}

image_xscale = scale * drawDirX;
image_yscale = scale * drawDirY;
#endregion

#region Animation
image_speed = imageSpeed * speedMultFinal * !localPause;
#endregion