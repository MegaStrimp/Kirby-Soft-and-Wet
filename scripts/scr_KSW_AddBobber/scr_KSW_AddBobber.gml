///@description KSW - Add Bobber

function scr_KSW_AddBobber(targetID,targetName,targetSprite,targetPalette,targetBoxPalette,targetPrice,targetXOffset,targetYOffset,targetIsHidden = false,targetIsDefault = false)
{
	ds_map_add(global.KSW_BobberIDs,targetID,global.KSW_BobberCount);
	
	global.KSW_BobberList[global.KSW_BobberCount] = 
	{
        ID: targetID,
        name: targetName,
        sprite: targetSprite,
        palette: targetPalette,
		boxPalette: targetBoxPalette,
		price: targetPrice,
        xOffset: targetXOffset,
        yOffset: targetYOffset,
		isHidden: targetIsHidden,
		isDefault: targetIsDefault,
		
		tiedAchievementName: "",
		shinyCaughtNumber: 0,
		shinyCaughtRequirement: 30,
		
		isUnlocked: false,
		shinyIsUnlocked: false
    };
	
	global.KSW_BobberCount += 1;
	if (!targetIsHidden) global.KSW_VisibleBobberCount += 1;
}