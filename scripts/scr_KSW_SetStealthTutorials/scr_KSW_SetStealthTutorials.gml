///@description KSW - Set Stealth Tutorials

function scr_KSW_SetStealthTutorials()
{
	#region Setup
	global.KSW_StealthTutorialList = [];
	global.KSW_StealthTutorialIDs = ds_map_create();
	#endregion
	
	#region Add Stealth Tutorials Here
	#region Catch 1 Fish
	var stealthTutorialUnlockMethod = function()
	{
		return ((global.KSW_CurrentFishCombo >= 3) and (global.KSW_CaughtShinyFishCount >= 1));
	};
	scr_KSW_AddStealthTutorial("catchComboShinyRate","CATCH COMBOS\nINCREASE SHINY CHANCE!",24,127,stealthTutorialUnlockMethod,false);
	#endregion
	#endregion
}