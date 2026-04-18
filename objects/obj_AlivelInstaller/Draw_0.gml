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
switch (textWithButtons)
{
	case 1:
	text = "No internet connection. Would you like to try again?";
	break;
	
	case 2:
	text = "The server cannot be reached. Please contact Strimp and update manually. Would you like to try again?";
	break;
	
	case 3:
	text = "There's a new version available. Would you like to update?";
	break;
}

scribble_anim_cycle(.5,60,255);

scribble("[fnt_Advance][cycle,170,180,0,0]" + string(global.gameTitle) + " - " + string(global.versionNumber) + " to " + string(latestVersion) + "\n\n\n" + text + "[/font][/cycle]").align(fa_center).wrap(room_width).draw(room_width / 2,2);
#endregion

#region Button Hints
if (textWithButtons != 0)
{
	var startIcon = "";
	var targetIcon = global.UI_IconBindings[? string(input_binding_get("start"))];
	if (targetIcon != undefined) startIcon = "[" + sprite_get_name(targetIcon) + "]";
	
	var nextText = scribble("[fnt_Advance]" + startIcon + " Next[/font]");
	nextText.draw(global.gameWidth - 4 - nextText.get_width(),global.gameHeight - 16 + (2 * (buttonInputTimerComponent_YTimer != -1)));
	
	var exitIcon = "";
	var targetIcon = global.UI_IconBindings[? string(input_binding_get("B"))];
	if (targetIcon != undefined) exitIcon = "[" + sprite_get_name(targetIcon) + "]";
	
	scribble("[fnt_Advance]" + exitIcon + " No[/font]").draw(4,global.gameHeight - 16 + (2 * (buttonInputTimerComponent_BTimer != -1)));
}
#endregion