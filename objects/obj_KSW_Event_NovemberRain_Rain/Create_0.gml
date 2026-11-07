///@description Create

#region Initialize Variables
speedMultFinal = global.speedMultGlobal * global.deltaTime;
localPause = global.pauseFinal;

rainIndex = 0;
rainSpd = sprite_get_speed(spr_KSW_Event_NovemberRain_Rain) / 60;
rainNumber = sprite_get_number(spr_KSW_Event_NovemberRain_Rain);
#endregion