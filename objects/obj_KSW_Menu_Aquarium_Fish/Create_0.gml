///@description Initialize Variables

#region Initialize Variables
#region Component Setup
hsp = 0;
vsp = 0;
scr_Component_WalkAndTurn_Setup(random_range(.1,.5),random_range(.005,.03),-1,-1);
#endregion

#region Menu Variables
palSprite = -1;

isShiny = false;

catchAudio = -1;
catchAudioPitchOffset = -1;
soundTimerMax = 60;
soundTimer = -1;
#endregion
#endregion