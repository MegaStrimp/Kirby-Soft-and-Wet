///@description Entity - Gravity

function scr_Entity_Gravity(targetValue,targetGrav,targetGravLimit,targetSpeedMult)
{
	if (targetValue < (targetGravLimit * targetSpeedMult))
	{
		targetValue += targetGrav * (targetSpeedMult * targetSpeedMult);
	}
	else
	{
		targetValue = targetGravLimit * targetSpeedMult;
	}
	
	return targetValue;
	
}