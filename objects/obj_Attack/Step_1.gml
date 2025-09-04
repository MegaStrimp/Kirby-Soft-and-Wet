///@description Begin Step

#region Destroy
if ((!isEnemy) and (owner != -1) and (instance_exists(owner)))
{
	if ((destroyIfOwnerNotAttack) and (!owner.isAttacking)) instance_destroy();
}
#endregion

#region Destroy Outside View
if ((destroyOutsideView) and (scr_Entity_OutsideView(32))) instance_destroy();
#endregion

#region Variables
if (followOwner)
{
	speedMultFinal = owner.speedMultFinal;
	localPause = owner.localPause;
}
else
{
	speedMultFinal = speedMult * global.speedMultGlobal * global.deltaTime;
	localPause = ((global.pauseFinal) and (canBePaused));
}
#endregion

#region AI Begin Step
if (attackAIBeginStep != -1) script_execute(attackAIBeginStep);
#endregion