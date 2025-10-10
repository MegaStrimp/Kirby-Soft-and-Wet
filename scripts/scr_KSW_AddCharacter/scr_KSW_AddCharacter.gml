///@description KSW - Add Character

function scr_KSW_AddCharacter(targetID,targetName,targetSetupScript,targetIsDefault = false)
{
	ds_map_add(global.KSW_CharacterIDs,targetID,global.KSW_CharacterCount);
	
	global.KSW_CharacterList[global.KSW_CharacterCount] = 
	{
        ID: targetID,
		name: targetName,
		setupScript: targetSetupScript,
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