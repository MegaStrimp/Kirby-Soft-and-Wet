///@description Main

#region AI Step
if (wallStateStep != -1) script_execute(wallStateStep);
#endregion

if (!localPause)
{
	#region Enemy Wall
	if (other.enemyWallOwner != -1)
	{
		if (enemyWallOwner.enemyGetHitSetup != -1) script_execute(enemyWallOwner.enemyGetHitSetup,enemyWallOwner,id);
	}
	#endregion
	
	with (obj_Attack)
	{
		if ((other.hp > 0) and (other.canBeHit))
		{
			if (canBreakBlocks)
			{
				if ((place_meeting(x,y,other)) and ((other.lastHitProjectile != id) or ((isMultiHit) and (multiHitFlag))))
				{
					if (!isEnemy)
					{
						if ((isMelee) and (other.freezeFrameForce != -1)) owner.localFreezeFrameTimer = other.freezeFrameForce;
					}
					
					if (other.hitSfxIndex != -1) scr_PlaySfx(other.hitSfxIndex);
					
					other.lastHitProjectile = id;
					
					other.receivedAttackOwner = owner;
					other.receivedKnockbackAngle = knockbackAngle;
					other.hp = max(0,other.hp - dmg);
					
					if (((destroyAfterCollideWall) and (other.groundPlatformType == groundPlatformTypes.none)) or ((destroyAfterCollidePlatform) and (other.groundPlatformType != groundPlatformTypes.none)))
					{
						if (attackWallHitParticleIndex != -1) script_execute(attackWallHitParticleIndex,x,y);
						
						instance_destroy();
					}
				}
			}
		}
		else
		{
			if ((((destroyAfterCollideWall) and (other.groundPlatformType == groundPlatformTypes.none)) or ((destroyAfterCollidePlatform) and (other.groundPlatformType != groundPlatformTypes.none))) and (place_meeting(x,y,other)))
			{
				if (attackWallHitParticleIndex != -1) script_execute(attackWallHitParticleIndex,x,y);
				
				instance_destroy();
			}
		}
	}
	
	#region Destroy Timer
	if (destroyTimer != -1)
	{
		destroyTimer = max(destroyTimer - speedMultFinal,0);
		if (destroyTimer == 0)
		{
			hp = 0;
			destroyTimer = -1;
		}
	}
	#endregion
	
	if (hp == 0)
	{
		if (deathParticleIndex != -1) script_execute(deathParticleIndex,x + 8,y + 8);
		if (deathIndex != -1) script_execute(deathIndex);
	
		instance_destroy();
	}
}