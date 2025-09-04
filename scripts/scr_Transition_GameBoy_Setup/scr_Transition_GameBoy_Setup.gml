///@description Transition - GameBoy - Setup

function scr_Transition_GameBoy_Setup()
{
	#region Set Transition Scripts
	transitionStep = scr_Transition_GameBoy_Step;
	#endregion
	
	#region Initialize Transition Variables
	alphaRound = 0;
	screenPaletteIndexPrevious = global.screenPaletteIndex;
	#endregion
}