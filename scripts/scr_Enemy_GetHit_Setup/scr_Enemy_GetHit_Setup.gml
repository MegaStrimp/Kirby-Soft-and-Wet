///@description Enemy - Get Hit - Setup

function scr_Enemy_GetHit_Setup(targetEnemy,targetHitbox)
{
	#region Get Hit
	if ((instance_exists(targetEnemy)) and (targetEnemy.canBeHit))
	{
		with (obj_Attack)
		{
			if ((place_meeting(x,y,targetHitbox)) and (dmg != -1) and (((!isMultiHit) and (targetEnemy.lastHitProjectile != id)) or ((isMultiHit) and (multiHitFlag))))
			{
				if (targetEnemy.enemyGetHitObject != -1) script_execute(targetEnemy.enemyGetHitObject,targetEnemy,id);
			}
		}
	}
	#endregion
}