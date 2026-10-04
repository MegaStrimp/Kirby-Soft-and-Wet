///@description KSW - Set Characters

function scr_KSW_SetCharacters()
{
	#region Setup
	global.KSW_CharacterCount = 0;
	
	global.KSW_CharacterList = [];
	global.KSW_CharacterIDs = ds_map_create();
	#endregion
	
	#region Caught Box Palettes
	var candy = spr_KSW_UI_CaughtBox_Palette_Candy;
	var mint = spr_KSW_UI_CaughtBox_Palette_Mint;
	var legion = spr_KSW_UI_CaughtBox_Palette_Legion;
	var mage = spr_KSW_UI_CaughtBox_Palette_Mage;
	var glimmer = spr_KSW_UI_CaughtBox_Palette_Glimmer;
	var borange = spr_KSW_UI_CaughtBox_Palette_Borange;
	var flux = spr_KSW_UI_CaughtBox_Palette_Flux;
	var maze = spr_KSW_UI_CaughtBox_Palette_Maze;
	var tvtime = spr_KSW_UI_CaughtBox_Palette_TVTime;
	#endregion
	
	#region Add Characters Here
	scr_KSW_AddCharacter("kirby","Kirby",spr_KSW_UI_Customize_CharacterIcon_Kirby,candy,scr_KSW_Player_Kirby_Setup,0,spr_KSW_UI_Customize_Spray_Kirby,true);
	scr_KSW_AddCharacter("gooey","Gooey",spr_KSW_UI_Customize_CharacterIcon_Gooey,mage,scr_KSW_Player_Gooey_Setup,300,spr_KSW_UI_Customize_Spray_Gooey);
	scr_KSW_AddCharacter("elfilin","Elfilin",spr_KSW_UI_Customize_CharacterIcon_Elfilin,mint,scr_KSW_Player_Elfilin_Setup,300,spr_KSW_UI_Customize_Spray_Elfilin);
	scr_KSW_AddCharacter("marx","Marx",spr_KSW_UI_Customize_CharacterIcon_Marx,flux,scr_KSW_Player_Marx_Setup,300,spr_KSW_UI_Customize_Spray_Marx);
	scr_KSW_AddCharacter("waddleDee","Waddle Dee",spr_KSW_UI_Customize_CharacterIcon_WaddleDee,borange,scr_KSW_Player_WaddleDee_Setup,300,spr_KSW_UI_Customize_Spray_WaddleDee);
	scr_KSW_AddCharacter("susie","Susie",spr_KSW_UI_Customize_CharacterIcon_Susie,candy,scr_KSW_Player_Susie_Setup,300,spr_KSW_UI_Customize_Spray_Susie);
	#endregion
}