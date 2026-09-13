///@description KSW - Menu - Fishbook - Sort - Name

function scr_KSW_Menu_Fishbook_Sort_Name()
{
	scr_KSW_UI_StealthTutorial_Create_Custom(global.gameWidth / 2,global.gameHeight / 2,"Sorted By Name",60,.2,fa_center,fa_middle);
	
	var arr = [];
	
	for (var i = 0; i < global.KSW_FishCount; i++)
	{
	    arr[i] = selectionList[| i];
	}
	
	array_sort(arr,function(a,b)
	{
	    var nameA = global.KSW_FishList[a].displayedName;
	    var nameB = global.KSW_FishList[b].displayedName;
		
		if (nameA < nameB) return -1;
	    if (nameA > nameB) return 1;
	    return 0;
	});
	
	ds_list_clear(selectionList);

	for (var i = 0; i < global.KSW_FishCount; i++)
	{
	    ds_list_add(selectionList,arr[i]);
	}
}