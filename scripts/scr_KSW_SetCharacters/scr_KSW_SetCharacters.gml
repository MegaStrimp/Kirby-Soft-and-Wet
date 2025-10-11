///@description KSW - Set Characters

function scr_KSW_SetCharacters()
{
	#region Setup
	global.KSW_CharacterCount = 0;
	
	global.KSW_CharacterList = [];
	global.KSW_CharacterIDs = ds_map_create();
	#endregion
	
	#region Add Characters Here
	scr_KSW_AddCharacter("kirby","Kirby",spr_KSW_UI_Customize_CharacterIcon_Kirby,scr_KSW_Player_Kirby_Setup,true);
	#endregion
}