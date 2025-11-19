///@description KSW - UI - Customize - Pages - Music - X

function scr_KSW_UI_Customize_Pages_Music_X()
{
    if (global.KSW_MusicList[ds_list_find_value(selectionList, selection)].ID == "custom")
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
            scr_KSW_UI_Customize_Pages_Music_Select();
        }
    }
}