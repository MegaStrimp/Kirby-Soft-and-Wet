///@description Enemy - Death

function scr_Enemy_Death(targetEnemy)
{
	with (targetEnemy)
	{
		if (deathParticleIndex != -1) script_execute(deathParticleIndex,x,y);
		
		global.levelScoreCurrent += points;
		
		instance_destroy();
	}
}