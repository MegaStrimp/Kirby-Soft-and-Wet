///@description Draw

#region Fish
draw_sprite(spr_KSW_Menu_Credits_Fish,fishIndex,150,54);
#endregion

#region Sheets
for (var i = 0; i < 2; i++)
{
	draw_sprite(spr_KSW_Menu_Credits_Sheet,0,sheetX - (sheetWidth * i),144);
	draw_sprite_ext(spr_KSW_Menu_Credits_Sheet,0,224,sheetX - (sheetWidth * i),1,1,270,c_white,1);
}
#endregion

#region Draw Credits
var yy = 0;
var text = "";
var sep = 16;

scribble_font_set_default("fnt_Advance");

for (var i = 0; i < array_length(creditsNames); i++)
{
	text = string_upper(creditsNames[i]);
	
	scribble(text).draw(8,yStart + yScroll + yy);
	yy += sep;
}
#endregion

#region Button Hints
var exitIcon = "";
var targetIcon = global.UI_IconBindings[? string(input_binding_get("B"))];
if (targetIcon != undefined) exitIcon = "[" + sprite_get_name(targetIcon) + "]";

scribble(exitIcon + "EXIT").draw(4,room_height - 16 + (2 * (buttonInputTimerComponent_BTimer != -1)));
#endregion