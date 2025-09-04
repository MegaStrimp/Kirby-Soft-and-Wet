///@description Room Creation Code

#region Variables
global.hasHud = false;
#endregion

#region Music
if (audio_get_name(global.musicPlaying) != "mus_KSW_Ambience")
{
	audio_stop_sound(global.musicPlaying);
	global.musicPlaying = audio_play_sound(mus_KSW_Ambience,0,true);
}
#endregion

#region Set Background
instance_create_depth(0,0,100,obj_KSW_Background_Underwater);
#endregion

#region Discord
scr_Discord_Setup("Splash Screen",-1,"icon",global.gameTitle,"strimp","From Strimp's Kitchen");
#endregion