///@description Create

#region Initialize Variables
lightPeriod = irandom_range(900,1300);

switch (global.KSW_CurrentPhase)
{
	case KSW_Phases.day:
	bgColor1 = 134;
	bgSaturation1 = 255;
	bgValue1 = 255;
	
	bgColor2 = 142;
	bgSaturation2 = 255;
	bgValue2 = 255;
	break;
	
	case KSW_Phases.afternoon:
	bgColor1 = 23;
	bgSaturation1 = 204;
	bgValue1 = 255;
	
	bgColor2 = 247;
	bgSaturation2 = 127;
	bgValue2 = 255;
	break;
	
	case KSW_Phases.night:
	bgColor1 = 161;
	bgSaturation1 = 255;
	bgValue1 = 102;
	
	bgColor2 = 205;
	bgSaturation2 = 191;
	bgValue2 = 140;
	break;
}
#endregion