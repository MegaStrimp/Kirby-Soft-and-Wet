///@description Create

#region Initialize Variables
canBePaused = true;
speedMultFinal = global.speedMultGlobal * global.deltaTime;
localPause = ((global.pauseFinal) and (canBePaused));

title = "";
description = "";

destroyTimer = 210;
#endregion