///@description Enemy - Receive Knockback

function scr_Enemy_ReceiveKnockback(targetEnemy,knockbackForce,knockbackAngle)
{
	targetEnemy.hasKnockback = true;
	targetEnemy.knockbackTimer = -1;
	targetEnemy.knockbackCheckTimer = targetEnemy.knockbackCheckTimerMax;
	
	targetEnemy.hsp = lengthdir_x(knockbackForce,knockbackAngle);
	targetEnemy.vsp = lengthdir_y(knockbackForce,knockbackAngle);
}