///@description Draw

#region Selections
var space = 16;
var startY = 8 - (max(0,selection - 7) * space);
var i = 0;

if (!instance_exists(obj_KSW_UI_NotifBox)) scribble_flush_everything();

#region Music Volume
var font = "fnt_Advance_Gray";
if (selection == i)
{
	font = "fnt_Advance";
}
scribble_font_set_default(font);

var musicText = scribble("MUSIC VOL");
musicText.draw(8,startY + (space * i));

for (var h = 0; h < 10; h++)
{
	var bubbleIsActive = (h < round(global.musicVolume * 10));
	var wave = sine_wave(((current_time + (500 * h)) / 2000),1,3,0);
	draw_sprite(spr_KSW_Menu_Settings_AudioBubble,bubbleIsActive,musicText.get_width() + 16 + (10 * h),startY + (space * i) + wave);
}
#endregion

i += 1;

#region Sfx Volume
scribble_font_set_default("fnt_Advance_Gray");
if (selection == i)
{
	scribble_font_set_default("fnt_Advance");
}

var soundText = scribble("SFX VOL");
soundText.draw(8,startY + (space * i));

for (var h = 0; h < 10; h++)
{
	var bubbleIsActive = (h < round(global.soundVolume * 10));
	var wave = sine_wave(((current_time + (500 * h)) / 2000),1,3,0);
	draw_sprite(spr_KSW_Menu_Settings_AudioBubble,bubbleIsActive,soundText.get_width() + 16 + (10 * h),startY + (space * i) + wave);
}
#endregion

i += 1;

#region Fullscreen
scribble_font_set_default("fnt_Advance_Gray");
if (selection == i)
{
	scribble_font_set_default("fnt_Advance");
}

scribble("TOGGLE FULLSCREEN").draw(8,startY + (space * i));
#endregion

i += 1;

#region Window Size
scribble_font_set_default("fnt_Advance_Gray");
if (selection == i)
{
	scribble_font_set_default("fnt_Advance");
}

scribble("WINDOW SIZE\t" + string(global.windowScaleTarget)).draw(8,startY + (space * i));
#endregion

i += 1;

#region Delete Save
scribble_font_set_default("fnt_Advance_Gray");
if (selection == i)
{
	scribble_font_set_default("fnt_Advance");
}

scribble("[c_red]DELETE SAVE[/color]").draw(8,startY + (space * i));
#endregion

i += 1;

#region Key Up
scribble_font_set_default("fnt_Advance_Gray");
if (selection == i)
{
	scribble_font_set_default("fnt_Advance");
}

var icon = "";
var targetIcon = global.UI_IconBindings[? string(buttonRemap_KeysText[0])];
if (targetIcon != undefined) icon = "[" + sprite_get_name(targetIcon) + "]";

scribble("KEY UP\t" + icon).draw(8,startY + (space * i));
#endregion

i += 1;

#region Key Down
scribble_font_set_default("fnt_Advance_Gray");
if (selection == i)
{
	scribble_font_set_default("fnt_Advance");
}

var icon = "";
var targetIcon = global.UI_IconBindings[? string(buttonRemap_KeysText[1])];
if (targetIcon != undefined) icon = "[" + sprite_get_name(targetIcon) + "]";

scribble("KEY DOWN\t" + icon).draw(8,startY + (space * i));
#endregion

i += 1;

#region Key Left
scribble_font_set_default("fnt_Advance_Gray");
if (selection == i)
{
	scribble_font_set_default("fnt_Advance");
}

var icon = "";
var targetIcon = global.UI_IconBindings[? string(buttonRemap_KeysText[2])];
if (targetIcon != undefined) icon = "[" + sprite_get_name(targetIcon) + "]";

scribble("KEY LEFT\t" + icon).draw(8,startY + (space * i));
#endregion

i += 1;

#region Key Right
scribble_font_set_default("fnt_Advance_Gray");
if (selection == i)
{
	scribble_font_set_default("fnt_Advance");
}

var icon = "";
var targetIcon = global.UI_IconBindings[? string(buttonRemap_KeysText[3])];
if (targetIcon != undefined) icon = "[" + sprite_get_name(targetIcon) + "]";

scribble("KEY RIGHT\t" + icon).draw(8,startY + (space * i));
#endregion

i += 1;

#region Key A
scribble_font_set_default("fnt_Advance_Gray");
if (selection == i)
{
	scribble_font_set_default("fnt_Advance");
}

var icon = "";
var targetIcon = global.UI_IconBindings[? string(buttonRemap_KeysText[4])];
if (targetIcon != undefined) icon = "[" + sprite_get_name(targetIcon) + "]";

scribble("KEY NEXT\t" + icon).draw(8,startY + (space * i));
#endregion

i += 1;

#region Key B
scribble_font_set_default("fnt_Advance_Gray");
if (selection == i)
{
	scribble_font_set_default("fnt_Advance");
}

var icon = "";
var targetIcon = global.UI_IconBindings[? string(buttonRemap_KeysText[5])];
if (targetIcon != undefined) icon = "[" + sprite_get_name(targetIcon) + "]";

scribble("KEY CANCEL\t" + icon).draw(8,startY + (space * i));
#endregion

i += 1;

#region Key X
scribble_font_set_default("fnt_Advance_Gray");
if (selection == i)
{
	scribble_font_set_default("fnt_Advance");
}

var icon = "";
var targetIcon = global.UI_IconBindings[? string(buttonRemap_KeysText[6])];
if (targetIcon != undefined) icon = "[" + sprite_get_name(targetIcon) + "]";

scribble("KEY SPECIAL\t" + icon).draw(8,startY + (space * i));
#endregion
/*
i += 1;

#region Key Y
scribble_font_set_default("fnt_Advance_Gray");
if (selection == i)
{
	scribble_font_set_default("fnt_Advance");
}

var icon = "";
var targetIcon = global.UI_IconBindings[? string(buttonRemap_KeysText[7])];
if (targetIcon != undefined) icon = "[" + sprite_get_name(targetIcon) + "]";

scribble("KEY Y\t" + icon).draw(8,startY + (space * i));
#endregion
*/
i += 1;

#region Key L
scribble_font_set_default("fnt_Advance_Gray");
if (selection == i)
{
	scribble_font_set_default("fnt_Advance");
}

var icon = "";
var targetIcon = global.UI_IconBindings[? string(buttonRemap_KeysText[8])];
if (targetIcon != undefined) icon = "[" + sprite_get_name(targetIcon) + "]";

scribble("KEY L\t" + icon).draw(8,startY + (space * i));
#endregion

i += 1;

#region Key R
scribble_font_set_default("fnt_Advance_Gray");
if (selection == i)
{
	scribble_font_set_default("fnt_Advance");
}

var icon = "";
var targetIcon = global.UI_IconBindings[? string(buttonRemap_KeysText[9])];
if (targetIcon != undefined) icon = "[" + sprite_get_name(targetIcon) + "]";

scribble("KEY R\t" + icon).draw(8,startY + (space * i));
#endregion

i += 1;

#region Key LT
scribble_font_set_default("fnt_Advance_Gray");
if (selection == i)
{
	scribble_font_set_default("fnt_Advance");
}

var icon = "";
var targetIcon = global.UI_IconBindings[? string(buttonRemap_KeysText[10])];
if (targetIcon != undefined) icon = "[" + sprite_get_name(targetIcon) + "]";

scribble("KEY LT\t" + icon).draw(8,startY + (space * i));
#endregion

i += 1;

#region Key RT
scribble_font_set_default("fnt_Advance_Gray");
if (selection == i)
{
	scribble_font_set_default("fnt_Advance");
}

var icon = "";
var targetIcon = global.UI_IconBindings[? string(buttonRemap_KeysText[11])];
if (targetIcon != undefined) icon = "[" + sprite_get_name(targetIcon) + "]";

scribble("KEY RT\t" + icon).draw(8,startY + (space * i));
#endregion

i += 1;

#region Key Start
scribble_font_set_default("fnt_Advance_Gray");
if (selection == i)
{
	scribble_font_set_default("fnt_Advance");
}

var icon = "";
var targetIcon = global.UI_IconBindings[? string(buttonRemap_KeysText[12])];
if (targetIcon != undefined) icon = "[" + sprite_get_name(targetIcon) + "]";

scribble("KEY START\t" + icon).draw(8,startY + (space * i));
#endregion
/*
i += 1;

#region Key Select
scribble_font_set_default("fnt_Advance_Gray");
if (selection == i)
{
	scribble_font_set_default("fnt_Advance");
}

var icon = "";
var targetIcon = global.UI_IconBindings[? string(buttonRemap_KeysText[13])];
if (targetIcon != undefined) icon = "[" + sprite_get_name(targetIcon) + "]";

scribble("KEY SELECT\t" + icon).draw(8,startY + (space * i));
#endregion
*/

i += 1;

#region Reset Keys
scribble_font_set_default("fnt_Advance_Gray");
if (selection == i)
{
	scribble_font_set_default("fnt_Advance");
}

scribble("RESET KEYS").draw(8,startY + (space * i));
#endregion
#endregion

#region Button Hints
scribble_font_set_default("fnt_Advance");

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
	
	scribble_font_set_default("fnt_Advance");
	
	scribble("PRESS THE KEY YOU WANT TO REBIND INTO").align(fa_center,fa_middle).wrap(room_width).draw(room_width / 2,room_height / 2);
}
#endregion