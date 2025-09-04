///@description KSW - Game - Update Phase

function scr_KSW_Game_UpdatePhase()
{
	var currentHour = current_hour;
	if (global.debug) currentHour = irandom_range(0,23);
	var targetPhase = KSW_Phases.none;
	
	if (currentHour >= 4) and (currentHour < 12)
	{
	    targetPhase = KSW_Phases.day;
	}
	else if ((currentHour) >= 12 and (currentHour < 20))
	{
	    targetPhase = KSW_Phases.afternoon;
	}
	else
	{
	    targetPhase = KSW_Phases.night;
	}
	
	return targetPhase;
}