///@description Player - Get Hit

function scr_Player_GetHit(targetPlayer,dealtDamage)
{
	with (targetPlayer)
	{
		scr_Debug_WriteLog("Player " + string(playerNum) + " Got Hit");
		
		hsp = 2 * hurtDir;
		vsp = 0;
		hurtState = hurtStates.hurt;
		hurtTimer = hurtTimer_Hurt;
		
		global.playerHp[playerNum] -= dealtDamage;
		if (global.playerHp[playerNum] <= 0)
		{
			if (playerDeath != -1) script_execute(playerDeath,id);
		}
	}
}