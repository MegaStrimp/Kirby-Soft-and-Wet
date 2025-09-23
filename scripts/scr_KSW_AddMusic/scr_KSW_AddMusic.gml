///@description KSW - Add Music

function scr_KSW_AddMusic(targetID,targetName,targetAuthor,targetAudio,targetLoopBegin = 0)
{
	ds_map_add(global.KSW_MusicIDs,targetID,global.KSW_MusicCount);
	
	global.KSW_MusicList[global.KSW_MusicCount] = 
	{
        ID: targetID,
		name: targetName,
		author: targetAuthor,
		audio: targetAudio,
		loopBegin: targetLoopBegin,
    };
	
	global.KSW_MusicCount += 1;
}