///@description KSW - UI - Customize - Pages - Music - Setup

function scr_KSW_UI_Customize_Pages_Music_Setup()
{
	#region Initialize Variables
	#region Selection List
	scr_KSW_Menu_Component_CreateSelectionList(global.KSW_MusicCount);
	
	for (var i = 0; i < ds_list_size(selectionList); i++)
	{
		if (ds_list_find_value(selectionList,i) != -1)
		{
            if (global.KSW_MusicList[ds_list_find_value(selectionList, i)].ID == "custom")
                global.KSW_MusicList[ds_list_find_value(selectionList, i)].author = "Press [" + sprite_get_name(ds_map_find_value(global.UI_IconBindings, string(input_binding_get("X")))) + "] to customize!";
            
			if ((global.KSW_MusicList[ds_list_find_value(selectionList,i)].phase != KSW_Phases.none) and (global.KSW_MusicList[ds_list_find_value(selectionList,i)].phase != global.KSW_CurrentPhase))
			{
				ds_list_delete(selectionList,i);
				i--;
			}
		}
	}
	#endregion
	
	#region Component Setup
	scr_KSW_Menu_Component_Navigate_Setup(ds_list_size(selectionList));
	#endregion
	
	#region Menu Variables
	playerNum = 0;
	
	selectionOffset = 44;
	
	selectionIndex = 0;
	selectionSpd = sprite_get_speed(spr_KSW_Menu_Fishbook_Selection) / 60;
	selectionNumber = sprite_get_number(spr_KSW_Menu_Fishbook_Selection);
	
	pageOffset = 0;
	pageOffsetTarget = 0;
	
	coinsVisible = false;
	
	for (var i = 0; i < ds_list_size(selectionList); i++)
	{
		if (audio_get_name(global.musicPlaying) == audio_get_name(global.KSW_MusicList[ds_list_find_value(selectionList,i)].audio))
		{
			selection = i;
			pageOffsetTarget = selection * selectionOffset;
			pageOffset = pageOffsetTarget;
		}
	}
	#endregion
	#endregion
}