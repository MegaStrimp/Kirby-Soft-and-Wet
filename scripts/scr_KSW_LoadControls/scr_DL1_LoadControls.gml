///@description DL1 - Load Controls

function scr_DL1_LoadControls(file)
{
	var fileFinal = file;
	if (!global.isMobile) fileFinal = environment_get_variable("LOCALAPPDATA") + chr(92) + global.gameTitle + chr(92) + file;
	
	if (file_exists(fileFinal))
	{
	    var openedFile = file_text_open_read(fileFinal);
	    var controlsFile = file_text_read_string(openedFile);
	    file_text_close(openedFile);
		
	    if (input_system_verify(controlsFile)) input_system_import(controlsFile);
	}
}