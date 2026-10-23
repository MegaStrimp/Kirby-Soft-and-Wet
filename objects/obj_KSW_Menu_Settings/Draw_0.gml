///@description Draw

#region Selections
var space = 16;
var startY = 8 - (listScroll * space);
var i = 0;

#region Music Volume
var yy = startY + (space * i);

if ((yy > -space) and (yy < (global.gameHeight - space)))
{
	var targetFont = "[fnt_Advance_Gray]";
	if (selection == i)
	{
		var targetFont = "[fnt_Advance]";
	}

	var musicText = scribble(targetFont + "MUSIC VOL[/font]");
	musicText.draw(8,yy);

	for (var h = -1; h < 10; h++)
	{
		var bubbleIsActive = (h < round(global.musicVolume * 10));
		var wave = sine_wave(((current_time + (500 * h)) / 2000),1,3,0);
		var bubbleX = musicText.get_width() + 16 + (10 * h);
		var bubbleY = yy + wave;
	
		if (h != -1)
		{
			if ((global.shaders) and (bubbleIsActive)) pal_swap_set(global.KSW_BubblePalette,1,false);
			draw_sprite(spr_KSW_Menu_Settings_AudioBubble,bubbleIsActive,bubbleX,bubbleY);
			if ((global.shaders) and (bubbleIsActive)) pal_swap_reset();
		}
	
		if ((selection == i) and (mouse_check_button(mb_left)) and (scr_MouseIsInbetween(bubbleX,bubbleY,bubbleX + 8,bubbleY + 8)))
		{
			global.musicVolume = (h + 1) * .1;
		}
	}
}
#endregion

i += 1;

#region Sfx Volume
var yy = startY + (space * i);

if ((yy > -space) and (yy < (global.gameHeight - space)))
{
	var targetFont = "[fnt_Advance_Gray]";
	if (selection == i)
	{
		var targetFont = "[fnt_Advance]";
	}

	var soundText = scribble(targetFont + "SFX VOL[/font]");
	soundText.draw(8,yy);

	for (var h = -1; h < 10; h++)
	{
		var bubbleIsActive = (h < round(global.soundVolume * 10));
		var wave = sine_wave(((current_time + (500 * h)) / 2000),1,3,0);
		var bubbleX = soundText.get_width() + 16 + (10 * h);
		var bubbleY = yy + wave;
	
		if (h != -1)
		{
			if ((global.shaders) and (bubbleIsActive)) pal_swap_set(global.KSW_BubblePalette,1,false);
			draw_sprite(spr_KSW_Menu_Settings_AudioBubble,bubbleIsActive,bubbleX,bubbleY);
			if ((global.shaders) and (bubbleIsActive)) pal_swap_reset();
		}
	
		if ((selection == i) and (mouse_check_button(mb_left)) and (scr_MouseIsInbetween(bubbleX,bubbleY,bubbleX + 8,bubbleY + 8)))
		{
			global.soundVolume = (h + 1) * .1;
		}
	}
}
#endregion

i += 1;

#region Fullscreen
var yy = startY + (space * i);

if ((yy > -space) and (yy < (global.gameHeight - space)))
{
	var targetFont = "[fnt_Advance_Gray]";
	if (selection == i)
	{
		var targetFont = "[fnt_Advance]";
	}

	if (global.isMobile)
	{
		var orientationText = "SCREEN ORIENTATION - AUTO";
		if (global.screenOrientation == 1) orientationText = "SCREEN ORIENTATION - PORTRAIT";
		else if (global.screenOrientation == 2) orientationText = "SCREEN ORIENTATION - LANDSCAPE";
	
		scribble(targetFont + orientationText + "[/font]").draw(8,yy);
	}
	else if ((!global.isMobile) and (!global.isOpera))
	{
		scribble(targetFont + "TOGGLE FULLSCREEN[/font]").draw(8,yy);
	}
	else
	{
		scribble(targetFont + "TOGGLE FULLSCREEN (NOT AVAILABLE)[/font]").draw(8,yy);
	}
}
#endregion

i += 1;

#region Window Size
var yy = startY + (space * i);

if ((yy > -space) and (yy < (global.gameHeight - space)))
{
	var targetFont = "[fnt_Advance_Gray]";
	if (selection == i)
	{
		var targetFont = "[fnt_Advance]";
	}

	if ((!global.isMobile) and (!global.isOpera))
	{
		scribble(targetFont + "WINDOW SIZE " + string(global.windowScaleTarget) + "[/font]").draw(8,yy);
	}
	else
	{
		scribble(targetFont + "WINDOW SIZE (NOT AVAILABLE)[/font]").draw(8,yy);
	}
}
#endregion

i += 1;

#region Shaders
var yy = startY + (space * i);

if ((yy > -space) and (yy < (global.gameHeight - space)))
{
	var targetFont = "[fnt_Advance_Gray]";
	if (selection == i)
	{
		var targetFont = "[fnt_Advance]";
	}

	var text = "ENABLE SHADERS";
	if (global.shaders) text = "DISABLE SHADERS";
	scribble(targetFont + text + "[/font]").draw(8,yy);
}
#endregion

i += 1;

#region Cursor
var yy = startY + (space * i);

if ((yy > -space) and (yy < (global.gameHeight - space)))
{
	var targetFont = "[fnt_Advance_Gray]";
	if (selection == i)
	{
		var targetFont = "[fnt_Advance]";
	}

	var text = "ENABLE CURSOR";
	if (global.KSW_HasCursor) text = "DISABLE CURSOR";
	scribble(targetFont + text + "[/font]").draw(8,yy);
}
#endregion

i += 1;

#region Always Fish Popups
var yy = startY + (space * i);

if ((yy > -space) and (yy < (global.gameHeight - space)))
{
	var targetFont = "[fnt_Advance_Gray]";
	if (selection == i)
	{
		var targetFont = "[fnt_Advance]";
	}

	var text = "ENABLE ALWAYS FISH POPUPS";
	if (global.KSW_AlwaysFishPopups) text = "DISABLE ALWAYS FISH POPUPS";
	scribble(targetFont + text + "[/font]").draw(8,yy);
}
#endregion

i += 1;

#region Export Save
var yy = startY + (space * i);

if ((yy > -space) and (yy < (global.gameHeight - space)))
{
	var targetFont = "[fnt_Advance_Gray]";
	if (selection == i)
	{
		var targetFont = "[fnt_Advance]";
	}

	if ((global.isMobile) or (!global.isOpera))
	{
		scribble(targetFont + "EXPORT SAVE[/font]").draw(8,yy);
	}
	else
	{
		scribble(targetFont + "EXPORT SAVE (NOT AVAILABLE)[/font]").draw(8,yy);
	}
}
#endregion

i += 1;

#region Import Save
var yy = startY + (space * i);

if ((yy > -space) and (yy < (global.gameHeight - space)))
{
	var targetFont = "[fnt_Advance_Gray]";
	if (selection == i)
	{
		var targetFont = "[fnt_Advance]";
	}

	if ((global.isMobile) or (!global.isOpera))
	{
		scribble(targetFont + "IMPORT SAVE[/font]").draw(8,yy);
	}
	else
	{
		scribble(targetFont + "IMPORT SAVE (NOT AVAILABLE)[/font]").draw(8,yy);
	}
}
#endregion

i += 1;

#region Delete Save
var yy = startY + (space * i);

if ((yy > -space) and (yy < (global.gameHeight - space)))
{
	var targetFont = "[fnt_Advance_Gray]";
	if (selection == i)
	{
		var targetFont = "[fnt_Advance]";
	}

	scribble(targetFont + "[c_red]DELETE SAVE[/color][/font]").draw(8,yy);
}
#endregion

i += 1;

#region Key Up
var yy = startY + (space * i);

if ((yy > -space) and (yy < (global.gameHeight - space)))
{
	var targetFont = "[fnt_Advance_Gray]";
	if (selection == i)
	{
		var targetFont = "[fnt_Advance]";
	}

	var icon = "";
	var targetIcon = global.UI_IconBindings[? string(buttonRemap_KeysText[0])];
	if (targetIcon != undefined) icon = "[" + sprite_get_name(targetIcon) + "]";

	scribble(targetFont + "KEY UP[/font]\t" + icon).draw(8,yy);
}
#endregion

i += 1;

#region Key Down
var yy = startY + (space * i);

if ((yy > -space) and (yy < (global.gameHeight - space)))
{
	var targetFont = "[fnt_Advance_Gray]";
	if (selection == i)
	{
		var targetFont = "[fnt_Advance]";
	}

	var icon = "";
	var targetIcon = global.UI_IconBindings[? string(buttonRemap_KeysText[1])];
	if (targetIcon != undefined) icon = "[" + sprite_get_name(targetIcon) + "]";

	scribble(targetFont + "KEY DOWN[/font]\t" + icon).draw(8,yy);
}
#endregion

i += 1;

#region Key Left
var yy = startY + (space * i);

if ((yy > -space) and (yy < (global.gameHeight - space)))
{
	var targetFont = "[fnt_Advance_Gray]";
	if (selection == i)
	{
		var targetFont = "[fnt_Advance]";
	}

	var icon = "";
	var targetIcon = global.UI_IconBindings[? string(buttonRemap_KeysText[2])];
	if (targetIcon != undefined) icon = "[" + sprite_get_name(targetIcon) + "]";

	scribble(targetFont + "KEY LEFT[/font]\t" + icon).draw(8,yy);
}
#endregion

i += 1;

#region Key Right
var yy = startY + (space * i);

if ((yy > -space) and (yy < (global.gameHeight - space)))
{
	var targetFont = "[fnt_Advance_Gray]";
	if (selection == i)
	{
		var targetFont = "[fnt_Advance]";
	}

	var icon = "";
	var targetIcon = global.UI_IconBindings[? string(buttonRemap_KeysText[3])];
	if (targetIcon != undefined) icon = "[" + sprite_get_name(targetIcon) + "]";

	scribble(targetFont + "KEY RIGHT[/font]\t" + icon).draw(8,yy);
}
#endregion

i += 1;

#region Key A
var yy = startY + (space * i);

if ((yy > -space) and (yy < (global.gameHeight - space)))
{
	var targetFont = "[fnt_Advance_Gray]";
	if (selection == i)
	{
		var targetFont = "[fnt_Advance]";
	}

	var icon = "";
	var targetIcon = global.UI_IconBindings[? string(buttonRemap_KeysText[4])];
	if (targetIcon != undefined) icon = "[" + sprite_get_name(targetIcon) + "]";

	scribble(targetFont + "KEY NEXT[/font]\t" + icon).draw(8,yy);
}
#endregion

i += 1;

#region Key B
var yy = startY + (space * i);

if ((yy > -space) and (yy < (global.gameHeight - space)))
{
	var targetFont = "[fnt_Advance_Gray]";
	if (selection == i)
	{
		var targetFont = "[fnt_Advance]";
	}

	var icon = "";
	var targetIcon = global.UI_IconBindings[? string(buttonRemap_KeysText[5])];
	if (targetIcon != undefined) icon = "[" + sprite_get_name(targetIcon) + "]";

	scribble(targetFont + "KEY CANCEL[/font]\t" + icon).draw(8,yy);
}
#endregion

i += 1;

#region Key X
var yy = startY + (space * i);

if ((yy > -space) and (yy < (global.gameHeight - space)))
{
	var targetFont = "[fnt_Advance_Gray]";
	if (selection == i)
	{
		var targetFont = "[fnt_Advance]";
	}

	var icon = "";
	var targetIcon = global.UI_IconBindings[? string(buttonRemap_KeysText[6])];
	if (targetIcon != undefined) icon = "[" + sprite_get_name(targetIcon) + "]";

	scribble(targetFont + "KEY SPECIAL[/font]\t" + icon).draw(8,yy);
}
#endregion

i += 1;

#region Key Y
var yy = startY + (space * i);

if ((yy > -space) and (yy < (global.gameHeight - space)))
{
	var targetFont = "[fnt_Advance_Gray]";
	if (selection == i)
	{
		var targetFont = "[fnt_Advance]";
	}

	var icon = "";
	var targetIcon = global.UI_IconBindings[? string(buttonRemap_KeysText[7])];
	if (targetIcon != undefined) icon = "[" + sprite_get_name(targetIcon) + "]";

	scribble(targetFont + "KEY SUBMENU[/font]\t" + icon).draw(8,yy);
}
#endregion

i += 1;

#region Key L
var yy = startY + (space * i);

if ((yy > -space) and (yy < (global.gameHeight - space)))
{
	var targetFont = "[fnt_Advance_Gray]";
	if (selection == i)
	{
		var targetFont = "[fnt_Advance]";
	}

	var icon = "";
	var targetIcon = global.UI_IconBindings[? string(buttonRemap_KeysText[8])];
	if (targetIcon != undefined) icon = "[" + sprite_get_name(targetIcon) + "]";

	scribble(targetFont + "KEY L[/font]\t" + icon).draw(8,yy);
}
#endregion

i += 1;

#region Key R
var yy = startY + (space * i);

if ((yy > -space) and (yy < (global.gameHeight - space)))
{
	var targetFont = "[fnt_Advance_Gray]";
	if (selection == i)
	{
		var targetFont = "[fnt_Advance]";
	}

	var icon = "";
	var targetIcon = global.UI_IconBindings[? string(buttonRemap_KeysText[9])];
	if (targetIcon != undefined) icon = "[" + sprite_get_name(targetIcon) + "]";

	scribble(targetFont + "KEY R[/font]\t" + icon).draw(8,yy);
}
#endregion

i += 1;

#region Key LT
var yy = startY + (space * i);

if ((yy > -space) and (yy < (global.gameHeight - space)))
{
	var targetFont = "[fnt_Advance_Gray]";
	if (selection == i)
	{
		var targetFont = "[fnt_Advance]";
	}

	var icon = "";
	var targetIcon = global.UI_IconBindings[? string(buttonRemap_KeysText[10])];
	if (targetIcon != undefined) icon = "[" + sprite_get_name(targetIcon) + "]";

	scribble(targetFont + "KEY LT[/font]\t" + icon).draw(8,yy);
}
#endregion

i += 1;

#region Key RT
var yy = startY + (space * i);

if ((yy > -space) and (yy < (global.gameHeight - space)))
{
	var targetFont = "[fnt_Advance_Gray]";
	if (selection == i)
	{
		var targetFont = "[fnt_Advance]";
	}

	var icon = "";
	var targetIcon = global.UI_IconBindings[? string(buttonRemap_KeysText[11])];
	if (targetIcon != undefined) icon = "[" + sprite_get_name(targetIcon) + "]";

	scribble(targetFont + "KEY RT[/font]\t" + icon).draw(8,yy);
}
#endregion

i += 1;

#region Key Start
var yy = startY + (space * i);

if ((yy > -space) and (yy < (global.gameHeight - space)))
{
	var targetFont = "[fnt_Advance_Gray]";
	if (selection == i)
	{
		var targetFont = "[fnt_Advance]";
	}

	var icon = "";
	var targetIcon = global.UI_IconBindings[? string(buttonRemap_KeysText[12])];
	if (targetIcon != undefined) icon = "[" + sprite_get_name(targetIcon) + "]";

	scribble(targetFont + "KEY START[/font]\t" + icon).draw(8,yy);
}
#endregion

i += 1;

#region Reset Keys
var yy = startY + (space * i);

if ((yy > -space) and (yy < (global.gameHeight - space)))
{
	var targetFont = "[fnt_Advance_Gray]";
	if (selection == i)
	{
		var targetFont = "[fnt_Advance]";
	}

	scribble(targetFont + "RESET KEYS[/font]").draw(8,yy);
}
#endregion
#endregion

#region Button Hints
var exitIcon = "";
var targetIcon = global.UI_IconBindings[? string(input_binding_get("B"))];
if (targetIcon != undefined) exitIcon = "[" + sprite_get_name(targetIcon) + "]";

var selectIcon1 = "";
var targetIcon = global.UI_IconBindings[? string(input_binding_get("A"))];
if (targetIcon != undefined) selectIcon1 = "[" + sprite_get_name(targetIcon) + "]";

var selectIcon2 = "";
var targetIcon = global.UI_IconBindings[? string(input_binding_get("left"))];
if (targetIcon != undefined) selectIcon2 = "[" + sprite_get_name(targetIcon) + "]";

var selectIcon3 = "";
var targetIcon = global.UI_IconBindings[? string(input_binding_get("right"))];
if (targetIcon != undefined) selectIcon3 = "[" + sprite_get_name(targetIcon) + "]";

scribble(exitIcon + "BACK").draw(1,room_height - 16 + (2 * (buttonInputTimerComponent_BTimer != -1)));
var text = scribble(selectIcon1 + selectIcon2 + selectIcon3 + "SELECT");
text.draw(room_width - 1 - text.get_width(),room_height - 16 + (2 * ((buttonInputTimerComponent_ATimer != -1) or (buttonInputTimerComponent_LeftTimer != -1) or (buttonInputTimerComponent_RightTimer != -1))));

if (targetKey != "")
{
	draw_rectangle_color(0,0,room_width,room_height,c_black,c_black,c_black,c_black,false);
	
	scribble("PRESS THE KEY YOU WANT TO REBIND INTO").align(fa_center,fa_middle).wrap(room_width).draw(room_width / 2,room_height / 2);
}
#endregion