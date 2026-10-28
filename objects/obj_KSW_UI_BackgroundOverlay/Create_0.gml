///@description Create

#region Initialize Variables
canBePaused = true;
speedMultFinal = global.speedMultGlobal * global.deltaTime;
localPause = ((global.pauseFinal) and (canBePaused));

colorList = [c_black];
colorListIndex = 0;

colorTimer = -1;
colorTimerMax = -1;

destroyTimer = -1;

alpha = .5;
alphaSpd = .1;

canFadeOut = false;
fadeOut = false;
#endregion