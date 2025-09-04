///@description Entity - Friction

function scr_Entity_Friction(targetValue,targetDecel)
{
	if (targetValue >= targetDecel) targetValue -= targetDecel;
	if (targetValue <= -targetDecel) targetValue += targetDecel;
	if ((targetValue > -targetDecel) and (targetValue < targetDecel)) targetValue = 0;
	
	return targetValue;
}