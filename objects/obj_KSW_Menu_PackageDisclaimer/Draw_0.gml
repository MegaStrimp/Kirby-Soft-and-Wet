///@description Draw

#region Text
scribble("[fnt_Advance]WARNING FOR MOBILE USERS\n\nWe have switched the Package ID, which has made a duplicate of the app on Home Screen. This will be a one-time change. Please Export your save from the old app, and Import it to this one from the Settings Menu. Thanks for playing![/font]").wrap(240).align(fa_center).draw(120,4);
#endregion

#region Button Hints
var selectIcon = "";
var targetIcon = global.UI_IconBindings[? string(input_binding_get("A"))];
if (targetIcon != undefined) selectIcon = "[" + sprite_get_name(targetIcon) + "]";

var text = scribble(selectIcon + "[fnt_Advance]Begin[/font]");
text.draw(room_width - 4 - text.get_width(),room_height - 16 + (2 * (buttonInputTimerComponent_ATimer != -1)));
#endregion