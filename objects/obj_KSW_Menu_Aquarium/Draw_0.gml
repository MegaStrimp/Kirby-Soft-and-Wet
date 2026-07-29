///@description Draw

#region Set Font
scribble_font_set_default("fnt_Advance");
#endregion

#region Page Title
scribble("AQUARIUM").align(fa_center).draw((global.gameWidth / 2),6);
#endregion

#region Completion
var color = "[#FFFFFF]";

if (isFull) color = "[#FF0000]";

scribble(color + string(fishCount) + "/" + string(maxFishCount) + "[/color]").draw(4,6);
#endregion

#region Button Hints
var exitIcon = "";
var targetIcon = global.UI_IconBindings[? string(input_binding_get("B"))];
if (targetIcon != undefined) exitIcon = "[" + sprite_get_name(targetIcon) + "]";

scribble(exitIcon + "EXIT").draw(4,room_height - 16 + (2 * (buttonInputTimerComponent_BTimer != -1)));
#endregion