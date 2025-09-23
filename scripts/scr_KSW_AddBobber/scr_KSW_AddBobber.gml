///@description KSW - Add Bobber

function scr_KSW_AddBobber(targetID,targetName,targetSprite,targetIsInShop = true,targetIsHidden = false,targetIsDefault = false)
{
	ds_map_add(global.KSW_BobberIDs,targetID,global.KSW_BobberCount);
	
	global.KSW_BobberList[global.KSW_BobberCount] = 
	{
        ID: targetID,
        name: targetName,
        sprite: targetSprite,
		isInShop: targetIsInShop,
		isHidden: targetIsHidden,
		isDefault: targetIsDefault,
		isUnlocked: false
    };
	
	global.KSW_BobberCount += 1;
}