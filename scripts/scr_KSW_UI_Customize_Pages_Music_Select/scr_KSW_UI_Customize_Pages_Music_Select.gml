///@description KSW - UI - Customize - Pages - Music - Select

function scr_KSW_UI_Customize_Pages_Music_Select()
{
	global.KSW_MusicShuffle = false;
	audio_sound_loop(global.musicPlaying,!global.KSW_MusicShuffle);
	
    if ((global.KSW_MusicList[ds_list_find_value(selectionList, selection)].ID == "custom") and (global.KSW_MusicList[ds_list_find_value(selectionList, selection)].audio == -1))
    {
		var file = get_open_filename("Sound Files (*.ogg)|*.ogg", "");
		
		if (file == "")
		{
		    scr_PlaySfx(snd_KSW_ButtonNo);
		}
		else
		{
		    if (global.KSW_MusicList[ds_list_find_value(selectionList, selection)].audio != -1)
		    {
		        audio_destroy_stream(global.KSW_MusicList[ds_list_find_value(selectionList, selection)].audio);
		        global.KSW_MusicList[ds_list_find_value(selectionList, selection)].audio = -1;
		    }
			
		    global.KSW_MusicList[ds_list_find_value(selectionList, selection)].audio = audio_create_stream(file);
		    asset_add_tags(global.KSW_MusicList[ds_list_find_value(selectionList, selection)].audio, "Music", asset_sound);
		    scr_KSW_UI_Customize_Pages_Music_Select();
		}
    }
    else
    {
    	scr_PlaySfx(snd_KSW_ButtonYes);
    	
    	audio_stop_sound(global.musicPlaying);
    	global.musicPlaying = audio_play_sound(global.KSW_MusicList[ds_list_find_value(selectionList,selection)].audio,0,true);
    }
}