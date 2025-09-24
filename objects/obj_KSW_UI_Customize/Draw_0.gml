///@description Draw

#region Variables
var xx = camera_get_view_x(mainView);
var yy = camera_get_view_y(mainView);
#endregion

#region Set Font
scribble_font_set_default("fnt_Advance");
#endregion

#region Overlay
draw_set_alpha(.5);
draw_rectangle_color(camera_get_view_x(mainView),camera_get_view_y(mainView),camera_get_view_x(mainView) + global.gameWidth,camera_get_view_y(mainView) + global.gameHeight,c_black,c_black,c_black,c_black,false);
draw_set_alpha(1);
#endregion

#region Page Title
scribble("CUSTOMIZE").align(fa_center).draw(xx + (global.gameWidth / 2),yy + 6 - hintOffset);
#endregion

#region Button Hints
var exitIcon = "";
var targetIcon = global.UI_IconBindings[? string(input_binding_get("B"))];
if (targetIcon != undefined) exitIcon = "[" + sprite_get_name(targetIcon) + "]";

scribble(exitIcon + "BACK").draw(4,room_height - 16 + hintOffset + (2 * (buttonInputTimerComponent_BTimer != -1)));

var selectIcon = "";
var targetIcon = global.UI_IconBindings[? string(input_binding_get("A"))];
if (targetIcon != undefined) selectIcon = "[" + sprite_get_name(targetIcon) + "]";

var text = scribble(selectIcon + "SELECT");
text.draw(room_width - 4 - text.get_width(),room_height + hintOffset - 16 + (2 * (buttonInputTimerComponent_YTimer != -1)));
#endregion