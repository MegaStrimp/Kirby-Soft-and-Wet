///@description Room Creation Code

#region Music
var musicTemp = ds_list_create();

for (var i = 0; i < global.KSW_MusicCount; i++)
{
    if ((global.KSW_MusicList[i].audio != -1) and (global.KSW_MusicList[i].phase == global.KSW_CurrentPhase))
	{
        ds_list_add(musicTemp,i);
    }
}

ds_list_shuffle(musicTemp);

var targetMusic = global.KSW_MusicList[ds_list_find_value(musicTemp,0)].audio;

ds_list_destroy(musicTemp);

if (audio_get_name(global.musicPlaying) != audio_get_name(targetMusic))
{
	audio_stop_sound(global.musicPlaying);
	global.musicPlaying = audio_play_sound(targetMusic,0,!global.KSW_MusicShuffle);
	
	audio_play_sound(mus_KSW_Ambience,0,true);
}
#endregion

#region Set Layout & Background
switch (global.KSW_CurrentPhase)
{
	case KSW_Phases.day:
	layer_sprite_create("Layout",0,0,global.KSW_StageList[global.KSW_CurrentStageID].dayLayout);
	
	var targetBackground = irandom_range(0,array_length(global.KSW_StageList[global.KSW_CurrentStageID].dayBackgrounds) - 1)
	scr_Camera_SetBackground(global.KSW_StageList[global.KSW_CurrentStageID].dayBackgrounds[targetBackground]);
	break;
	
	case KSW_Phases.afternoon:
	layer_sprite_create("Layout",0,0,global.KSW_StageList[global.KSW_CurrentStageID].afternoonLayout);
	
	var targetBackground = irandom_range(0,array_length(global.KSW_StageList[global.KSW_CurrentStageID].afternoonBackgrounds) - 1)
	scr_Camera_SetBackground(global.KSW_StageList[global.KSW_CurrentStageID].afternoonBackgrounds[targetBackground]);
	break;
	
	case KSW_Phases.night:
	layer_sprite_create("Layout",0,0,global.KSW_StageList[global.KSW_CurrentStageID].nightLayout);
	
	var targetBackground = irandom_range(0,array_length(global.KSW_StageList[global.KSW_CurrentStageID].nightBackgrounds) - 1)
	scr_Camera_SetBackground(global.KSW_StageList[global.KSW_CurrentStageID].nightBackgrounds[targetBackground]);
	break;
}
#endregion