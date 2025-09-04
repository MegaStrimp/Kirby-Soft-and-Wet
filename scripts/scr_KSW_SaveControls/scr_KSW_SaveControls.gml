///@description KSW - Save Controls

function scr_KSW_SaveControls(file)
{
	var fileFinal = file;
	if (!global.isMobile) fileFinal = environment_get_variable("LOCALAPPDATA") + chr(92) + global.gameTitle + chr(92) + file;
	
	var openedFile = file_text_open_write(fileFinal);
	file_text_write_string(openedFile,input_system_export(true));
	file_text_close(openedFile);
}