///@description KSW - Add Bobber

function scr_KSW_AddBobber(targetID,targetName,targetSprite,targetPrice,targetIsHidden = false,targetIsDefault = false)
{
	ds_map_add(global.KSW_BobberIDs,targetID,global.KSW_BobberCount);
	
	global.KSW_BobberList[global.KSW_BobberCount] = 
	{
        ID: targetID,
        name: targetName,
        sprite: targetSprite,
		price: targetPrice,
		isHidden: targetIsHidden,
		isDefault: targetIsDefault,
		isUnlocked: false
    };
	
	global.KSW_BobberCount += 1;
}