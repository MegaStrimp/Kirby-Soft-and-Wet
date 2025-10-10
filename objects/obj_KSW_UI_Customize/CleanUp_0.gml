///@description Clean Up

#region Destroy Lists
ds_map_destroy(KSW_PageIDs);
if (selectionList != -1) ds_list_destroy(selectionList);
#endregion