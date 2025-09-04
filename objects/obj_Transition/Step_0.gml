///@description Main

#region Transition
if (transitionStep != -1) script_execute(transitionStep,transitionStepArgument0);
#endregion

if (!localPause)
{
	#region Activate Timer
	if (activateTimer != -1)
	{
		activateTimer = max(activateTimer - speedMultFinal,0);
		if (activateTimer == 0)
		{
			activateTimer = -1;
		}
	}
	#endregion
}