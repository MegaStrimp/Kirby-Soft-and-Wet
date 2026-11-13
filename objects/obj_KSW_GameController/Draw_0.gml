///@description Draw

#region Set Font
scribble_font_set_default("fnt_Advance");
#endregion

if (state == KSW_GameStates.idle) 
{
	#region Score
	var formattedScore = string_replace_all(string_format(min(displayedScore,999999999999),6,0)," ","0");
	
	scribble(string(formattedScore) + "G").align(fa_right).draw(236,4 - hintOffset - (2 * (displayedScore_YOffsetTimer != -1)));
	#endregion
	
	#region Coins
	var formattedCoins = string_replace_all(string_format(min(displayedCoins,999999999999),3,0)," ","0");
	
	scribble(string(formattedCoins) + "[spr_KSW_UI_Coin]").align(fa_right).draw(236,13 - hintOffset - (2 * (displayedCoins_YOffsetTimer != -1)));
	#endregion
	
	if (global.KSW_CurrentEvent == -1)
	{
		#region Catch Combo
		if ((global.KSW_CurrentFishCombo > 1) and (!canOffset)) scribble("[#FF7F94] CATCH COMBO " + string(global.KSW_CurrentFishCombo) + "[/color]").align(fa_right).draw(236,120 - (2 * (catchCombo_YOffsetTimer != -1)));
		#endregion
	}
	else
	{
		#region Event Title
		var eventTitle = global.KSW_EventList[global.KSW_CurrentEvent].name;
		var eventColor = global.KSW_EventList[global.KSW_CurrentEvent].color;
		
		if (!canOffset) scribble("[" + string(eventColor) + "][wave] " + string(eventTitle) + "[/color][/wave]").gradient(c_white,1).align(fa_right).draw(236,120 - (2 * (catchCombo_YOffsetTimer != -1)));
		#endregion
	}
}

#region Catch Inputs
if ((state == KSW_GameStates.waiting) or (state == KSW_GameStates.waiting_End) or (state == KSW_GameStates.catching))
{
	//var colorPulse = sine_between(global.currentTimePausable / 10,10,0,150);
	//var color = make_color_rgb(255,colorPulse,colorPulse);
	
	if (catchInput_UpTriggered)
	{
		if (global.shaders) pal_swap_set(global.KSW_BubblePalette,1,false);
		draw_sprite(spr_KSW_UI_CatchInput_Active_Back,0,catchInput_UpBubble_X,catchInput_UpBubble_Y);
		//draw_sprite_ext(spr_KSW_UI_CatchInput_Active,1,catchInput_UpBubble_X,catchInput_UpBubble_Y,1,1,0,color,1);
		if (global.shaders) pal_swap_reset();
		
		var targetIcon = global.UI_IconBindings[? string(input_binding_get("up"))];
		if (targetIcon != undefined) draw_sprite(targetIcon,0,catchInput_UpBubble_X - 5,catchInput_UpBubble_Y - 5 + (2 * (buttonInputTimerComponent_UpTimer != -1)));
		
		if (global.shaders) pal_swap_set(global.KSW_BubblePalette,1,false);
		draw_sprite(spr_KSW_UI_CatchInput_Active,bubbleIndex,catchInput_UpBubble_X,catchInput_UpBubble_Y);
		if (global.shaders) pal_swap_reset();
	}
	else
	{
		if (global.shaders) pal_swap_set(global.KSW_BubblePalette,1,false);
		draw_sprite(spr_KSW_UI_CatchInput,0,catchInput_UpBubble_X,catchInput_UpBubble_Y + (2 * (buttonInputTimerComponent_UpTimer != -1)));
		if (global.shaders) pal_swap_reset();
	}
	
	if (catchInput_DownTriggered)
	{
		if (global.shaders) pal_swap_set(global.KSW_BubblePalette,1,false);
		draw_sprite(spr_KSW_UI_CatchInput_Active_Back,0,catchInput_DownBubble_X,catchInput_DownBubble_Y);
		//draw_sprite_ext(spr_KSW_UI_CatchInput_Active,1,catchInput_DownBubble_X,catchInput_DownBubble_Y,1,1,0,color,1);
		if (global.shaders) pal_swap_reset();
		
		var targetIcon = global.UI_IconBindings[? string(input_binding_get("down"))];
		if (targetIcon != undefined) draw_sprite(targetIcon,0,catchInput_DownBubble_X - 5,catchInput_DownBubble_Y - 5 + (2 * (buttonInputTimerComponent_DownTimer != -1)));
		
		if (global.shaders) pal_swap_set(global.KSW_BubblePalette,1,false);
		draw_sprite(spr_KSW_UI_CatchInput_Active,bubbleIndex,catchInput_DownBubble_X,catchInput_DownBubble_Y);
		if (global.shaders) pal_swap_reset();
	}
	else
	{
		if (global.shaders) pal_swap_set(global.KSW_BubblePalette,1,false);
		draw_sprite(spr_KSW_UI_CatchInput,0,catchInput_DownBubble_X,catchInput_DownBubble_Y + (2 * (buttonInputTimerComponent_DownTimer != -1)));
		if (global.shaders) pal_swap_reset();
	}
	
	if (catchInput_LeftTriggered)
	{
		if (global.shaders) pal_swap_set(global.KSW_BubblePalette,1,false);
		draw_sprite(spr_KSW_UI_CatchInput_Active_Back,0,catchInput_LeftBubble_X,catchInput_LeftBubble_Y);
		//draw_sprite_ext(spr_KSW_UI_CatchInput_Active,1,catchInput_LeftBubble_X,catchInput_LeftBubble_Y,1,1,0,color,1);
		if (global.shaders) pal_swap_reset();
		
		var targetIcon = global.UI_IconBindings[? string(input_binding_get("left"))];
		if (targetIcon != undefined) draw_sprite(targetIcon,0,catchInput_LeftBubble_X - 5,catchInput_LeftBubble_Y - 5 + (2 * (buttonInputTimerComponent_LeftTimer != -1)));
		
		if (global.shaders) pal_swap_set(global.KSW_BubblePalette,1,false);
		draw_sprite(spr_KSW_UI_CatchInput_Active,bubbleIndex,catchInput_LeftBubble_X,catchInput_LeftBubble_Y);
		if (global.shaders) pal_swap_reset();
	}
	else
	{
		if (global.shaders) pal_swap_set(global.KSW_BubblePalette,1,false);
		draw_sprite(spr_KSW_UI_CatchInput,0,catchInput_LeftBubble_X,catchInput_LeftBubble_Y + (2 * (buttonInputTimerComponent_LeftTimer != -1)));
		if (global.shaders) pal_swap_reset();
	}
	
	if (catchInput_RightTriggered)
	{
		if (global.shaders) pal_swap_set(global.KSW_BubblePalette,1,false);
		draw_sprite(spr_KSW_UI_CatchInput_Active_Back,0,catchInput_RightBubble_X,catchInput_RightBubble_Y);
		//draw_sprite_ext(spr_KSW_UI_CatchInput_Active,1,catchInput_RightBubble_X,catchInput_RightBubble_Y,1,1,0,color,1);
		if (global.shaders) pal_swap_reset();
		
		var targetIcon = global.UI_IconBindings[? string(input_binding_get("right"))];
		if (targetIcon != undefined) draw_sprite(targetIcon,0,catchInput_RightBubble_X - 5,catchInput_RightBubble_Y - 5 + (2 * (buttonInputTimerComponent_RightTimer != -1)));
		
		if (global.shaders) pal_swap_set(global.KSW_BubblePalette,1,false);
		draw_sprite(spr_KSW_UI_CatchInput_Active,bubbleIndex,catchInput_RightBubble_X,catchInput_RightBubble_Y);
		if (global.shaders) pal_swap_reset();
	}
	else
	{
		if (global.shaders) pal_swap_set(global.KSW_BubblePalette,1,false);
		draw_sprite(spr_KSW_UI_CatchInput,0,catchInput_RightBubble_X,catchInput_RightBubble_Y + (2 * (buttonInputTimerComponent_RightTimer != -1)));
		if (global.shaders) pal_swap_reset();
	}
}
#endregion

#region Fail Timer
if (failTimer != -1)
{
	draw_sprite(spr_KSW_UI_FailTimerBar_Back,0,75,32);
	draw_sprite(spr_KSW_UI_FailTimerBar_Border,0,72,28);
	
	scr_DrawMask_Begin();
	
	draw_set_alpha(1);
	draw_sprite_part(spr_KSW_UI_FailTimerBar_Mask,0,0,0,74 * (failTimer / failTimerTarget),12,75,32);
	gpu_set_blendenable(true);
	gpu_set_colorwriteenable(true,true,true,true);
			
	gpu_set_blendmode_ext(bm_dest_alpha,bm_inv_dest_alpha);
	gpu_set_alphatestenable(true);
	
	draw_sprite(failBarBackDefault,0,75,28);
	for (var i = 0; i < 6; i++)
	{
		draw_sprite(failBarTexture,0,75 + failTimerBarTextureX + ((i - 1) * failTimerBarTextureWidth),28);
		draw_sprite(spr_KSW_UI_FailTimerBar_Shine,0,72,28);
	}
	
	scr_DrawMask_End();
}
#endregion

#region Button Hints
if (canGoToMenu)
{
	var exitIcon = "";
	var targetIcon = global.UI_IconBindings[? string(input_binding_get("B"))];
	if (targetIcon != undefined) exitIcon = "[" + sprite_get_name(targetIcon) + "]";
	
	scribble(exitIcon + "MENU").draw(4,room_height - 16 + hintOffset + (2 * (buttonInputTimerComponent_BTimer != -1)));
}

if (canGoToFishbook)
{
	var fishbookIcon = "";
	var targetIcon = global.UI_IconBindings[? string(input_binding_get("Y"))];
	if (targetIcon != undefined) fishbookIcon = "[" + sprite_get_name(targetIcon) + "]";
	
	var text = scribble(fishbookIcon + "FISHBOOK");
	text.draw(room_width - 4 - text.get_width(),room_height - 16 + hintOffset + (2 * (buttonInputTimerComponent_YTimer != -1)));
}

if (canOpenCustomize)
{
	var customizeIcon = "";
	var targetIcon = global.UI_IconBindings[? string(input_binding_get("X"))];
	if (targetIcon != undefined) customizeIcon = "[" + sprite_get_name(targetIcon) + "]";
	
	scribble(customizeIcon + "CUSTOMIZE").align(fa_center).draw(room_width / 2,room_height - 16 + hintOffset + (2 * (buttonInputTimerComponent_XTimer != -1)));
}

if ((state == KSW_GameStates.idle) and (!canOffset))
{
	var selectIcon = "";
	var targetIcon = global.UI_IconBindings[? string(input_binding_get("A"))];
	if (targetIcon != undefined) selectIcon = "[" + sprite_get_name(targetIcon) + "]";
	scribble(selectIcon + "THROW").align(fa_center).draw(86,48 + global.KSW_CharacterList[global.playerCharacter[playerNum]].promptYOffset + (2 * (buttonInputTimerComponent_ATimer != -1)));
}

if ((state == KSW_GameStates.waiting) or (state == KSW_GameStates.catching))
{
	var exitIcon = "";
	var targetIcon = global.UI_IconBindings[? string(input_binding_get("B"))];
	if (targetIcon != undefined) exitIcon = "[" + sprite_get_name(targetIcon) + "]";
	
	scribble(exitIcon + "GIVE UP").draw(4,room_height - 16 + hintOffset + (2 * (buttonInputTimerComponent_BTimer != -1)));
}
#endregion

#region Black Border
draw_set_color(c_black);
draw_rectangle(-20,0,-1,160,false);
draw_set_color(c_white);
#endregion