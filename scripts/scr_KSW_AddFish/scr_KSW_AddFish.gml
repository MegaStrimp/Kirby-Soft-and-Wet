///@description KSW - Add Fish

function scr_KSW_AddFish(targetName,targetSprite,targetPalette,targetCaughtBoxPalette,targetRarity,targetStage,targetPhase,targetGram,targetXOffset = 0,targetYOffset = 0,targetCatchScript = -1,targetCatchAudio = -1,targetGramOffset = -1)
{
	if (targetGramOffset == -1) targetGramOffset = floor(targetGram / 5);
	targetRarity = clamp(targetRarity,0,3);
	
	ds_map_add(global.KSW_FishIDs,targetName,global.KSW_FishCount);
	
	var targetPhaseIconLeft = -1;
	switch (global.KSW_StageList[targetStage].ID)
	{
		case "creamCrevasse":
		targetPhaseIconLeft = spr_KSW_Menu_TitleScreen_Phase_Christmas;
		break;
	}
	
	var targetPhaseIconRight = -1;
	switch (targetPhase)
	{
		case KSW_Phases.day:
		targetPhaseIconRight = spr_KSW_Menu_TitleScreen_Phase_Day;
		break;
		
		case KSW_Phases.afternoon:
		targetPhaseIconRight = spr_KSW_Menu_TitleScreen_Phase_Afternoon;
		break;
		
		case KSW_Phases.night:
		targetPhaseIconRight = spr_KSW_Menu_TitleScreen_Phase_Night;
		break;
	}
	
	global.KSW_FishList[global.KSW_FishIDs[? targetName]] = 
	{
        id: global.KSW_FishCount,
        name: targetName,
        sprite: targetSprite,
        palette: targetPalette,
        caughtBoxPalette: targetCaughtBoxPalette,
        rarity: targetRarity,
        stage: targetStage,
        phase: targetPhase,
		phaseIconLeft: targetPhaseIconLeft,
		phaseIconRight: targetPhaseIconRight,
        gram: targetGram,
        gramOffset: targetGramOffset,
        xOffset: targetXOffset,
        yOffset: targetYOffset,
        catchScript: targetCatchScript,
        catchAudio: targetCatchAudio,
		isCaught: 0,
		isCaughtShiny: 0
    };
	
	global.KSW_FishCount += 1;
	
	return global.KSW_FishList[global.KSW_FishIDs[? targetName]];
}