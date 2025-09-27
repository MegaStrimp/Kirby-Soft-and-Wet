///@description Create

#region Initialize Variables
#region Component Setup
starList = [];
for (var i = 0; i < global.KSW_TotalAchievementCount; i++)
{
	if ((!global.KSW_AchievementList[i].isHidden) or (global.KSW_AchievementList[i].isObtained))
	{
		starList[array_length(starList)] = i;
	}
}
scr_KSW_Menu_Component_Navigate_Setup(array_length(starList));
scr_KSW_Menu_Component_SwitchPage_Setup(4,2);
scr_Component_ButtonInputTimer_Setup(5);
#endregion

#region Menu Variables
playerNum = 0;

selectionScale = 1;
isCompleted = (global.KSW_ObtainedAchievementCount >= global.KSW_VisibleAchievementCount);

for (var i = 0; i < 8; i++)
{
	waveNum[i] = irandom_range(3600,5000);
}

selectionIndex = 0;
selectionSpd = sprite_get_speed(spr_KSW_Menu_Stars_Selection) / 60;
selectionNumber = sprite_get_number(spr_KSW_Menu_Stars_Selection);

fallingStarTimer = 0;
fallingStarTimerMax = 30;
#endregion
#endregion