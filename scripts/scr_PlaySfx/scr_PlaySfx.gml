///@description Play Sfx

function scr_PlaySfx(soundId,isLooping = false)
{
	if (audio_is_playing(soundId)) audio_stop_sound(soundId);
	var sound = audio_play_sound(soundId,0,isLooping);
	
	return sound;
}