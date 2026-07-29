///@description KSW - Menu - Fishbook - Sort - Rarity

function scr_KSW_Menu_Fishbook_Sort_Rarity()
{
	scr_KSW_UI_StealthTutorial_Create_Custom(global.gameWidth / 2,global.gameHeight / 2,"Sorted By Rarity",60,.2,fa_center,fa_middle);
	
	var arr = [];
	
	for (var i = 0; i < global.KSW_FishCount; i++)
	{
	    arr[i] = selectionList[| i];
	}
	
	array_sort(arr,function(a,b)
	{
	    var rarityA = global.KSW_FishList[a].rarity;
	    var rarityB = global.KSW_FishList[b].rarity;
    
	    return rarityA - rarityB;
	});
	
	ds_list_clear(selectionList);

	for (var i = 0; i < global.KSW_FishCount; i++)
	{
	    ds_list_add(selectionList,arr[i]);
	}
}