///@description Begin Step

#region Variables
speedMultFinal = global.speedMultGlobal * global.deltaTime;
localPause = (global.pauseFinal) and (canBePaused);

if (particleAfterDeath[0] != -1) particleAfterDeath[array_length(particleAfterDeath)] = -1;
#endregion

#region Special Behavior
if (specialBehavior_BeginStep != -1) script_execute(specialBehavior_BeginStep);
#endregion