///@description Enemy - Get Hit - Object

function scr_Enemy_GetHit_Object(targetEnemy,targetObject)
{
	with (targetObject)
	{
		if ((!isEnemy) and ((targetEnemy.hp > 0) or (targetEnemy.canBeOverkilled)))
		{
			if (attackEnemyHitParticleIndex != -1) script_execute(attackEnemyHitParticleIndex,targetEnemy.x,targetEnemy.y);
			
			if (enemyHitBehavior != -1) script_execute(enemyHitBehavior);
			
			targetEnemy.flag_GetHit = true;
			
			targetEnemy.shakeX = 1;
			targetEnemy.shakeY = 1;
			
			if (canSetLastHitProjectile) targetEnemy.lastHitProjectile = id;
			
			var hitByFinisher = false;
			
			var knockbackAngleFinal = knockbackAngle;
			if (enemyKnockbackBehavior != -1) knockbackAngleFinal = script_execute(enemyKnockbackBehavior,id,targetEnemy);
			
			targetEnemy.receivedAttackOwner = owner;
			targetEnemy.receivedKnockbackAngle = knockbackAngleFinal;
			
			var dmgFinal = -1;
			if (targetEnemy.canBeHurt)
			{
				targetEnemy.palIndex = 2;
				dmgFinal = dmg;
				var dmgWithKnockback = dmg + knockbackForce;
				if ((canBeFinisher) and (dmgWithKnockback >= targetEnemy.hp))
				{
					hitByFinisher = true;
					dmgFinal = dmgWithKnockback;
				}
				
				targetEnemy.flag_GetHurt = true;
				
				if (targetEnemy.sprHurt != -1) targetEnemy.hurtFrame = scr_WeightedRandomize(targetEnemy.sprHurt);
				
				targetEnemy.hp = max(0,targetEnemy.hp - dmgFinal);
				targetEnemy.hurtTimer = floor(targetEnemy.hurtTimerTarget * enemyHurtTimerMult);
				targetEnemy.flashTimer = floor(targetEnemy.flashTimerTarget * enemyHurtTimerMult);
				
				if (targetEnemy.hp <= 0)
				{
					scr_Camera_SetScreenshake(0,1);
					
					targetEnemy.deathTimerMax = max(5,targetEnemy.deathTimerMax + (targetEnemy.hp / 6) - 1);
					targetEnemy.deathTimer = targetEnemy.deathTimerMax;
				}
			}
			
			var finalKnockbackForce = -1;
			if (targetEnemy.canHaveKnockback)
			{
				finalKnockbackForce = max(0,(knockbackForce / targetEnemy.knockbackResistance) * max(1,hitByFinisher * 2) * random_range(1,1.1) * speedMult);
				scr_Enemy_ReceiveKnockback(targetEnemy,finalKnockbackForce,knockbackAngleFinal);
			}
			
			var freezeFrameFinal = (targetEnemy.freezeFrameForce * freezeFrameForce * max(1,hitByFinisher * 3)) + ((targetEnemy.hp < 0) * 2);
			scr_Enemy_ReceiveFreezeFrame(targetEnemy,freezeFrameFinal);
			
			if (isMelee) owner.localFreezeFrameTimer = freezeFrameFinal;
			
			scr_Debug_WriteLog(string(object_get_name(targetEnemy.object_index)) + " " + string_copy(string(targetEnemy.id),14,6) + " Received " + string(dmgFinal) + " Damage And " + string(finalKnockbackForce) + " Knockback At " + string(knockbackAngleFinal) + " Degrees From " + string(object_get_name(targetObject.object_index)));
			
			if (destroyAfterHit) instance_destroy();
		}
	}
}