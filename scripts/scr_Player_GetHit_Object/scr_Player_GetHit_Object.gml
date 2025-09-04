///@description Player - Get Hit - Object

function scr_Player_GetHit_Object(targetPlayer,targetObject)
{
	with (targetPlayer)
	{
		scr_Debug_WriteLog("Player " + string(playerNum) + " Got Hit");
		
		var hurtDir = 1;
		if (targetObject.x > targetPlayer.x) hurtDir = -1;
		
		hsp = 2 * hurtDir;
		vsp = 0;
		hurtState = hurtStates.hurt;
		hurtTimer = hurtTimer_Hurt;
		lastHitProjectile = targetObject;
		
		global.playerHp[playerNum] -= targetObject.dmg;
		if (global.playerHp[playerNum] <= 0)
		{
			if (playerDeath != -1) script_execute(playerDeath,targetPlayer);
		}
	}
}