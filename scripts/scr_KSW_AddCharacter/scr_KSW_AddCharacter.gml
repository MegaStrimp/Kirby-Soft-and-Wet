///@description KSW - Add Character

function scr_KSW_AddCharacter(targetID,targetName,targetSetupScript)
{
	ds_map_add(global.KSW_CharacterIDs,targetID,global.KSW_CharacterCount);
	
	global.KSW_CharacterList[global.KSW_CharacterCount] = 
	{
        ID: targetID,
		name: targetName,
		setupScript: targetSetupScript,
		isUnlocked: false,
		
		sprayPaints: [],
		sprayPaintCount: 0,
		obtainedSprayPaintCount: 0,
		defaultSprayPaint: undefined,
		equippedSprayPaint: -1,
		
		hats: [],
		hatCount: 0,
		obtainedHatCount: 0,
		defaultHat: undefined,
		equippedHat: -1
    };
	
	global.KSW_CharacterCount += 1;
}