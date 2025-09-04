///@description Main

#region Variables
multiHitFlag = false;
#endregion

#region AI Step
if (attackAIStep != -1) script_execute(attackAIStep);
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
		
		if ((canGetHurt) and (other.dmg != -1) and (other.isEnemy) and (((!other.isMultiHit) and (lastHitProjectile != id)) or ((other.isMultiHit) and (other.multiHitFlag))))
		{
			if (hurtState == hurtStates.none)
			{
				if (place_meeting(x,y,other))
				{
					if (playerGetHitObject != -1) script_execute(playerGetHitObject,id,other);
				}
			}
		}
	}
	#endregion
	
	#region Multi Hit Timer
	if (multiHitTimer != -1)
	{
		multiHitTimer = max(multiHitTimer - speedMultFinal,0);
		if (multiHitTimer == 0)
		{
			multiHitCount += 1;
			multiHitFlag = true;
			multiHitTimer = multiHitTimerMax;
			
			if (multiHitEvent != -1) script_execute(multiHitEvent);
		}
	}
	#endregion
	
	#region Destroy Timer
	if (destroyTimer != -1)
	{
		destroyTimer = max(destroyTimer - speedMultFinal,0);
		if (destroyTimer == 0)
		{
			instance_destroy();
			
			destroyTimer = -1;
		}
	}
	#endregion
}

#region Scale
if (autoScale)
{
	image_xscale = scale * dirX;
	image_yscale = scale * dirY;
}
#endregion

#region Animation
image_speed = imageSpeed * speedMultFinal * !localPause;
#endregion