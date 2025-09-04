///@description KSW - Add Fish

function scr_KSW_AddFish(targetName,targetSprite,targetPalette,targetCaughtBoxPalette,targetRarity,targetPhase,targetGram,targetXOffset = 0,targetYOffset = 0,targetCatchScript = -1,targetGramOffset = -1)
{
	if (targetGramOffset == -1) targetGramOffset = floor(targetGram / 5);
	targetRarity = clamp(targetRarity,0,3);
	
	ds_map_add(global.KSW_FishIDs,targetName,global.KSW_FishCount);
	
	global.KSW_FishList[global.KSW_FishIDs[? targetName]] = 
	{
        id: global.KSW_FishCount,
        name: targetName,
        sprite: targetSprite,
        palette: targetPalette,
        caughtBoxPalette: targetCaughtBoxPalette,
        rarity: targetRarity,
        phase: targetPhase,
        gram: targetGram,
        gramOffset: targetGramOffset,
        xOffset: targetXOffset,
        yOffset: targetYOffset,
        catchScript: targetCatchScript,
		isCaught: 0,
		isCaughtShiny: 0,
		isTenna: false
    };
	
	global.KSW_FishCount += 1;
	
	return global.KSW_FishList[global.KSW_FishIDs[? targetName]];
}