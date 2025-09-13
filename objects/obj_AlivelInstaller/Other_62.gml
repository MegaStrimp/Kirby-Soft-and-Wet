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
			text = "Update successful! The game will start now...";
			game_change("/./", "-game data.win");
        }
		
		if (isDownloading)
		{
			isDownloading = false;
			
			if (!os_is_network_connected())
			{
				text = "No internet connection. Would you like to try again?\n\n\n\n\n\n\n\n[spr_UI_Button_Keyboard_Enter]YES\n\n[spr_UI_Button_Keyboard_X]NO";
			}
			else
			{
				text = "The server cannot be reached. Please contact Strimp and update manually. Would you like to try again?\n\n\n\n[spr_UI_Button_Keyboard_Enter]YES\n\n[spr_UI_Button_Keyboard_X]NO";
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
		text = "There's a new version available. Would you like to update?\n\n\n\n\n\n\n\n[spr_UI_Button_Keyboard_Enter]YES\n\n[spr_UI_Button_Keyboard_X]NO";
	}
	else
	{
		room_goto(global.alivelInstaller_TargetRoom);
	}
}