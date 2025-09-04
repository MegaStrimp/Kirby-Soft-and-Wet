///@description Main

#region AI Step
if (enemyAIStep != -1) script_execute(enemyAIStep);
#endregion

#region Step
if (enemyStep != -1) script_execute(enemyStep);
#endregion
			
if (!localPause)
{
	#region Hurt Player
	with (obj_Player)
	{
		var canGetHurt = true;
		if (
		((attackMakeLightInvincible) and (!other.canBreakLightInvincibility)) or 
		(attackMakeHeavyInvincible)
		) canGetHurt = false;
		
		var enemyCanHurtWhenHurt = true;
		if ((!other.canHurtWhenHurt) and !((other.flashTimer == -1) and (other.hurtTimer == -1))) enemyCanHurtWhenHurt = false;
		
		if (canGetHurt)
		{
			if ((other.dmg != -1) and (other.canHurtPlayer) and (enemyCanHurtWhenHurt) and (other.hp > 0))
			{
				if (place_meeting(x,y,other))
				{
					if (hurtState == hurtStates.none)
					{
						if (playerGetHitContact != -1) script_execute(playerGetHitContact,id,other);
					}
					else if ((other.contactHitTimer == -1) and (other.canBeHitContact) and (!other.isBoss))
					{
						if (other.enemyGetHit != -1)
						{
							other.contactHitTimer = floor(other.contactHitTimerTarget);
							script_execute(other.enemyGetHit,other,dmg,knockbackForce,knockbackAngle,id);
						}
					}
				}
			}
		}
	}
	#endregion
	
	#region Hurt Timer
	if (hurtTimer != -1)
	{
		hurtTimer = max(hurtTimer - speedMultFinal,0);
		if ((hurtTimer == 0) and ((!hasKnockback) or (!knockbackEffectsHurt)))
		{
			hurtTimer = -1;
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
			if (hp <= 0)
			{
				flashTimer = flashTimerTargetDeath;
			}
			else
			{
				flashTimer = -1;
			}
		}
	}
	#endregion
	
	#region Contact Hit Timer
	if (contactHitTimer != -1)
	{
		contactHitTimer = max(contactHitTimer - speedMultFinal,0);
		if (contactHitTimer == 0)
		{
			contactHitTimer = -1;
		}
	}
	#endregion
	
	#region Death Timer
	if (deathTimer != -1)
	{
		deathTimer = max(deathTimer - speedMultFinal,0);
		if (deathTimer == 0)
		{
			/*if (deathParticleIndex != -1) script_execute(deathParticleIndex,x,y);
			
			var knockbackAngleFinal = receivedKnockbackAngle;
			if ((hsp != 0) or (vsp != 0)) knockbackAngleFinal = darctan2(-hsp,-vsp);
			scr_MKSS_SpawnMetaPoint(metaPointsOnDeath,x,y,depth - 1,receivedAttackOwner,knockbackAngleFinal);
			
			global.levelScoreCurrent += points;
			
			instance_destroy();*/
			if (enemyDeath != -1) script_execute(enemyDeath,id);
			
			deathTimer = -1;
		}
	}
	#endregion
	
	#region Knockback Timer
	if (knockbackTimer != -1)
	{
		knockbackTimer = max(knockbackTimer - speedMultFinal,0);
		if (knockbackTimer == 0)
		{
			hasKnockback = false;
			knockbackTimer = -1;
		}
	}
	#endregion
	
	#region Knockback Check Timer
	if (knockbackCheckTimer != -1)
	{
		knockbackCheckTimer = max(knockbackCheckTimer - speedMultFinal,0);
		if (knockbackCheckTimer == 0)
		{
			knockbackCheckTimer = -1;
		}
	}
	#endregion
	
	#region Get Hit
	if (enemyGetHitSetup != -1) script_execute(enemyGetHitSetup,id,id);
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
if (dirXEffectDraw) drawDirX = dirX;
if (dirYEffectDraw) drawDirY = dirY;

image_xscale = scale * drawDirX;
image_yscale = scale * drawDirY;
#endregion

#region Animation
image_speed = imageSpeed * speedMultFinal * !localPause;
#endregion