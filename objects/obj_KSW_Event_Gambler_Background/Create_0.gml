///@description Create

#region Initialize Variables
speedMultFinal = global.speedMultGlobal * global.deltaTime;
localPause = global.pauseFinal;

alpha = 0;
alphaTarget = 1;

rainIndex = 0;
rainSpd = sprite_get_speed(spr_KSW_Event_Gambler_CoinRain) / 60;
rainNumber = sprite_get_number(spr_KSW_Event_Gambler_CoinRain);
#endregion