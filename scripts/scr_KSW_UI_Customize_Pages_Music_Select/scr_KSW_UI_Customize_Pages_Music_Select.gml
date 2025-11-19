///@description KSW - UI - Customize - Pages - Music - Select

function scr_KSW_UI_Customize_Pages_Music_Select()
{
    if (global.KSW_MusicList[ds_list_find_value(selectionList, selection)].ID == "custom" && global.KSW_MusicList[ds_list_find_value(selectionList, selection)].audio == -1)
    {
        scr_KSW_UI_Customize_Pages_Music_X()
    }
    else
    {
    	scr_PlaySfx(snd_KSW_ButtonYes);
    	
    	audio_stop_sound(global.musicPlaying);
    	global.musicPlaying = audio_play_sound(global.KSW_MusicList[ds_list_find_value(selectionList,selection)].audio,0,true);
    }
}