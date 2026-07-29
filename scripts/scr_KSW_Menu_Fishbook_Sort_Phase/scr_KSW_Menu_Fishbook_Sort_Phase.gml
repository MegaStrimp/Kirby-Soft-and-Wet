///@description KSW - Menu - Fishbook - Sort - Phase

function scr_KSW_Menu_Fishbook_Sort_Phase()
{
	scr_KSW_UI_StealthTutorial_Create_Custom(global.gameWidth / 2,global.gameHeight / 2,"Sorted By Phase",60,.2,fa_center,fa_middle);
	
	var arr = [];
	
	for (var i = 0; i < global.KSW_FishCount; i++)
	{
	    arr[i] = selectionList[| i];
	}
	
	array_sort(arr,function(a,b)
	{
	    var phaseA = global.KSW_FishList[a].phase;
	    var phaseB = global.KSW_FishList[b].phase;
    
	    return phaseA - phaseB;
	});
	
	ds_list_clear(selectionList);

	for (var i = 0; i < global.KSW_FishCount; i++)
	{
	    ds_list_add(selectionList,arr[i]);
	}
}