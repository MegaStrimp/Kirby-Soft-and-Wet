///@description KSW - Add Border Art

function scr_KSW_AddBorderArt(targetID,targetName,targetSprite = -1)
{
	ds_map_add(global.KSW_BorderArtIDs,targetID,global.KSW_BorderArtCount);
	
	global.KSW_BorderArtList[global.KSW_BorderArtCount] = 
	{
        ID: targetID,
		name: targetName,
		sprite: targetSprite
    };
	
	global.KSW_BorderArtCount += 1;
}