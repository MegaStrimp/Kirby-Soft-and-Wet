///@description Async - Social (KSW File Picker)

if (async_load[? "type"] == "ksw_filepicker_save")
{
	if (async_load[? "success"])
	{
		show_message_async("Save file exported successfully!");
	}
	else if (async_load[? "message"] != "cancelled")
	{
		show_message_async("Export failed: " + string(async_load[? "message"]));
	}
}

if (async_load[? "type"] == "ksw_filepicker_open")
{
	if (async_load[? "success"])
	{
		var _path = async_load[? "path"];
		
		if (file_exists(_path))
		{
			scr_KSW_LoadData(_path,true);
			scr_KSW_SaveData("data1.ini");
			
			file_delete(_path);
			
			show_message_async("Save file imported successfully!");
		}
		else
		{
			show_message_async("Import failed: file not found.");
		}
	}
	else if (async_load[? "message"] != "cancelled")
	{
		show_message_async("Import failed: " + string(async_load[? "message"]));
	}
}
