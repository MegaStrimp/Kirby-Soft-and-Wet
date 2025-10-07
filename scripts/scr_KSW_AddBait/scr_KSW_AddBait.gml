///@description KSW - Add Bait

function scr_KSW_AddBait(targetID,targetName,targetDescription,targetSprite,targetTexture,targetBoxPalette,targetXOffset,targetYOffset,targetPrice,targetIsDefault = false)
{
	ds_map_add(global.KSW_BaitIDs,targetID,global.KSW_BaitCount);
	
	global.KSW_BaitList[global.KSW_BaitCount] = 
	{
        ID: targetID,
        name: targetName,
        description: targetDescription,
        sprite: targetSprite,
        texture: targetTexture,
		boxPalette: targetBoxPalette,
        xOffset: targetXOffset,
        yOffset: targetYOffset,
        price: targetPrice,
		isDefault: targetIsDefault,
		isUnlocked: false
    };
	
	global.KSW_BaitCount += 1;
}