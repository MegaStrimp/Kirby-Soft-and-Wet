///@description KSW - Add Bait

function scr_KSW_AddBait(targetID,targetName,targetSprite)
{
	ds_map_add(global.KSW_BaitIDs,targetID,global.KSW_BaitCount);
	
	global.KSW_BaitList[global.KSW_BaitCount] = 
	{
        ID: targetID,
        name: targetName,
        sprite: targetSprite,
		isUnlocked: false
    };
	
	global.KSW_BaitCount += 1;
}