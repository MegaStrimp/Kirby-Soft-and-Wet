///@description KSW - Debug - Wiki - Fish

function scr_KSW_Debug_Wiki_Fish(filename)
{
	#region Text Dump
	var file = file_text_open_write(filename);
	
	file_text_write_string(file,"{| class=\"wikitable sortable\"");
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
		var fishBoxPalette = scr_KSW_Debug_Wiki_BoxPaletteParser(global.KSW_FishList[i].caughtBoxPalette);
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
		
			file_text_write_string(file,"| rowspan=\"18\"");
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
	#endregion
	
	#region Sprites
	for (var i = 0; i < global.KSW_FishCount; i++)
	{
		var fishName = global.KSW_FishList[i].name;
		
		scr_KSW_Debug_Wiki_GifSaver(global.KSW_FishList[i].sprite,filename_path(filename) + "/Fish Sprites/Fish - " + fishName + ".gif");
	}
	#endregion
}