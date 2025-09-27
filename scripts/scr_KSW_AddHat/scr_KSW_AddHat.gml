///@description KSW - Add Hat

function scr_KSW_AddHat(targetCharacterID,targetID,targetName,targetSpriteSet)
{
	ds_map_add(global.KSW_HatIDs,targetID,global.KSW_HatCount);
	
	var tempHatCount = global.KSW_CharacterList[global.KSW_CharacterIDs[? targetCharacterID]].hatCount;
	global.KSW_CharacterList[global.KSW_CharacterIDs[? targetCharacterID]].hatCount += 1;
	
	global.KSW_CharacterList[global.KSW_CharacterIDs[? targetCharacterID]].hats[tempHatCount] = 
	{
        ID: targetID,
        name: targetName,
        spriteSet: targetSpriteSet,
		isUnlocked: false
    };
	
	global.KSW_HatCount += 1;
}