///@description KSW - UI - Customize - Pages - Music - Draw

function scr_KSW_UI_Customize_Pages_Music_Draw()
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
		var selectionY = (selectionOffset * i) - pageOffset;
		
		if (i != (selectionCount - 1)) draw_sprite(spr_KSW_UI_Customize_Decal1,0,16,55 + selectionY);
		
		if (global.KSW_MusicList[ds_list_find_value(selectionList,i)].phaseIcon != -1) draw_sprite(global.KSW_MusicList[ds_list_find_value(selectionList,i)].phaseIcon,0,16,28 + selectionY);
		
		scribble(string(global.KSW_MusicList[ds_list_find_value(selectionList,i)].name)).draw(42,28 + selectionY);
		scribble_font_set_default("fnt_Advance_Small");
		scribble(string(global.KSW_MusicList[ds_list_find_value(selectionList,i)].author)).wrap(186).draw(42,38 + selectionY);
		scribble_font_set_default("fnt_Advance");
		
		#region Selection
		if (i == selection) draw_sprite_ext(spr_KSW_Menu_Fishbook_Selection,selectionIndex,24,36 + selectionY,selectionScale,selectionScale,0,c_white,1);
		#endregion
	}
	#endregion
	
	#region Page Title
	scribble("MUSIC").align(fa_center).draw(xx + (global.gameWidth / 2),yy + 6 - hintOffset);
	#endregion
	
	#region Button Hints
	var targetIcon = global.UI_IconBindings[? string(input_binding_get("up"))];
	if (targetIcon != undefined) draw_sprite(targetIcon,0,3,21 + (selectionOffset * selection) - pageOffset);
	
	var targetIcon = global.UI_IconBindings[? string(input_binding_get("down"))];
	if (targetIcon != undefined) draw_sprite(targetIcon,0,3,41 + (selectionOffset * selection) - pageOffset);
	
	var exitIcon = "";
	var targetIcon = global.UI_IconBindings[? string(input_binding_get("B"))];
	if (targetIcon != undefined) exitIcon = "[" + sprite_get_name(targetIcon) + "]";
	
	scribble(exitIcon + "BACK").draw(4,global.gameHeight - 16 + hintOffset + (2 * (buttonInputTimerComponent_BTimer != -1)));
	
	var selectIcon = "";
	var targetIcon = global.UI_IconBindings[? string(input_binding_get("A"))];
	if (targetIcon != undefined) selectIcon = "[" + sprite_get_name(targetIcon) + "]";
	
	var text = scribble(selectIcon + "PLAY");
	text.draw(global.gameWidth - 4 - text.get_width(),global.gameHeight + hintOffset - 16 + (2 * (buttonInputTimerComponent_ATimer != -1)));
	#endregion
}