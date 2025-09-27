///@description Draw

#region Set Font
scribble_font_set_default("fnt_Advance");
#endregion

#region Page Title
scribble("PAGE " + string(page + 1)).align(fa_center).draw(room_width / 2,6);
#endregion

#region Completion
var color = "[#FFFFFF]";

if (isCompleted)
{
	color = "[#FFD800]";
	draw_sprite(spr_KSW_Menu_Fishbook_Completion,0,room_width - 54,2);
}
scribble(color + string(global.KSW_ObtainedAchievementCount) + "/" + string(global.KSW_VisibleAchievementCount) + "[/color]").align(fa_right).draw(room_width - 4,6);
#endregion

#region Stars
for (var i = page * 8; i < min((page + 1) * 8,buttonsList_Max); i++)
{
	#region Variables
	var waveX = sine_wave(current_time / waveNum[i % 8], 1, 3, 0);
	var waveY = sine_wave(current_time / (waveNum[i % 8] + 300), .7, 4, 0);
	var starX = 25 + (120 * (i % 2)) + waveX;
	var starY = 32 + (32 * floor((i - page * 8) / 2)) + waveY;
	var title = string_upper(global.KSW_AchievementList[starList[i]].name);
	var description = string_upper(global.KSW_AchievementList[starList[i]].description);
	var spriteIndex = global.KSW_AchievementList[starList[i]].icon;
	var isHidden = global.KSW_AchievementList[starList[i]].isHidden;
	var isObtained = global.KSW_AchievementList[starList[i]].isObtained;
	#endregion
	
	#region Sprite
	var targetSprite = spr_KSW_Achievement_Icon_Locked;
	if (isObtained) targetSprite = spriteIndex;
	draw_sprite(targetSprite,0,starX,starY);
	#endregion
	
	if (i == selection)
	{
		#region Title
		var titleText = scribble(title).wrap(82);
		titleText.draw(starX + 18,starY - 10);
		#endregion
		
		#region Description
		scribble_font_set_default("fnt_Advance_Small");
		scribble(description).wrap(82).draw(starX + 18,starY - 10 + titleText.get_height());
		scribble_font_set_default("fnt_Advance");
		#endregion
		
		#region Selection
		draw_sprite_ext(spr_KSW_Menu_Stars_Selection,selectionIndex,starX,starY,selectionScale,selectionScale,0,c_white,1);
		#endregion
	}
}
#endregion

#region Button Hints
var targetIcon = global.UI_IconBindings[? string(input_binding_get("L"))];
if (targetIcon != undefined) draw_sprite(targetIcon,0,72,3 + (2 * (buttonInputTimerComponent_LTimer != -1)));

var targetIcon = global.UI_IconBindings[? string(input_binding_get("R"))];
if (targetIcon != undefined) draw_sprite(targetIcon,0,157,3 + (2 * (buttonInputTimerComponent_RTimer != -1)));

var exitIcon = "";
var targetIcon = global.UI_IconBindings[? string(input_binding_get("B"))];
if (targetIcon != undefined) exitIcon = "[" + sprite_get_name(targetIcon) + "]";

scribble(exitIcon + "EXIT").draw(4,room_height - 16 + (2 * (buttonInputTimerComponent_BTimer != -1)));
#endregion