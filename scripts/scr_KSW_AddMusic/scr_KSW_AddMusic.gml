///@description KSW - Add Music

function scr_KSW_AddMusic(targetID,targetName,targetAuthor,targetPhase,targetAudio,targetLoopBegin = 0)
{
	ds_map_add(global.KSW_MusicIDs,targetID,global.KSW_MusicCount);
	
	var targetPhaseIcon = -1;
	switch (targetPhase)
	{
		case KSW_Phases.day:
		targetPhaseIcon = spr_KSW_Menu_TitleScreen_Phase_Day;
		break;
		
		case KSW_Phases.afternoon:
		targetPhaseIcon = spr_KSW_Menu_TitleScreen_Phase_Afternoon;
		break;
		
		case KSW_Phases.night:
		targetPhaseIcon = spr_KSW_Menu_TitleScreen_Phase_Night;
		break;
	}
	
	global.KSW_MusicList[global.KSW_MusicCount] = 
	{
        ID: targetID,
		name: targetName,
		author: targetAuthor,
		phase: targetPhase,
		phaseIcon: targetPhaseIcon,
		audio: targetAudio,
		loopBegin: targetLoopBegin,
    };
	
	audio_sound_loop_start(targetAudio,targetLoopBegin);
	
	global.KSW_MusicCount += 1;
}