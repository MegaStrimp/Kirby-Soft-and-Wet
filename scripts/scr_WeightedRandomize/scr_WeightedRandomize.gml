///@description Weighted Randomize

function scr_WeightedRandomize(array)
{
	#region Variables
	var arrSize = array_length(array);
	var sum = 0;
	var weightSum = 0;
	var finalValue = array[0][0];
	#endregion
	
	#region Calculate
	for (var i = 0; i < arrSize; i++)
	{
		sum += array[i][1];
	}
	
	var rng = irandom_range(1,sum);
	
	for (var i = 0; i < arrSize; i++)
	{
		weightSum += array[i][1];
		if (rng <= weightSum)
		{
			finalValue = i;
			break;
		}
	}
	#endregion
	
	#region Return
	return finalValue;
	#endregion
}