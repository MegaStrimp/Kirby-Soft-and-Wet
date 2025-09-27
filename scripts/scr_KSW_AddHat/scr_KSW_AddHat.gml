///@description KSW - Add Hat

function scr_KSW_AddHat(targetID,targetCharacterID,targetName,targetSpriteSet,targetPrice,isDefault = false)
{
	ds_map_add(global.KSW_HatIDs,targetID,global.KSW_HatCount);
	
	var tempHatCount = global.KSW_CharacterList[global.KSW_CharacterIDs[? targetCharacterID]].hatCount;
	global.KSW_CharacterList[global.KSW_CharacterIDs[? targetCharacterID]].hatCount += 1;
	
	global.KSW_CharacterList[global.KSW_CharacterIDs[? targetCharacterID]].hats[tempHatCount] = 
	{
        ID: targetID,
        name: targetName,
        spriteSet: targetSpriteSet,
        price: targetPrice,
		isUnlocked: false
    };
	
	if (isDefault)
	{
		global.KSW_CharacterList[global.KSW_CharacterIDs[? targetCharacterID]].defaultHat = targetID;
	}
	
	global.KSW_HatCount += 1;
}