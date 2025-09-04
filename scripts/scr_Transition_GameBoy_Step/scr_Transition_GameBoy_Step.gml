///@description Transition - GameBoy - Step

function scr_Transition_GameBoy_Step(targetColor)
{
	#region Go To Target Room
	if (alpha == 1)
	{
		if (global.savePreviousRoom) global.roomPrevious = room;
	    room_goto(targetRoom);
	    fade = -1;
	}
	#endregion
	
	#region Set Alpha
	if (((pausable) and (!global.pauseFinal)) or (!pausable)) alpha = clamp(alpha + (fade * alphaSpd),0,1);
	
	switch (targetColor)
	{
		default:
		if (alpha >= 0) alphaRound = 5;
		if (alpha >= .33) alphaRound = 6;
		if (alpha >= .66) alphaRound = 7;
		break;
		
		case 1:
		if (alpha >= 0) alphaRound = 1;
		if (alpha >= .33) alphaRound = 2;
		if (alpha >= .66) alphaRound = 3;
		break;
	}
	
	global.screenPaletteIndex = other.alphaRound + 1;
	#endregion
	
	#region Destroy
	if ((alpha == 0) and (fade == -1))
	{
	    instance_destroy();
		global.screenPaletteIndex = screenPaletteIndexPrevious;
	}
	#endregion
}