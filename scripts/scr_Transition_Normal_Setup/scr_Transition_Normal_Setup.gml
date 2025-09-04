///@description Transition - Normal - Setup

function scr_Transition_Normal_Setup()
{
	#region Set Transition Scripts
	transitionStep = scr_Transition_Normal_Step;
	transitionDrawGUIEnd = scr_Transition_Normal_DrawGUIEnd;
	#endregion
	
	#region Initialize Transition Variables
	fadeColor = c_black;
	#endregion
}