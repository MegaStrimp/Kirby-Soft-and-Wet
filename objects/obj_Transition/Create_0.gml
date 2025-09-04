///@description Create

#region Initialize Variables
#region Fade Variables
alpha = 0;
alphaSpd = .05;
fade = 1;
#endregion

#region Misc Variables
pausable = true;

speedMultFinal = global.speedMultGlobal * global.deltaTime;
localPause = false;

targetRoom = rm_Startup;

transitionStep = -1;
transitionStepArgument0 = -1;

transitionDrawGUIEnd = -1;

activateTimer = -1;
#endregion
#endregion