///@description KSW - Add Fish

function scr_KSW_AddFish(targetName,targetSprite,targetPalette,targetSeries,targetCaughtBoxPalette,targetRarity,targetStage,targetPhase,targetGram,targetXOffset = 0,targetYOffset = 0,targetCatchScript = -1,targetCatchAudio = -1,targetCatchAudioPitchOffset = .15,targetGramOffset = -1)
{
	if (global.debug)
	{
		if (ds_map_exists(global.KSW_FishIDs,targetName)) scr_Debug_WriteLog("Duplicate Fish Found - " + string(targetName));
	}
	
	if (targetGramOffset == -1) targetGramOffset = floor(targetGram / 5);
	targetRarity = clamp(targetRarity,0,3);
	
	ds_map_add(global.KSW_FishIDs,targetName,global.KSW_FishCount);
	
	var targetPhaseIconLeft = -1;
	var targetPhaseIconLeftSmall = -1;
	switch (global.KSW_StageList[targetStage].ID)
	{
		case "grassBeach":
		targetPhaseIconLeft = spr_KSW_Menu_TitleScreen_Phase_GrassBeach;
		targetPhaseIconLeftSmall = spr_KSW_Menu_TitleScreen_Phase_GrassBeach_Small;
		break;
		
		case "creamCrevasse":
		targetPhaseIconLeft = spr_KSW_Menu_TitleScreen_Phase_CreamCrevasse;
		targetPhaseIconLeftSmall = spr_KSW_Menu_TitleScreen_Phase_CreamCrevasse_Small;
		break;
		
		case "hallowReen":
		targetPhaseIconLeft = spr_KSW_Menu_TitleScreen_Phase_HallowReen;
		targetPhaseIconLeftSmall = spr_KSW_Menu_TitleScreen_Phase_HallowReen_Small;
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
        nameSprite: -1,
        displayedName: targetName,
        sprite: targetSprite,
        palette: targetPalette,
		series: targetSeries,
        caughtBoxPalette: targetCaughtBoxPalette,
        rarity: targetRarity,
        stage: targetStage,
        phase: targetPhase,
		phaseIconLeft: targetPhaseIconLeft,
		phaseIconLeftSmall: targetPhaseIconLeftSmall,
		phaseIconRight: targetPhaseIconRight,
        gram: targetGram,
        gramOffset: targetGramOffset,
        xOffset: targetXOffset,
        yOffset: targetYOffset,
        catchScript: targetCatchScript,
        catchAudio: targetCatchAudio,
        catchAudioPitchOffset: targetCatchAudioPitchOffset,
		spriteIsOriginal: false,
		isCaught: 0,
		isCaughtShiny: 0
    };
	
	global.KSW_FishCount += 1;
	
	global.KSW_FishRarity[targetRarity] += 1;
	global.KSW_FishTime[targetRarity] += 1;
	
	if (targetStage != -1) global.KSW_StageList[targetStage].fishCountMax += 1;
	
	return global.KSW_FishList[global.KSW_FishIDs[? targetName]];
}