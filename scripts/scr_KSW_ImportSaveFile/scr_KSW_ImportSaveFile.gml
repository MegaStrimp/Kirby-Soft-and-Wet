///@description KSW - Import Save File (Mobile)

function scr_KSW_ImportSaveFile()
{
	var _dir = game_save_id;
	var _last = string_char_at(_dir,string_length(_dir));
	if ((_last != "/") and (_last != "\\")) _dir += "/";
	
	var _dest = _dir + "data1_import.ini";
	
	return ksw_open_picker_open(_dest);
}
