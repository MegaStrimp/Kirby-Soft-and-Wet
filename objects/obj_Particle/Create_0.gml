///@description Create

#region Particle Attributes
hsp = 0;
vsp = 0;
grav = 0;
gravLimit = 0;
decelX = 0;
decelY = 0;

speedMultFinal = global.speedMultGlobal * global.deltaTime;
localPause = false;

specialBehavior_BeginStep = -1;
specialBehavior_Step = -1;
specialBehavior_EndStep = -1;

inGUI = false;
destroyAfterAnimation = false;
stopAfterAnimation = false;
imageSpeed = 1;
particleAfterDeath[0] = -1;
rotateTimer = -1;
rotateTimerMax = -1;
rotateSpd = 0;
canBePaused = true;

scale = 1;
dirX = 1;
dirY = 1;
#endregion

#region Palette Variables
palSprite = -1;
palIndex = 1;
palSpd = 0;
#endregion

#region Timers
destroyTimer = -1;
#endregion