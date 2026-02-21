///@description KSW - Set Characters

function scr_KSW_SetCharacters()
{
	#region Setup
	global.KSW_CharacterCount = 0;
	
	global.KSW_CharacterList = [];
	global.KSW_CharacterIDs = ds_map_create();
	#endregion
	
	#region Add Characters Here
	scr_KSW_AddCharacter("kirby","Kirby",spr_KSW_UI_Customize_CharacterIcon_Kirby,scr_KSW_Player_Kirby_Setup,0,spr_KSW_UI_Customize_Spray_Kirby,true);
	scr_KSW_AddCharacter("elfilin","Elfilin",spr_KSW_UI_Customize_CharacterIcon_Kirby,scr_KSW_Player_Elfilin_Setup,300,spr_KSW_UI_Customize_Spray_Elfilin);
	#endregion
}