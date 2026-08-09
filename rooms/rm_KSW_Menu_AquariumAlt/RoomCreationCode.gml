///@description Room Creation Code

#region Variables
global.hasHud = false;
#endregion

#region Music
if (audio_get_name(global.musicPlaying) != "mus_KSW_AquariumAlt")
{
	audio_stop_sound(global.musicPlaying);
	global.musicPlaying = audio_play_sound(mus_KSW_AquariumAlt,0,true);
}
#endregion

#region Discord
scr_Discord_Setup("Aquarium ?",-1,"icon",global.gameTitle + " " + global.versionNumber,"strimp","From Strimp's Kitchen");
#endregion