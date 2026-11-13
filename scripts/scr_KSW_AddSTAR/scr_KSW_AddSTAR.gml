///@description KSW - Add STAR

function scr_KSW_AddSTAR(targetID,targetName,targetDescription,targetIcon,targetXOffset = 0,targetYOffset = 0)
{
	ds_map_add(global.KSW_STARIDs,targetID,global.KSW_TotalSTARCount);
	
	global.KSW_STARList[global.KSW_STARIDs[? targetID]] = 
	{
        id: targetID,
        name: targetName,
        description: targetDescription,
        icon: targetIcon,
		xOffset: targetXOffset,
		yOffset: targetYOffset,
		isObtained: false
    };
	
	global.KSW_TotalSTARCount += 1;
}