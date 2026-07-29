///@description KSW - Menu - Fishbook - Sort - Gram

function scr_KSW_Menu_Fishbook_Sort_Gram()
{
	scr_KSW_UI_StealthTutorial_Create_Custom(global.gameWidth / 2,global.gameHeight / 2,"Sorted By Grams",60,.2,fa_center,fa_middle);
	
	var arr = [];
	
	for (var i = 0; i < global.KSW_FishCount; i++)
	{
	    arr[i] = selectionList[| i];
	}
	
	array_sort(arr,function(a,b)
	{
	    var gramA = global.KSW_FishList[a].gram;
	    var gramB = global.KSW_FishList[b].gram;
    
	    return gramA - gramB;
	});
	
	ds_list_clear(selectionList);

	for (var i = 0; i < global.KSW_FishCount; i++)
	{
	    ds_list_add(selectionList,arr[i]);
	}
}