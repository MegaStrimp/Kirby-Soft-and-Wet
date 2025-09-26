///@description KSW - Add Spray Paint

function scr_KSW_AddSprayPaint(targetID,targetCharacterID,targetName,targetSprite)
{
	ds_map_add(global.KSW_SprayPaintIDs,targetID,global.KSW_SprayPaintCount);
	
	var tempSprayPaintCount = global.KSW_CharacterList[global.KSW_CharacterIDs[? targetCharacterID]].sprayPaintCount;
	global.KSW_CharacterList[global.KSW_CharacterIDs[? targetCharacterID]].sprayPaintCount += 1;
	
	global.KSW_CharacterList[global.KSW_CharacterIDs[? targetCharacterID]].sprayPaints[tempSprayPaintCount] = 
	{
        ID: targetID,
        name: targetName,
        sprite: targetSprite,
		isUnlocked: false
    };
	
	global.KSW_SprayPaintCount += 1;
}