///@description KSW - Export Save File (Mobile)

function scr_KSW_ExportSaveFile()
{
	if (global.fullSaveLoaded) return false;
	
	scr_KSW_SaveData("data1.ini");
	
	var _dir = game_save_id;
	var _last = string_char_at(_dir,string_length(_dir));
	if ((_last != "/") and (_last != "\\")) _dir += "/";
	
	if (!file_exists("data1.ini")) return false;
	
	var _source = _dir + "data1.ini";
	
	return ksw_save_picker_open(_source,"data1.ini");
}
