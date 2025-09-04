///@description Enemy - Get Hit

function scr_Enemy_GetHit(targetEnemy,dealtDamage,dealtKnockback,knockbackAngle,attackOwner = -1)
{
	with (targetEnemy)
	{
		if (hitParticleIndex != -1) script_execute(hitParticleIndex,x,y);
			
		flag_GetHit = true;
		
		targetEnemy.receivedAttackOwner = attackOwner;
		
		var knockbackAngleFinal = knockbackAngle;
		
		var dmgFinal = dealtDamage;
		
		if (targetEnemy.canBeHurt)
		{
			palIndex = 2;
			
			flag_GetHurt = true;
				
			if (sprHurt != -1) hurtFrame = scr_WeightedRandomize(sprHurt);
			
			hp = max(0,hp - dmgFinal);
			hurtTimer = floor(hurtTimerTarget);
			flashTimer = floor(flashTimerTarget);
			
			if (hp <= 0)
			{
				scr_Camera_SetScreenshake(0,1);
				
				deathTimerMax = max(5,deathTimerMax + (hp / 6) - 1);
				deathTimer = deathTimerMax;
			}
		}
		
		var finalKnockbackForce = -1;
		if (canHaveKnockback)
		{
			finalKnockbackForce = max(0,(dealtKnockback / knockbackResistance) * random_range(1,1.1) * speedMult);
			scr_Enemy_ReceiveKnockback(targetEnemy,finalKnockbackForce,knockbackAngleFinal);
		}
		
		scr_Debug_WriteLog(string(object_get_name(object_index)) + " " + string_copy(string(id),14,6) + " Received " + string(dmgFinal) + " Damage." + string(finalKnockbackForce) + " Knockback At " + string(knockbackAngleFinal) + " Degrees From " + string(object_get_name(attackOwner.object_index)));
	}
}