///@description Room Creation Code

#region Music
var musicTemp = ds_list_create();

for (var i = 0; i < global.KSW_MusicCount; i++)
{
    if (global.KSW_MusicList[i].phase == global.KSW_CurrentPhase)
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
	global.musicPlaying = audio_play_sound(targetMusic,0,true);
	
	audio_play_sound(mus_KSW_Ambience,0,true);
}
#endregion

#region Set Layout & Background
switch (global.KSW_CurrentPhase)
{
	case KSW_Phases.day:
	layer_sprite_create("Layout",0,0,spr_KSW_Layout_Day);
	
	scr_Camera_SetBackground(choose(scr_KSW_SetBackground_Day_1,scr_KSW_SetBackground_Day_2,scr_KSW_SetBackground_Day_3,scr_KSW_SetBackground_Day_4,scr_KSW_SetBackground_Day_5));
	break;
	
	case KSW_Phases.afternoon:
	layer_sprite_create("Layout",0,0,spr_KSW_Layout_Afternoon);
	
	scr_Camera_SetBackground(choose(scr_KSW_SetBackground_Afternoon_1,scr_KSW_SetBackground_Afternoon_2,scr_KSW_SetBackground_Afternoon_3,scr_KSW_SetBackground_Afternoon_4,scr_KSW_SetBackground_Afternoon_5));
	break;
	
	case KSW_Phases.night:
	layer_sprite_create("Layout",0,0,spr_KSW_Layout_Night);
	
	scr_Camera_SetBackground(choose(scr_KSW_SetBackground_Night_1,scr_KSW_SetBackground_Night_2,scr_KSW_SetBackground_Night_3,scr_KSW_SetBackground_Night_4,scr_KSW_SetBackground_Night_5));
	break;
}
#endregion