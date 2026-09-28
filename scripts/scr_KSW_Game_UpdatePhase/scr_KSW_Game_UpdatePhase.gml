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
	else if ((currentHour >= 12) and (currentHour < 20))
	{
	    targetPhase = KSW_Phases.afternoon;
	}
	else
	{
	    targetPhase = KSW_Phases.night;
	}
	
	if (global.KSW_ForcedPhase != KSW_Phases.none) targetPhase = global.KSW_ForcedPhase;
	
	switch (targetPhase)
	{
		case KSW_Phases.day:
		global.KSW_BubblePalette = spr_KSW_UI_CatchInput_Palette_Day;
		break;
		
		case KSW_Phases.afternoon:
		global.KSW_BubblePalette = spr_KSW_UI_CatchInput_Palette_Afternoon;
		break;
		
		case KSW_Phases.night:
		global.KSW_BubblePalette = spr_KSW_UI_CatchInput_Palette_Night;
		break;
	}
	
	return targetPhase;
}