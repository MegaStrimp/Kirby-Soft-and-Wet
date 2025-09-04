///@description Room Creation Code

#region Variables
global.hasHud = false;
#endregion

#region Music
if (audio_get_name(global.musicPlaying) != "mus_KSW_Fishbook")
{
	audio_stop_sound(global.musicPlaying);
	global.musicPlaying = audio_play_sound(mus_KSW_Fishbook,0,true);
	
	if (global.KSW_EnteredFishbook)
	{
		var loopPoint = global.KSW_AudioStartPoints[mus_KSW_Fishbook][irandom_range(0,array_length(global.KSW_AudioStartPoints[mus_KSW_Fishbook]) - 1)];
		audio_sound_set_track_position(global.musicPlaying,loopPoint);
	}
}
#endregion

#region Set Background
scr_Camera_SetBackground(scr_KSW_Menu_Fishbook_SetBackground);
#endregion

#region Discord
scr_Discord_Setup("Fishbook","Collection " + string(global.KSW_CaughtUniqueFishCount) + "/" + string(global.KSW_FishCount),"icon",global.gameTitle,"strimp","From Strimp's Kitchen");
#endregion

#region Entered
global.KSW_EnteredFishbook = true;
#endregion