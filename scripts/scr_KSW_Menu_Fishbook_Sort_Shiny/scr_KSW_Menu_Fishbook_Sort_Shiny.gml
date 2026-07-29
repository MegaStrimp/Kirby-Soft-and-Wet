///@description KSW - Menu - Fishbook - Sort - Shiny

function scr_KSW_Menu_Fishbook_Sort_Shiny()
{
	scr_KSW_UI_StealthTutorial_Create_Custom(global.gameWidth / 2,global.gameHeight / 2,"Sorted By Shinies",60,.2,fa_center,fa_middle);
	
	var arr = [];
	
	for (var i = 0; i < global.KSW_FishCount; i++)
	{
	    arr[i] = selectionList[| i];
	}
	
	array_sort(arr,function(a,b)
	{
	    var shinyA = global.KSW_FishList[a].isCaughtShiny;
	    var shinyB = global.KSW_FishList[b].isCaughtShiny;
    
	    return shinyA - shinyB;
	});
	
	ds_list_clear(selectionList);

	for (var i = 0; i < global.KSW_FishCount; i++)
	{
	    ds_list_add(selectionList,arr[i]);
	}
}