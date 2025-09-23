///@description Create

#region Event Inherited
event_inherited();
#endregion

#region Character Setup
if (characterSetup)
{
	var targetSetupScript = global.KSW_CharacterList[global.playerCharacter[playerNum]].setupScript;
	if (targetSetupScript != undefined) script_execute(targetSetupScript);
	
	characterSetup = false;
}
#endregion