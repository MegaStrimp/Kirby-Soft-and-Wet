/// @function scr_ListContains(list, value)
/// @param list      The ds_list to search
/// @param value     The value to find
/// @returns         true if value is found, false otherwise

function scr_ListContains(list, value) 
{
    var _size = ds_list_size(list);
    for (var i = 0; i < _size; i++) 
	{
        if (ds_list_find_value(list, i) == value) 
		{
            return true;
        }
    }
    return false;
}
