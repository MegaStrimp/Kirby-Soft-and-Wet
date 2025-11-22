///@description Draw

#region Background
var colorCycle = sine_between(global.currentTimePausable,360,-4,4);
var color1 = (100 + colorCycle) % 360;
var color2 = (110 + colorCycle) % 360;
var color3 = (120 + colorCycle) % 360;
var color4 = (130 + colorCycle) % 360;

draw_rectangle_color(0,0,global.gameWidth,global.gameHeight,make_color_hsv(color1,140,245),make_color_hsv(color2,150,255),make_color_hsv(color3,140,245),make_color_hsv(color4,150,255),false);
#endregion

#region Status Text
var startIcon = "";
var targetIcon = global.UI_IconBindings[? string(input_binding_get("start"))];
if (targetIcon != undefined) startIcon = "[" + sprite_get_name(targetIcon) + "]";

var exitIcon = "";
var targetIcon = global.UI_IconBindings[? string(input_binding_get("B"))];
if (targetIcon != undefined) exitIcon = "[" + sprite_get_name(targetIcon) + "]";

switch (textWithButtons)
{
	case 1:
	text = "No internet connection. Would you like to try again?\n\n\n\n\n\n\n\n" + startIcon + "YES\n\n" + exitIcon + "NO";
	break;
	
	case 2:
	text = "The server cannot be reached. Please contact Strimp and update manually. Would you like to try again?\n\n\n\n" + startIcon + "YES\n\n" + exitIcon + "NO";
	break;
	
	case 3:
	text = "There's a new version available. Would you like to update?\n\n\n\n\n\n\n\n" + startIcon + "YES\n\n" + exitIcon + "NO";
	break;
}

scribble_font_set_default("fnt_Advance");
scribble_anim_cycle(.5,60,255);

scribble("[cycle,170,180,0,0]" + string(global.gameTitle) + " - " + string(global.versionNumber) + " to " + string(latestVersion) + "\n\n\n" + text + "[/cycle]").align(fa_center).wrap(room_width).draw(room_width / 2,2);
#endregion