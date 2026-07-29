///@description KSW - Menu - Fishbook - Sort - Caught

function scr_KSW_Menu_Fishbook_Sort_Caught()
{
	scr_KSW_UI_StealthTutorial_Create_Custom(global.gameWidth / 2,global.gameHeight / 2,"Sorted By Caught",60,.2,fa_center,fa_middle);
	
	var arr = [];
	
	for (var i = 0; i < global.KSW_FishCount; i++)
	{
	    arr[i] = selectionList[| i];
	}
	
	array_sort(arr,function(a,b)
	{
	    var caughtA = global.KSW_FishList[a].isCaught - global.KSW_FishList[a].isCaughtShiny;
	    var caughtB = global.KSW_FishList[b].isCaught - global.KSW_FishList[b].isCaughtShiny;
    
	    return caughtA - caughtB;
	});
	
	ds_list_clear(selectionList);

	for (var i = 0; i < global.KSW_FishCount; i++)
	{
	    ds_list_add(selectionList,arr[i]);
	}
}