///@description KSW - Add Spray Paint

function scr_KSW_AddSprayPaint(targetID,targetCharacterID,targetName,targetSprite,targetPrice,isDefault = false)
{
	ds_map_add(global.KSW_SprayPaintIDs,targetID,global.KSW_SprayPaintCount);
	
	var tempSprayPaintCount = global.KSW_CharacterList[global.KSW_CharacterIDs[? targetCharacterID]].sprayPaintCount;
	global.KSW_CharacterList[global.KSW_CharacterIDs[? targetCharacterID]].sprayPaintCount += 1;
	
	global.KSW_CharacterList[global.KSW_CharacterIDs[? targetCharacterID]].sprayPaints[tempSprayPaintCount] = 
	{
        ID: targetID,
        name: targetName,
        sprite: targetSprite,
        price: targetPrice,
		isUnlocked: false
    };
	
	if (isDefault)
	{
		global.KSW_CharacterList[global.KSW_CharacterIDs[? targetCharacterID]].defaultSprayPaint = targetID;
	}
	
	global.KSW_SprayPaintCount += 1;
}