///@description KSW - UI - Customize - Pages - Music - Select

function scr_KSW_UI_Customize_Pages_Music_Select()
{
	scr_PlaySfx(snd_KSW_ButtonYes);
	
	audio_stop_sound(global.musicPlaying);
	global.musicPlaying = audio_play_sound(global.KSW_MusicList[ds_list_find_value(selectionList,selection)].audio,0,true);
}