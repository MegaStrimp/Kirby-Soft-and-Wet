///@description Async - HTTP

if (async_load[? "id"] == requestId)
{
    var connected = async_load[? "status"];
	
    if (connected == 0)
    {
        var _path = async_load[? "result"];
        var _files = zip_unzip(_path, working_directory);
		
        if (_files > 0)
        {
			isDownloading = false;
			textWithButtons = 0;
			text = "Update successful! The game will start now...";
			execute_shell_simple(working_directory + "\\" + global.alivelInstaller_TargetFilename);
			game_end();
        }
		
		if (isDownloading)
		{
			isDownloading = false;
			
			if (!os_is_network_connected())
			{
				textWithButtons = 1;
			}
			else
			{
				textWithButtons = 2;
			}
		}
		
		file_delete(_path);
    }
}

if (async_load[? "id"] == requestVersionNumberId)
{
    var _status = async_load[? "status"];
	
    latestVersion = (_status == 0) ? string_trim(async_load[? "result"]) : -1;
	
	if ((latestVersion != -1) and (latestVersion != global.versionNumber))
	{
		global.alivelInstaller_HasUpdate = true;
		
		if (global.isMobile)
		{
			room_goto(global.alivelInstaller_TargetRoom);
		}
		else
		{
			textWithButtons = 3;
		}
	}
	else
	{
		global.alivelInstaller_HasUpdate = false;
		
		room_goto(global.alivelInstaller_TargetRoom);
	}
}