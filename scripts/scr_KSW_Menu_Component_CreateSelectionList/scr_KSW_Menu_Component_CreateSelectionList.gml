///@description KSW - Menu - Component - Create Selection List

function scr_KSW_Menu_Component_CreateSelectionList(targetLength,extraFirstIndex = false)
{
	if (ds_exists(selectionList,ds_type_list)) ds_list_destroy(selectionList);
	selectionList = ds_list_create();
	
	if (extraFirstIndex) ds_list_add(selectionList,-1);
	
	for (var i = 0; i < targetLength; i++)
	{
		ds_list_add(selectionList,i);
	}
}