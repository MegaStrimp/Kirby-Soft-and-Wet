///@description Template - Add Stringmappe

function scr_Template_AddStringmappe(targetStringID)
{
	ds_map_add(global.Template_StringmappeIDs,targetStringID,global.Template_StringmappeCount);
	
	global.Template_StringmappeList[global.Template_StringmappeCount] = 
	{
        id: global.Template_StringmappeCount,
    };
	
	global.Template_StringmappeCount += 1;
}