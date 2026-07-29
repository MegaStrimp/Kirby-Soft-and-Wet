///@description Clean Up

#region Destroy Surface
if (surface_exists(drawSurface)) surface_free(drawSurface);
#endregion

#region Destroy Lists
ds_list_destroy(selectionList);
ds_list_destroy(sortList);
#endregion