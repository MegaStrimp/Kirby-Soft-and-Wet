///@description KSW - Add Hat

function scr_KSW_AddHat(targetID,targetCharacterID,targetName,targetSpriteSet,targetBoxPalette,targetPrice,targetIsDefault = false)
{
	ds_map_add(global.KSW_HatIDs,targetID,global.KSW_TotalHatCount);
	
	var tempHatCount = global.KSW_CharacterList[global.KSW_CharacterIDs[? targetCharacterID]].hatCount;
	global.KSW_CharacterList[global.KSW_CharacterIDs[? targetCharacterID]].hatCount += 1;
	
	global.KSW_CharacterList[global.KSW_CharacterIDs[? targetCharacterID]].hats[tempHatCount] = 
	{
        ID: targetID,
        name: targetName,
        spriteSet: targetSpriteSet,
		boxPalette: targetBoxPalette,
        price: targetPrice,
		isDefault: targetIsDefault,
		isUnlocked: false
    };
	
	if (targetIsDefault)
	{
		global.KSW_CharacterList[global.KSW_CharacterIDs[? targetCharacterID]].defaultHat = targetID;
	}
	
	global.KSW_HatCount[global.KSW_CharacterIDs[? targetCharacterID]] += 1;
	global.KSW_TotalHatCount += 1;
}