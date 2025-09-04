///@description Draw

#region Set Font
scribble_font_set_default("fnt_Advance");
#endregion

#region Background
draw_sprite_ext(spr_KSW_Menu_TitleScreen_Back_Text,0,18,background_TextY,1,1,0,c_white,.6);
draw_sprite_ext(spr_KSW_Menu_TitleScreen_Back_Text,0,18,background_TextY + 598 + 48,1,1,0,c_white,.6);
#endregion

#region Logo
draw_sprite(spr_KSW_Menu_TitleScreen_Logo,0,room_width / 2,36 + logoWave);
#endregion

#region Phase
switch (global.KSW_CurrentPhase)
{
	case KSW_Phases.day:
	var phaseIcon = spr_KSW_Menu_TitleScreen_Phase_Day;
	break;
	
	case KSW_Phases.afternoon:
	var phaseIcon = spr_KSW_Menu_TitleScreen_Phase_Afternoon;
	break;
	
	case KSW_Phases.night:
	var phaseIcon = spr_KSW_Menu_TitleScreen_Phase_Night;
	break;
}

draw_sprite(phaseIcon,0,9,4);

var hourText = current_hour;
var hourPrefix = "AM";
if (hourText > 12)
{
	hourText -= 12;
	hourPrefix = "PM";
}

scribble(string(hourText) + " " + hourPrefix).draw(4,24);
#endregion

#region Version Number
scribble(string(global.versionNumber)).align(fa_right).draw(236,4);
#endregion

#region Button Hints
var targetIcon = global.UI_IconBindings[? string(input_binding_get("left"))];
if (targetIcon != undefined) draw_sprite(targetIcon,0,2,96 + (2 * (buttonInputTimerComponent_LeftTimer != -1)));

var targetIcon = global.UI_IconBindings[? string(input_binding_get("right"))];
if (targetIcon != undefined) draw_sprite(targetIcon,0,238 - sprite_get_width(targetIcon),96 + (2 * (buttonInputTimerComponent_RightTimer != -1)));

var exitIcon = "";
var targetIcon = global.UI_IconBindings[? string(input_binding_get("B"))];
if (targetIcon != undefined) exitIcon = "[" + sprite_get_name(targetIcon) + "]";

var creditsIcon = "";
var targetIcon = global.UI_IconBindings[? string(input_binding_get("Y"))];
if (targetIcon != undefined) creditsIcon = "[" + sprite_get_name(targetIcon) + "]";

var selectIcon = "";
var targetIcon = global.UI_IconBindings[? string(input_binding_get("A"))];
if (targetIcon != undefined) selectIcon = "[" + sprite_get_name(targetIcon) + "]";

scribble(exitIcon + "EXIT").draw(4,room_height - 16 + (2 * (buttonInputTimerComponent_BTimer != -1)));
scribble(creditsIcon + "CREDITS").align(fa_center).draw(room_width / 2,room_height - 16 + (2 * (buttonInputTimerComponent_YTimer != -1)));
var text = scribble(selectIcon + "SELECT");
text.draw(room_width - 4 - text.get_width(),room_height - 16 + (2 * (buttonInputTimerComponent_ATimer != -1)));
#endregion