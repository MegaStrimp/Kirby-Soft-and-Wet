///@description KSW - Add Bench

function scr_KSW_AddBench(targetID,targetName,targetSprite)
{
	ds_map_add(global.KSW_BenchIDs,targetID,global.KSW_BenchCount);
	
	global.KSW_BenchList[global.KSW_BenchCount] = 
	{
        ID: targetID,
        name: targetName,
        sprite: targetSprite
    };
	
	global.KSW_BenchCount += 1;
}