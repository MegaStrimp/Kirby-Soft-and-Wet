///@description KSW - UI - Customize - Pages - Spray Paints - Draw

function scr_KSW_UI_Customize_Pages_SprayPaints_Draw()
{
	#region Variables
	var xx = camera_get_view_x(mainView);
	var yy = camera_get_view_y(mainView);
	#endregion
	
	#region Page Title
	scribble("SPRAYS " + string(page + 1)).align(fa_center).draw(xx + (global.gameWidth / 2),yy + 6 - hintOffset);
	#endregion
	
	#region Completion
	var color = "[#FFFFFF]";
	
	if (isCompleted)
	{
		color = "[#FFD800]";
		draw_sprite(spr_KSW_Menu_Fishbook_Completion,0,global.gameWidth - 54,2 - hintOffset);
	}
	scribble(color + string(global.KSW_UnlockedSprayPaintCount[global.playerCharacter[playerNum]]) + "/" + string(global.KSW_SprayPaintCount[global.playerCharacter[playerNum]]) + "[/color]").align(fa_right).draw(global.gameWidth - 4,6 - hintOffset);
	#endregion
	
	for (var i = (page * pageSelectionCount); i < min((page + 1) * pageSelectionCount,ds_list_size(selectionList)); i++)
	{
		#region Variables
		var boxX = 6 + (40 * (i % pageColumns));
		var boxY = 34 + (40 * floor((i - page * pageSelectionCount) / pageColumns));
		var backgroundPalette = spr_KSW_UI_CaughtBox_Palette_Locked;
		if (ds_list_find_value(selectionList,i) != -1)
		{
			var spriteIndex = global.KSW_CharacterList[global.playerCharacter[playerNum]].sprayPaints[ds_list_find_value(selectionList,i)].sprite;
			if (global.KSW_CharacterList[global.playerCharacter[playerNum]].sprayPaints[ds_list_find_value(selectionList,i)].isUnlocked) backgroundPalette = global.KSW_CharacterList[global.playerCharacter[playerNum]].sprayPaints[ds_list_find_value(selectionList,i)].boxPalette;
		}
		else
		{
			var spriteIndex = spr_KSW_UI_Customize_Random;
			backgroundPalette = spr_KSW_UI_CaughtBox_Palette_Randomize;
		}
		#endregion
		
		#region Box
		var isSelected = false;
		if (global.KSW_PlayerEquippedSprayPaintShuffle[playerNum])
		{
			isSelected = (ds_list_find_value(selectionList,i) == -1);
		}
		else
		{
			isSelected = (ds_list_find_value(selectionList,i) == global.KSW_PlayerEquippedSprayPaintID[playerNum][global.playerCharacter[playerNum]]);
		}
		
		draw_sprite(spr_KSW_UI_CaughtBox_Box,isSelected,boxX,boxY);
		#endregion
		
		#region Mask
		scr_DrawMask_Begin();
		scr_DrawMask_Mask(spr_KSW_UI_CaughtBox_Mask,0,boxX,boxY);
		
		#region Texture
		if ((global.shaders) and (backgroundPalette != -1)) pal_swap_set(backgroundPalette,1,false);
		for (var ix = 0; ix < 3; ix++)
		{
			for (var iy = 0; iy < 3; iy++)
			{
				draw_sprite(spr_KSW_UI_Customize_Texture,0,boxX + backgroundX + ((ix - 2) * 50),boxY + backgroundY + ((iy - 2) * 40));
			}
		}
		if ((global.shaders) and (backgroundPalette != -1)) pal_swap_reset();
		#endregion
		
		#region Sprite
		if (spriteIndex != -1)
		{
			if ((ds_list_find_value(selectionList,i) != -1) and (!global.KSW_CharacterList[global.playerCharacter[playerNum]].sprayPaints[ds_list_find_value(selectionList,i)].isUnlocked)) gpu_set_fog(true,c_black,0,0);
			if ((global.shaders) and (global.KSW_CharacterList[global.playerCharacter[playerNum]].sprayPaints[ds_list_find_value(selectionList,i)].isUnlocked)) pal_swap_set(spriteIndex,1,false);
			//draw_sprite(spriteIndex,0,boxX + 14,boxY + 14);
			draw_sprite(global.KSW_CharacterList[global.playerCharacter[playerNum]].sprayCanSprite,0,boxX + 14,boxY + 14);
			if ((global.shaders) and (global.KSW_CharacterList[global.playerCharacter[playerNum]].sprayPaints[ds_list_find_value(selectionList,i)].isUnlocked)) pal_swap_reset();
			if ((ds_list_find_value(selectionList,i) != -1) and (!global.KSW_CharacterList[global.playerCharacter[playerNum]].sprayPaints[ds_list_find_value(selectionList,i)].isUnlocked)) gpu_set_fog(false,c_black,0,0);
		}
		#endregion
		
		scr_DrawMask_End();
		#endregion
		
		#region Unlock Method
		if ((ds_list_find_value(selectionList,i) != -1) and (!global.KSW_CharacterList[global.playerCharacter[playerNum]].sprayPaints[ds_list_find_value(selectionList,i)].isUnlocked))
		{
			if (global.KSW_CharacterList[global.playerCharacter[playerNum]].sprayPaints[ds_list_find_value(selectionList,i)].price == 0)
			{
				draw_sprite(spr_KSW_Menu_TitleScreen_Bubble_Stars_Small,0,boxX + 14,boxY + 15);
			}
			else
			{
				draw_sprite(spr_KSW_UI_Coin,0,boxX + 14,boxY + 11);
				scribble(string(global.KSW_CharacterList[global.playerCharacter[playerNum]].sprayPaints[ds_list_find_value(selectionList,i)].price)).align(fa_center).draw(boxX + 14,boxY + 17);
			}
		}
		#endregion
		
		#region Selection
		if (i == selection) draw_sprite_ext(spr_KSW_Menu_Fishbook_Selection,selectionIndex,boxX + 14,boxY + 14,selectionScale,selectionScale,0,c_white,1);
		#endregion
	}
	
	#region Spray Paint Name
	if (ds_list_find_value(selectionList,selection) == -1)
	{
		var targetName = "RANDOMIZE";
	}
	else
	{
		var targetName = "???";
		if (global.KSW_CharacterList[global.playerCharacter[playerNum]].sprayPaints[ds_list_find_value(selectionList,selection)].isUnlocked) targetName = global.KSW_CharacterList[global.playerCharacter[playerNum]].sprayPaints[ds_list_find_value(selectionList,selection)].name;
	}
	
	scribble(targetName).align(fa_center).draw(global.gameWidth / 2,global.gameHeight - 14 + hintOffset);
	#endregion
	
	#region Button Hints
	if (pageMax >= 1)
	{
		var targetIcon = global.UI_IconBindings[? string(input_binding_get("L"))];
		if (targetIcon == undefined) targetIcon = spr_UI_Button_Keyboard_Left;
		draw_sprite(targetIcon,0,72,3 - hintOffset + (2 * (buttonInputTimerComponent_LTimer != -1)));
		
		var targetIcon = global.UI_IconBindings[? string(input_binding_get("R"))];
		if (targetIcon == undefined) targetIcon = spr_UI_Button_Keyboard_Right;
		draw_sprite(targetIcon,0,157,3 - hintOffset + (2 * (buttonInputTimerComponent_RTimer != -1)));
	}
	
	var exitIcon = "";
	var targetIcon = global.UI_IconBindings[? string(input_binding_get("B"))];
	if (targetIcon != undefined) exitIcon = "[" + sprite_get_name(targetIcon) + "]";
	
	scribble(exitIcon + "BACK").draw(4,global.gameHeight - 16 + hintOffset + (2 * (buttonInputTimerComponent_BTimer != -1)));
	
	var selectIcon = "";
	var targetIcon = global.UI_IconBindings[? string(input_binding_get("A"))];
	if (targetIcon != undefined) selectIcon = "[" + sprite_get_name(targetIcon) + "]";
	
	var text = scribble(selectIcon + "SELECT");
	text.draw(room_width - 4 - text.get_width(),global.gameHeight + hintOffset - 16 + (2 * (buttonInputTimerComponent_ATimer != -1)));
	#endregion
}