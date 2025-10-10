///@description KSW - UI - Customize - Pages - Stages - Draw

function scr_KSW_UI_Customize_Pages_Stages_Draw()
{
	#region Variables
	var xx = camera_get_view_x(mainView);
	var yy = camera_get_view_y(mainView);
	#endregion
	
	#region Music
	var visibleCount = 3;
	var startIndex = max(0,floor(pageOffset / selectionOffset) - 1);
	var endIndex = min(startIndex + visibleCount + 2,selectionCount);
	
	for (var i = startIndex; i < endIndex; i++)
	{
		var selectionX = (selectionOffset * i) - pageOffset;
		
		if (global.KSW_MusicList[ds_list_find_value(selectionList,i)].phaseIconRight != -1) draw_sprite(global.KSW_MusicList[ds_list_find_value(selectionList,i)].phaseIconRight,0,16,28 + selectionX);
		
		scribble(string(global.KSW_MusicList[ds_list_find_value(selectionList,i)].name)).draw(42,28 + selectionX);
		scribble_font_set_default("fnt_Advance_Small");
		scribble(string(global.KSW_MusicList[ds_list_find_value(selectionList,i)].author)).wrap(186).draw(42,38 + selectionX);
		scribble_font_set_default("fnt_Advance");
		
		#region Selection
		if (i == selection) draw_sprite_ext(spr_KSW_Menu_Fishbook_Selection,selectionIndex,24,36 + selectionX,selectionScale,selectionScale,0,c_white,1);
		#endregion
	}
	#endregion
	
	#region Page Title
	scribble("STAGES").align(fa_center).draw(xx + (global.gameWidth / 2),yy + 6 - hintOffset);
	#endregion
	
	#region Button Hints
	var exitIcon = "";
	var targetIcon = global.UI_IconBindings[? string(input_binding_get("B"))];
	if (targetIcon != undefined) exitIcon = "[" + sprite_get_name(targetIcon) + "]";
	
	scribble(exitIcon + "BACK").draw(4,global.gameHeight - 16 + hintOffset + (2 * (buttonInputTimerComponent_BTimer != -1)));
	
	var selectIcon = "";
	var targetIcon = global.UI_IconBindings[? string(input_binding_get("A"))];
	if (targetIcon != undefined) selectIcon = "[" + sprite_get_name(targetIcon) + "]";
	
	var text = scribble(selectIcon + "SELECT");
	text.draw(global.gameWidth - 4 - text.get_width(),global.gameHeight + hintOffset - 16 + (2 * (buttonInputTimerComponent_ATimer != -1)));
	#endregion
}