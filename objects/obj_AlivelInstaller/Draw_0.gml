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
scribble_font_set_default("fnt_Advance");
scribble_anim_cycle(.5,60,255);

//scribble("[cycle,170,180,0,0]" + string(global.gameTitle) + " - " + string(global.versionNumber) + " to " + string(latestVersion) + "\n\n\n" + text + "[/cycle]").align(fa_center).wrap(room_width).draw(room_width / 2,2);
scribble("[cycle,170,180,0,0]" + string(global.gameTitle) + " - " + string(latestVersion) + " to " + string(global.versionNumber) + "\n\n\n" + text + "[/cycle]").align(fa_center).wrap(room_width).draw(room_width / 2,2);
#endregion