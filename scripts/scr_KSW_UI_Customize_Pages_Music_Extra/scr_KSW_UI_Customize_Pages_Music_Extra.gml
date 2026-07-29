///@description KSW - UI - Customize - Pages - Music - Extra

function scr_KSW_UI_Customize_Pages_Music_Extra()
{
	global.KSW_MusicShuffle = !global.KSW_MusicShuffle;
	audio_sound_loop(global.musicPlaying,!global.KSW_MusicShuffle);
}