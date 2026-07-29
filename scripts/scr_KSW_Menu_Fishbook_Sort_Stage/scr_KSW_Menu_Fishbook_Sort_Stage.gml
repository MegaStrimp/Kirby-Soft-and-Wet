///@description KSW - Menu - Fishbook - Sort - Stage

function scr_KSW_Menu_Fishbook_Sort_Stage()
{
	scr_KSW_UI_StealthTutorial_Create_Custom(global.gameWidth / 2,global.gameHeight / 2,"Sorted By Stage",60,.2,fa_center,fa_middle);
	
	var arr = [];
	
	for (var i = 0; i < global.KSW_FishCount; i++)
	{
	    arr[i] = selectionList[| i];
	}
	
	array_sort(arr,function(a,b)
	{
	    var stageA = global.KSW_FishList[a].stage;
	    var stageB = global.KSW_FishList[b].stage;
    
	    return stageA - stageB;
	});
	
	ds_list_clear(selectionList);

	for (var i = 0; i < global.KSW_FishCount; i++)
	{
	    ds_list_add(selectionList,arr[i]);
	}
}