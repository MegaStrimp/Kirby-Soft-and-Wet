///@description Draw

#region Text
scribble("[fnt_Advance]This game features [rainbow]palette swap shaders[/rainbow] that may slow down low-end devices. Do you want to disable them? You can toggle this back in the Settings.\n\n(It will also disable [rainbow]Spray Paints[/rainbow])[/font]").wrap(240).align(fa_center).draw(120,4);
#endregion

#region Button Hints
var exitIcon = "";
var targetIcon = global.UI_IconBindings[? string(input_binding_get("B"))];
if (targetIcon != undefined) exitIcon = "[" + sprite_get_name(targetIcon) + "]";

var selectIcon = "";
var targetIcon = global.UI_IconBindings[? string(input_binding_get("A"))];
if (targetIcon != undefined) selectIcon = "[" + sprite_get_name(targetIcon) + "]";

scribble(exitIcon + "[fnt_Advance]DISABLE[/font]").draw(4,room_height - 16 + (2 * (buttonInputTimerComponent_BTimer != -1)));
var text = scribble(selectIcon + "[fnt_Advance][rainbow]ENABLE[/rainbow][/font]");
text.draw(room_width - 4 - text.get_width(),room_height - 16 + (2 * (buttonInputTimerComponent_ATimer != -1)));
#endregion