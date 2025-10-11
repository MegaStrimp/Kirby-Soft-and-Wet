///@description KSW - UI - Customize - Pages - Stages - Draw

function scr_KSW_UI_Customize_Pages_Stages_Draw()
{
	#region Variables
	var xx = camera_get_view_x(mainView);
	var yy = camera_get_view_y(mainView);
	#endregion
	
	#region Stages
	var visibleCount = 3;
	var startIndex = max(0,floor(pageOffset / selectionOffset) - 1);
	var endIndex = min(startIndex + visibleCount + 2,selectionCount);
	
	for (var i = startIndex; i < endIndex; i++)
	{
		#region Box
		var selectionX = (selectionOffset * i) - pageOffset;
		
		var boxX = 10 + selectionX;
		var boxY = 48;
		
		var isSelected = (ds_list_find_value(selectionList,i) == global.KSW_EquippedStageID);
		
		draw_sprite(spr_KSW_UI_CaughtBox_Box_Big,isSelected,boxX,boxY);
		#endregion
		
		#region Sprite
		if (global.KSW_StageList[ds_list_find_value(selectionList,i)].icon != -1)
		{
			if ((ds_list_find_value(selectionList,i) != -1) and (!global.KSW_StageList[ds_list_find_value(selectionList,i)].isUnlocked)) gpu_set_fog(true,c_black,0,0);
			draw_sprite(global.KSW_StageList[ds_list_find_value(selectionList,i)].icon,0,boxX + 2,boxY + 2);
			if ((ds_list_find_value(selectionList,i) != -1) and (!global.KSW_StageList[ds_list_find_value(selectionList,i)].isUnlocked)) gpu_set_fog(false,c_black,0,0);
		}
		#endregion
		
		#region Unlock Method
		if (!global.KSW_StageList[ds_list_find_value(selectionList,i)].isUnlocked)
		{
			if (global.KSW_StageList[ds_list_find_value(selectionList,i)].price == 0)
			{
				draw_sprite(spr_KSW_Menu_TitleScreen_Bubble_Stars_Small,0,boxX + 34,boxY + 38);
			}
			else
			{
				draw_sprite(spr_KSW_UI_Coin,0,boxX + 34,boxY + 34);
				scribble(string(global.KSW_StageList[ds_list_find_value(selectionList,i)].price)).align(fa_center).draw(boxX +  34,boxY + 38);
			}
		}
		#endregion
		
		#region Selection
		if (i == selection) draw_sprite_ext(spr_KSW_Menu_Fishbook_Selection,selectionIndex,boxX + 34,boxY + 34,selectionScale + 1,selectionScale + 1,0,c_white,1);
		#endregion
	}
	#endregion
	
	#region Page Title
	scribble("STAGES").align(fa_center).draw(xx + (global.gameWidth / 2),yy + 6 - hintOffset);
	#endregion
	
	#region Completion
	var color = "[#FFFFFF]";
	
	if (isCompleted)
	{
		color = "[#FFD800]";
		draw_sprite(spr_KSW_Menu_Fishbook_Completion,0,global.gameWidth - 40,2 - hintOffset);
	}
	scribble(color + string(global.KSW_UnlockedStageCount) + "/" + string(global.KSW_StageCount) + "[/color]").align(fa_right).draw(global.gameWidth - 4,6 - hintOffset);
	#endregion
	
	#region Stage Name
	var targetName = "???";
	if (global.KSW_StageList[ds_list_find_value(selectionList,selection)].isUnlocked) targetName = global.KSW_StageList[ds_list_find_value(selectionList,selection)].name;
	
	scribble(targetName).align(fa_center).draw(global.gameWidth / 2,global.gameHeight - 14 + hintOffset);
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