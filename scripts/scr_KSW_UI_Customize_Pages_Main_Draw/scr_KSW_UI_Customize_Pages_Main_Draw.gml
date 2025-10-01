///@description KSW - UI - Customize - Pages - Main - Draw

function scr_KSW_UI_Customize_Pages_Main_Draw()
{
	#region Variables
	var xx = camera_get_view_x(mainView);
	var yy = camera_get_view_y(mainView);
	#endregion
	
	#region Page Title
	scribble("CUSTOMIZE").align(fa_center).draw(xx + (global.gameWidth / 2),yy + 6 - hintOffset);
	#endregion
	
	#region Button Hints
	var targetIcon = global.UI_IconBindings[? string(input_binding_get("left"))];
	if (targetIcon != undefined) draw_sprite(targetIcon,0,2,(room_height / 2) - 6 + (2 * (buttonInputTimerComponent_LeftTimer != -1)));
	
	var targetIcon = global.UI_IconBindings[? string(input_binding_get("right"))];
	if (targetIcon != undefined) draw_sprite(targetIcon,0,238 - sprite_get_width(targetIcon),(room_height / 2) - 6 + (2 * (buttonInputTimerComponent_RightTimer != -1)));
	
	var exitIcon = "";
	var targetIcon = global.UI_IconBindings[? string(input_binding_get("B"))];
	if (targetIcon != undefined) exitIcon = "[" + sprite_get_name(targetIcon) + "]";
	
	scribble(exitIcon + "BACK").draw(4,room_height - 16 + hintOffset + (2 * (buttonInputTimerComponent_BTimer != -1)));
	
	var selectIcon = "";
	var targetIcon = global.UI_IconBindings[? string(input_binding_get("A"))];
	if (targetIcon != undefined) selectIcon = "[" + sprite_get_name(targetIcon) + "]";
	
	var text = scribble(selectIcon + "SELECT");
	text.draw(room_width - 4 - text.get_width(),room_height + hintOffset - 16 + (2 * (buttonInputTimerComponent_ATimer != -1)));
	#endregion
}