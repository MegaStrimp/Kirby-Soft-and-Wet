///@description Create

#region Initialize Variables
lightPeriod = irandom_range(900,1300);

switch (global.KSW_CurrentPhase)
{
	case KSW_Phases.day:
	bgColor1 = global.KSW_StageList[global.KSW_CurrentStageID].dayBgColors[0];
	bgSaturation1 = global.KSW_StageList[global.KSW_CurrentStageID].dayBgColors[1];
	bgValue1 = global.KSW_StageList[global.KSW_CurrentStageID].dayBgColors[2];
	
	bgColor2 = global.KSW_StageList[global.KSW_CurrentStageID].dayBgColors[3];
	bgSaturation2 = global.KSW_StageList[global.KSW_CurrentStageID].dayBgColors[4];
	bgValue2 = global.KSW_StageList[global.KSW_CurrentStageID].dayBgColors[5];
	break;
	
	case KSW_Phases.afternoon:
	bgColor1 = global.KSW_StageList[global.KSW_CurrentStageID].afternoonBgColors[0];
	bgSaturation1 = global.KSW_StageList[global.KSW_CurrentStageID].afternoonBgColors[1];
	bgValue1 = global.KSW_StageList[global.KSW_CurrentStageID].afternoonBgColors[2];
	
	bgColor2 = global.KSW_StageList[global.KSW_CurrentStageID].afternoonBgColors[3];
	bgSaturation2 = global.KSW_StageList[global.KSW_CurrentStageID].afternoonBgColors[4];
	bgValue2 = global.KSW_StageList[global.KSW_CurrentStageID].afternoonBgColors[5];
	break;
	
	case KSW_Phases.night:
	bgColor1 = global.KSW_StageList[global.KSW_CurrentStageID].nightBgColors[0];
	bgSaturation1 = global.KSW_StageList[global.KSW_CurrentStageID].nightBgColors[1];
	bgValue1 = global.KSW_StageList[global.KSW_CurrentStageID].nightBgColors[2];
	
	bgColor2 = global.KSW_StageList[global.KSW_CurrentStageID].nightBgColors[3];
	bgSaturation2 = global.KSW_StageList[global.KSW_CurrentStageID].nightBgColors[4];
	bgValue2 = global.KSW_StageList[global.KSW_CurrentStageID].nightBgColors[5];
	break;
}
#endregion