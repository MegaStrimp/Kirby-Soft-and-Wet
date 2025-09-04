///@description Clean Up

#region Destroy Lists
if (ds_exists(inhaledList,ds_type_list)) ds_list_destroy(inhaledList);
if (ds_exists(attackTypes,ds_type_list)) ds_list_destroy(attackTypes);
ds_map_destroy(attackTypeResistances);
#endregion

#region Destroy Debug View
if (global.debug) dbg_view_delete(debugView);
#endregion