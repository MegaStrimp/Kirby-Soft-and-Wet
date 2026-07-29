///@description KSW - Add Character

function scr_KSW_AddCharacter(targetID,targetName,targetIcon,targetBoxPalette,targetSetupScript,targetPrice,targetSprayCanSprite,targetIsDefault = false)
{
	ds_map_add(global.KSW_CharacterIDs,targetID,global.KSW_CharacterCount);
	
	global.KSW_CharacterList[global.KSW_CharacterCount] = 
	{
        ID: targetID,
		name: targetName,
		icon: targetIcon,
		boxPalette: targetBoxPalette,
		setupScript: targetSetupScript,
		price: targetPrice,
		sprayCanSprite: targetSprayCanSprite,
		isDefault: targetIsDefault,
		isUnlocked: false,
		
		sprayPaints: [],
		defaultSprayPaint: undefined,
		equippedSprayPaint: -1,
		
		hats: [],
		defaultHat: undefined,
		equippedHat: -1
    };
	
	global.KSW_CharacterCount += 1;
}