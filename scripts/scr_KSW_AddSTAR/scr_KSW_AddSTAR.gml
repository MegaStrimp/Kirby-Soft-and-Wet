///@description KSW - Add STAR

function scr_KSW_AddSTAR(targetID,targetName,targetDescription,targetIcon)
{
	ds_map_add(global.KSW_STARIDs,targetID,global.KSW_TotalSTARCount);
	
	global.KSW_STARList[global.KSW_STARIDs[? targetID]] = 
	{
        id: targetID,
        name: targetName,
        description: targetDescription,
        icon: targetIcon,
		isObtained: false
    };
	
	global.KSW_TotalSTARCount += 1;
}