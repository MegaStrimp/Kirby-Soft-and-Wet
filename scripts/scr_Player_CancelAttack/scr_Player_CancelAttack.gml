///@description Player - Cancel Attack

function scr_Player_CancelAttack(targetPlayer,targetAttack)
{
	with (targetPlayer)
	{
		#region Cancel Attack
		scr_Debug_WriteLog("Player " + string(playerNum) + " Cancelled [" + attackString + "]");
		
		isAttacking = false;
		attackIndexPrevious = attackIndex;
		attackIndex = -1;
		attackString = "";
		hasAttackAnimation = false;
		canCancelAttackAnimation = false;
		attackCanTurnSprite = true;
		attackStopMovement = false;
		attackStopGravity = false;
		attackMakeFlash = false;
		
		attackMakeLightInvincibleTimer = 15;
		attackMakeHeavyInvincibleTimer = 15;
		
		if (attackStopHspAfter) hsp = 0;
		attackStopHspAfter = false;
		if (attackStopVspAfter) vsp = 0;
		attackStopVspAfter = false;
		
		if (attackCancelTargetState != -1) scr_Player_ChangePlayerState_Step(id,attackCancelTargetState);
		
		attackCancelTimer = -1;
		#endregion
		
		#region Attack Cooldown
		if (attackCooldownTarget != -1) attackCooldown = attackCooldownTarget;
		if (attackCooldownSpecialTarget != -1) attackCooldownSpecial = attackCooldownSpecialTarget;
		
		attackCooldownTarget = -1;
		attackCooldownSpecialTarget = -1;
		#endregion
	}
}