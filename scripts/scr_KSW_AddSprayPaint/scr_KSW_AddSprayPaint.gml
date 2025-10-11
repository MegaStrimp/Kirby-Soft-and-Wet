///@description KSW - Add Spray Paint

function scr_KSW_AddSprayPaint(targetID,targetCharacterID,targetName,targetSprite,targetBoxPalette,targetPrice,targetIsDefault = false)
{
	ds_map_add(global.KSW_SprayPaintIDs,targetID,global.KSW_TotalSprayPaintCount);
	
	var tempSprayPaintCount = global.KSW_SprayPaintCount[global.KSW_CharacterIDs[? targetCharacterID]];
	global.KSW_SprayPaintCount[global.KSW_CharacterIDs[? targetCharacterID]] += 1;
	
	global.KSW_CharacterList[global.KSW_CharacterIDs[? targetCharacterID]].sprayPaints[tempSprayPaintCount] = 
	{
        ID: targetID,
        name: targetName,
        sprite: targetSprite,
		boxPalette: targetBoxPalette,
        price: targetPrice,
		isDefault: targetIsDefault,
		isUnlocked: false
    };
	
	if (targetIsDefault)
	{
		global.KSW_CharacterList[global.KSW_CharacterIDs[? targetCharacterID]].defaultSprayPaint = targetID;
	}
	
	global.KSW_TotalSprayPaintCount += 1;
}