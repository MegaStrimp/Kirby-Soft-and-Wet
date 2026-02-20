///@description KSW - Add Series

function scr_KSW_AddSeries(targetID,targetName)
{
	ds_map_add(global.KSW_SeriesIDs,targetID,global.KSW_SeriesCount);
	
	global.KSW_SeriesList[global.KSW_SeriesIDs[? targetID]] = 
	{
        ID: targetID,
        name: targetName
    };
	
	global.KSW_SeriesCount += 1;
	
	return global.KSW_SeriesList[global.KSW_SeriesIDs[? targetID]];
}