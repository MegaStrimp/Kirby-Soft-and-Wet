///@description KSW - Add Hat

function scr_KSW_AddHat(targetID,targetCharacterID,targetName,targetIcon,targetSpriteSet,targetBoxPalette,targetPrice,targetXOffset = 0,targetYOffset = 0,targetIsDefault = false)
{
	var tempHatCount = global.KSW_HatCount[global.KSW_CharacterIDs[? targetCharacterID]];
	
	ds_map_add(global.KSW_HatIDs,targetID,tempHatCount);
	
	global.KSW_HatCount[global.KSW_CharacterIDs[? targetCharacterID]] += 1;
	
	global.KSW_CharacterList[global.KSW_CharacterIDs[? targetCharacterID]].hats[tempHatCount] = 
	{
        ID: targetID,
        name: targetName,
        icon: targetIcon,
        spriteSet: targetSpriteSet,
		boxPalette: targetBoxPalette,
        price: targetPrice,
        xOffset: targetXOffset,
        yOffset: targetYOffset,
		isDefault: targetIsDefault,
		isUnlocked: false
    };
	
	if (targetIsDefault)
	{
		global.KSW_CharacterList[global.KSW_CharacterIDs[? targetCharacterID]].defaultHat = targetID;
	}
}