///@description Room Creation Code

#region Variables
global.hasHud = false;
#endregion

#region Music
if (audio_get_name(global.musicPlaying) != "mus_KSW_Settings")
{
	audio_stop_sound(global.musicPlaying);
	global.musicPlaying = audio_play_sound(mus_KSW_Settings,0,true);
	
	if (global.KSW_EnteredSettings)
	{
		var loopPoint = global.KSW_AudioStartPoints[mus_KSW_Settings][irandom_range(0,array_length(global.KSW_AudioStartPoints[mus_KSW_Settings]) - 1)];
		audio_sound_set_track_position(global.musicPlaying,loopPoint);
	}
}
#endregion

#region Set Background
instance_create_depth(0,0,100,obj_KSW_Background_Underwater);
#endregion

#region Discord
scr_Discord_Setup("Settings",-1,"icon",global.gameTitle,"strimp","From Strimp's Kitchen");
#endregion

#region Entered
global.KSW_EnteredSettings = true;
#endregion