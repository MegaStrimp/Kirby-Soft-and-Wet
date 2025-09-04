///@description Create

#region Event Inherited
event_inherited();
#endregion

#region Character Setup
if (characterSetup)
{
	if (global.playerCharacterSetup[playerNum] != -1) script_execute(global.playerCharacterSetup[playerNum]);
	
	characterSetup = false;
}
#endregion