///@description KSW - Debug - Wiki - Hats

function scr_KSW_Debug_Wiki_Hats(filename)
{
	#region Text Dump
	var file = file_text_open_write(filename);
	
	file_text_write_string(file,"<div style=\"display:flex; gap:1em; align-items:flex-start;\">");
	file_text_writeln(file);
	
	var page = 0;
	
	for (var i = 0; i < global.KSW_CharacterCount; i++)
	{
		var characterName = global.KSW_CharacterList[i].name;
		
		if (global.KSW_HatCount[i] > 1)
		{
			file_text_write_string(file,"<div style=\"flex:1; min-width:0;\">");
			file_text_writeln(file);
			file_text_write_string(file,"{| class=\"wikitable\"");
			file_text_writeln(file);
			file_text_write_string(file,"! colspan=\"4\" |" + characterName);
			file_text_writeln(file);
			file_text_write_string(file,"|+");
			file_text_writeln(file);
			file_text_write_string(file,"!Hat");
			file_text_writeln(file);
			file_text_write_string(file,"!Sprite");
			file_text_writeln(file);
			file_text_write_string(file,"!Box Palette");
			file_text_writeln(file);
			file_text_write_string(file,"!Price");
			file_text_writeln(file);
			file_text_write_string(file,"|-");
			file_text_writeln(file);
			
			for (var j = 1; j < global.KSW_HatCount[i]; j++)
			{
				var hatName = global.KSW_CharacterList[i].hats[j].name;
				var hatPrice = global.KSW_CharacterList[i].hats[j].price;
				var hatBoxPalette = scr_KSW_Debug_Wiki_BoxPaletteParser(global.KSW_CharacterList[i].hats[j].boxPalette);
				
				file_text_write_string(file,"|" + hatName);
				file_text_writeln(file);
				file_text_write_string(file,"|[[File:Hat - " + characterName + " - " + hatName + ".png|center]]");
				file_text_writeln(file);
				file_text_write_string(file,"|" + string(hatBoxPalette));
				file_text_writeln(file);
				file_text_write_string(file,"|" + string(hatPrice) + " Coins");
				file_text_writeln(file);
				file_text_write_string(file,"|-");
				file_text_writeln(file);
			}
			
			file_text_write_string(file,"</div>");
			file_text_writeln(file);
		}
	}
	
	file_text_write_string(file,"</div>");
	
	file_text_close(file);
	#endregion
	
	#region Sprites
	for (var i = 0; i < global.KSW_CharacterCount; i++)
	{
		var characterName = global.KSW_CharacterList[i].name;
		
		if (global.KSW_HatCount[i] > 1)
		{
			for (var j = 1; j < global.KSW_HatCount[i]; j++)
			{
				var hatName = global.KSW_CharacterList[i].hats[j].name;
				
				scr_KSW_Debug_Wiki_GifSaver(global.KSW_CharacterList[i].hats[j].icon,filename_path(filename) + "/Hat Sprites/Hat - " + characterName + " - " + hatName + ".gif");
			}
		}
	}
	#endregion
}