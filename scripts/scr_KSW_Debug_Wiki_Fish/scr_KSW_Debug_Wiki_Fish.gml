///@description KSW - Debug - Wiki - Fish

function scr_KSW_Debug_Wiki_Fish()
{
	var filename = get_save_filename("*.txt","fish.txt");
	var file = file_text_open_write(filename);
	
	file_text_write_string(file,"{| class=" + chr(34) + "wikitable sortable" + chr(34));
	file_text_writeln(file);
	file_text_write_string(file,"!Page");
	file_text_writeln(file);
	file_text_write_string(file,"!ID");
	file_text_writeln(file);
	file_text_write_string(file,"!Name");
	file_text_writeln(file);
	file_text_write_string(file,"!Series");
	file_text_writeln(file);
	file_text_write_string(file,"!Box Palette");
	file_text_writeln(file);
	file_text_write_string(file,"!Rarity");
	file_text_writeln(file);
	file_text_write_string(file,"!Stage");
	file_text_writeln(file);
	file_text_write_string(file,"!Phase");
	file_text_writeln(file);
	file_text_write_string(file,"!Grams");
	file_text_writeln(file);
	file_text_write_string(file,"|-");
	file_text_writeln(file);
	
	var page = 0;
	
	for (var i = 0; i < global.KSW_FishCount; i++)
	{
		var fishID = global.KSW_FishList[i].IDNum;
		var fishName = global.KSW_FishList[i].name;
		var fishSeries = global.KSW_SeriesList[global.KSW_FishList[i].series].name;
		var fishBoxPalette = global.KSW_FishList[i].caughtBoxPalette;
		switch (fishBoxPalette)
		{
			case spr_KSW_UI_CaughtBox_Palette_Candy:
			fishBoxPalette = "Candy";
			break;
			
			case spr_KSW_UI_CaughtBox_Palette_Limit:
			fishBoxPalette = "Limit";
			break;
			
			case spr_KSW_UI_CaughtBox_Palette_Mint:
			fishBoxPalette = "Mint";
			break;
			
			case spr_KSW_UI_CaughtBox_Palette_Legion:
			fishBoxPalette = "Legion";
			break;
			
			case spr_KSW_UI_CaughtBox_Palette_Mage:
			fishBoxPalette = "Mage";
			break;
			
			case spr_KSW_UI_CaughtBox_Palette_Glimmer:
			fishBoxPalette = "Glimmer";
			break;
			
			case spr_KSW_UI_CaughtBox_Palette_Borange:
			fishBoxPalette = "Borange";
			break;
			
			case spr_KSW_UI_CaughtBox_Palette_Flux:
			fishBoxPalette = "Flux";
			break;
			
			case spr_KSW_UI_CaughtBox_Palette_TVTime:
			fishBoxPalette = "TVTime";
			break;
			
			case spr_KSW_UI_CaughtBox_Palette_Maze:
			fishBoxPalette = "Maze";
			break;
			
		}
		var fishRarity = global.KSW_FishList[i].rarity;
		var fishStage = global.KSW_FishList[i].stage;
		if (fishStage == -1)
		{
			fishStage = "Any"
		}
		else
		{
			fishStage = global.KSW_StageList[global.KSW_FishList[i].stage].name;
		}
		var fishPhase = global.KSW_FishList[i].phase;
		switch (fishPhase)
		{
			case KSW_Phases.day:
			fishPhase = "Day";
			break;
			
			case KSW_Phases.afternoon:
			fishPhase = "Afternoon";
			break;
			
			case KSW_Phases.night:
			fishPhase = "Night";
			break;
		}
		var fishGrams = global.KSW_FishList[i].gram;
		
		if (fishID % 18 == 0)
		{
			page += 1;
		
			file_text_write_string(file,"| rowspan=" + chr(34) + "18" + chr(34));
			file_text_write_string(file," |Page " + string(page));
			file_text_writeln(file);
		}
		
		file_text_write_string(file,"|" + string(fishID));
		file_text_writeln(file);
		file_text_write_string(file,"|" + string(fishName));
		file_text_writeln(file);
		file_text_write_string(file,"|" + string(fishSeries));
		file_text_writeln(file);
		file_text_write_string(file,"|" + string(fishBoxPalette));
		file_text_writeln(file);
		file_text_write_string(file,"|" + string(fishRarity));
		file_text_writeln(file);
		file_text_write_string(file,"|" + string(fishStage));
		file_text_writeln(file);
		file_text_write_string(file,"|" + string(fishPhase));
		file_text_writeln(file);
		file_text_write_string(file,"|" + string(fishGrams));
		file_text_writeln(file);
		file_text_write_string(file,"|-");
		file_text_writeln(file);
	}
	
	file_text_write_string(file,"|");
	file_text_writeln(file);
	file_text_write_string(file,"|}");
	
	file_text_close(file);
}