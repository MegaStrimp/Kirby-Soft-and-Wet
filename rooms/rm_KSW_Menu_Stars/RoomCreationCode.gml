///@description Room Creation Code

#region Variables
global.hasHud = false;
#endregion

#region Music
if (audio_get_name(global.musicPlaying) != "mus_KSW_Stars")
{
	audio_stop_sound(global.musicPlaying);
	global.musicPlaying = audio_play_sound(mus_KSW_Stars,0,true);
	
	if (global.KSW_EnteredStars)
	{
		var loopPoint = global.KSW_AudioStartPoints[mus_KSW_Stars][irandom_range(0,array_length(global.KSW_AudioStartPoints[mus_KSW_Stars]) - 1)];
		audio_sound_set_track_position(global.musicPlaying,loopPoint);
	}
}
#endregion

#region Set Background
scr_Camera_SetBackground(scr_KSW_Menu_Stars_SetBackground);
#endregion

#region Discord
scr_Discord_Setup("Stars","Completion " + string(global.KSW_ObtainedAchievementCount) + "/" + string(global.KSW_VisibleAchievementCount),"icon",global.gameTitle,"strimp","From Strimp's Kitchen");
#endregion

#region Entered
global.KSW_EnteredStars = true;
#endregion