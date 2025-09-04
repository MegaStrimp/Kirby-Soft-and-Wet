///@description Clean Up

#region Destroy Lists
if (ds_exists(attackTypes,ds_type_list)) ds_list_destroy(attackTypes);
ds_map_destroy(attackTypeResistances);
#endregion