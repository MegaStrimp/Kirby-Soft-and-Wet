///@description Draw

#region Set Font
scribble_font_set_default("fnt_Advance");
#endregion

#region Page Title
scribble("PAGE " + string(page + 1)).align(fa_center).draw(room_width / 2,6 - hintOffset);
#endregion

#region Completion
var color = "[#FFFFFF]";

if (isCompleted)
{
	color = "[#FFD800]";
	draw_sprite(spr_KSW_Menu_Fishbook_Completion,0,room_width - 68,2 - hintOffset);
}
scribble(color + string(global.KSW_CaughtUniqueFishCount) + "/" + string(global.KSW_FishCount) + "[/color]").align(fa_right).draw(room_width - 4,6 - hintOffset);

scribble("TOTAL " + string(global.KSW_CaughtTotalFishCount)).align(fa_right).draw(room_width - 4,18 - hintOffset);
if (global.KSW_CaughtShinyFishCount != 0) scribble("SHINIES " + string(global.KSW_CaughtShinyFishCount)).draw(4,18 - hintOffset);
#endregion

#region Fish Name
var targetName = "???";
if (global.KSW_FishList[selection].isCaught != 0) targetName = string_upper(global.KSW_FishList[selection].name);
var fishName = scribble(targetName).align(fa_right);
fishName.draw(room_width - 4,room_height - 14 + hintOffset);
#endregion

#region Fishes
for (var i = page * 18; i < min((page + 1) * 18,global.KSW_FishCount); i++)
{
	#region Variables
	var boxX = 6 + (40 * (i % 6));
	var boxY = 34 + (40 * floor((i - page * 18) / 6));
	var spriteIndex = global.KSW_FishList[i].sprite;
	var spritePalette = global.KSW_FishList[i].palette;
	var spriteXOffset = global.KSW_FishList[i].xOffset;
	var spriteYOffset = global.KSW_FishList[i].yOffset;
	var rarity = global.KSW_FishList[i].rarity;
	var isCaughtShiny = global.KSW_FishList[i].isCaughtShiny;
	var backgroundPalette = spr_KSW_UI_CaughtBox_Palette_Locked;
	if (global.KSW_FishList[i].isCaught != 0) backgroundPalette = global.KSW_FishList[i].caughtBoxPalette;
	#endregion
	
	#region Box
	draw_sprite(spr_KSW_UI_CaughtBox_Box,isCaughtShiny,boxX,boxY);
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
			draw_sprite(spr_KSW_UI_CaughtBox_Texture,0,boxX + backgroundX + ((ix - 2) * 50),boxY + backgroundY + ((iy - 2) * 40));
		}
	}
	if ((global.shaders) and (backgroundPalette != -1)) pal_swap_reset();
	#endregion
	
	#region Shine
	if (fishIsShiny[i]) draw_sprite(spr_KSW_UI_CaughtBox_Shine,shineIndex,boxX,boxY);
	#endregion
	
	#region Sprite
	if (spriteIndex != -1)
	{
		var targetPaletteIndex = 4;
		if (global.KSW_FishList[i].isCaught != 0) targetPaletteIndex = fishIsShiny[i];
		
		if ((global.shaders) and (spritePalette != -1)) pal_swap_set(spritePalette,targetPaletteIndex,false);
		draw_sprite(spriteIndex,fishImageIndex[i],boxX + 14 + spriteXOffset + calibX,boxY + 14 + spriteYOffset + calibY);
		if ((global.shaders) and (spritePalette != -1)) pal_swap_reset();
	}
	#endregion
	
	scr_DrawMask_End();
	#endregion
	
	#region Selection
	if (i == selection) draw_sprite_ext(spr_KSW_Menu_Fishbook_Selection,selectionIndex,boxX + 14,boxY + 14,selectionScale,selectionScale,0,c_white,1);
	#endregion
	
	#region Rarity
	if (global.KSW_FishList[i].isCaught != 0)
	{
		for (var h = 0; h < rarity; h++)
		{
			draw_sprite(spr_KSW_UI_CaughtBox_Star,0,boxX - 2 + (12 * h),boxY + 22);
		}
	}
	#endregion
	
	#region Phase
	var phaseSprite = -1;
	if ((global.KSW_FishList[i].isTenna) and (global.KSW_FishList[i].isCaught != 0))
	{
		phaseSprite = spr_KSW_Menu_TitleScreen_Phase_TVTime;
	}
	else
	{
		switch (global.KSW_FishList[i].phase)
		{
			case KSW_Phases.day:
			phaseSprite = spr_KSW_Menu_TitleScreen_Phase_Day;
			break;
			
			case KSW_Phases.afternoon:
			phaseSprite = spr_KSW_Menu_TitleScreen_Phase_Afternoon;
			break;
			
			case KSW_Phases.night:
			phaseSprite = spr_KSW_Menu_TitleScreen_Phase_Night;
			break;
		}
	}
	
	if (phaseSprite != -1) draw_sprite(phaseSprite,0,boxX + 17,boxY - 6);
	#endregion
	
	#region Calib Mode
	if (calibMode)
	{
		draw_set_color(current_time / 4);
		draw_text(boxX,boxY,"X" + string(calibX));
		draw_text(boxX,boxY + 28,"Y" + string(calibY));
		draw_set_color(c_white);
	}
	#endregion
}
#endregion

if (!isZoomed)
{
	#region Button Hints
	var targetIcon = global.UI_IconBindings[? string(input_binding_get("L"))];
	if (targetIcon != undefined) draw_sprite(targetIcon,0,72,3 - hintOffset + (2 * (buttonInputTimerComponent_LTimer != -1)));
	
	var targetIcon = global.UI_IconBindings[? string(input_binding_get("R"))];
	if (targetIcon != undefined) draw_sprite(targetIcon,0,157,3 - hintOffset + (2 * (buttonInputTimerComponent_RTimer != -1)));
	
	var exitIcon = "";
	var targetIcon = global.UI_IconBindings[? string(input_binding_get("B"))];
	if (targetIcon != undefined) exitIcon = "[" + sprite_get_name(targetIcon) + "]";
	
	var shinyIcon = "";
	var targetIcon = global.UI_IconBindings[? string(input_binding_get("Y"))];
	if (targetIcon != undefined) shinyIcon = "[" + sprite_get_name(targetIcon) + "]";
	
	scribble(exitIcon + "EXIT").draw(4,room_height - 16 + (2 * (buttonInputTimerComponent_BTimer != -1)));
	
	if ((global.KSW_FishList[selection].isCaught != 0) and (global.KSW_FishList[selection].isCaughtShiny != 0))
	{
		var shinyText = scribble(shinyIcon + "SHINY").align(fa_center);
		var shinyTextX = clamp(room_width - fishName.get_width() - (shinyText.get_width() / 2) - 12,(room_width / 2) - 48,(room_width / 2));
		
		shinyText.draw(shinyTextX,room_height - 16 + (2 * (buttonInputTimerComponent_YTimer != -1)));
	}
	#endregion
}
else
{
	#region Zoomed View
	#region Variables
	var spriteIndex = global.KSW_FishList[selection].sprite;
	var spritePalette = global.KSW_FishList[selection].palette;
	var spriteXOffset = global.KSW_FishList[selection].xOffset;
	var spriteYOffset = global.KSW_FishList[selection].yOffset;
	var rarity = global.KSW_FishList[selection].rarity;
	var isCaughtShiny = (global.KSW_FishList[selection].isCaughtShiny != 0);
	var backgroundPalette = spr_KSW_UI_CaughtBox_Palette_Locked;
	if (global.KSW_FishList[selection].isCaught != 0) backgroundPalette = global.KSW_FishList[selection].caughtBoxPalette;
	#endregion
	
	#region Overlay
	draw_set_alpha(zoomAlpha / 1.25);
	draw_set_color(c_black);
	draw_rectangle(0,0,room_width,room_height,false);
	draw_set_alpha(zoomAlpha);
	draw_set_color(c_white);
	#endregion
	
	#region Shine
	if (fishIsShiny[selection])
	{
		gpu_set_blendmode(bm_add);
		draw_sprite(spr_KSW_UI_CatchPopup_ShineEffect,0,room_width / 2,room_height / 2);
		gpu_set_blendmode(bm_normal);
	}
	#endregion
	
	#region Sprite
	var targetPaletteIndex = fishIsShiny[selection];
	var spriteWave = sine_wave(current_time / 2000,.5,3,0);
	
	var surfaceWidth = sprite_get_width(spriteIndex) + 2;
	var surfaceHeight = sprite_get_height(spriteIndex) + 2;
	
	if (((!surface_exists(drawSurface)) or ((surface_get_width(drawSurface) != surfaceWidth) or (surface_get_height(drawSurface) != surfaceHeight))))
	{
		if (surface_exists(drawSurface)) surface_free(drawSurface);
		drawSurface = surface_create(surfaceWidth,surfaceHeight);
	}
	
	surface_set_target(drawSurface);
	draw_clear_alpha(c_black,0);
	
	if ((global.shaders) and (spritePalette != -1)) pal_swap_set(spritePalette,targetPaletteIndex,false);
	draw_sprite(spriteIndex,selectionImageIndex,1 + sprite_get_xoffset(spriteIndex),1 + sprite_get_yoffset(spriteIndex));
	if ((global.shaders) and (spritePalette != -1)) pal_swap_reset();
	
	surface_reset_target();
	
	if (global.shaders)
	{
		var texelW = 1.0 / surfaceWidth;
	    var texelH = 1.0 / surfaceHeight;
		
	    shader_set(shd_ColoredOutline);
	    shader_set_uniform_f(drawSurface_PixelW,texelW);
	    shader_set_uniform_f(drawSurface_PixelH,texelH);
		shader_set_uniform_f(drawSurface_OutlineColor,255,255,255);
	}
	
	draw_surface(drawSurface,(room_width / 2) + spriteXOffset + calibX - sprite_get_xoffset(spriteIndex) - 1,(room_height / 2) + spriteYOffset + spriteWave + calibY - sprite_get_yoffset(spriteIndex) - 1);
	
	if (global.shaders) shader_reset();
	
	draw_set_alpha(1);
	#endregion
	
	#region Decals
	scr_DrawMask_Begin();
	
	draw_set_alpha(1);
	draw_sprite(spr_KSW_UI_CatchPopup_Decal1,0,0,0);
	draw_sprite(spr_KSW_UI_CatchPopup_Decal2,0,room_width,room_height);
	gpu_set_blendenable(true);
	gpu_set_colorwriteenable(true,true,true,true);
	
	gpu_set_blendmode_ext(bm_dest_alpha,bm_inv_dest_alpha);
	gpu_set_alphatestenable(true);
	draw_set_alpha(zoomAlpha);
	
	if ((global.shaders) and (backgroundPalette != -1)) pal_swap_set(backgroundPalette,1,false);
	for (var ix = 0; ix < 4; ix++)
	{
		for (var iy = 0; iy < 4; iy++)
		{
			draw_sprite(spr_KSW_UI_CaughtBox_Texture,0,0 + backgroundX + ((ix - 2) * 50),0 + backgroundY + ((iy - 2) * 40));
			draw_sprite(spr_KSW_UI_CaughtBox_Texture,0,166 + backgroundX + ((ix - 2) * 50),86 + backgroundY + ((iy - 2) * 40));
		}
	}
	if ((global.shaders) and (backgroundPalette != -1)) pal_swap_reset();
	
	scr_DrawMask_End();
	#endregion
	
	#region Fish Name
	if (global.KSW_FishList[selection].isTenna)
	{
		draw_sprite(spr_KSW_UI_CatchPopup_TennaName,0,room_width / 2,0);
	}
	else
	{
		scribble(targetName).align(fa_center).blend(c_white,zoomAlpha).draw(room_width / 2,6);
	}
	#endregion
	
	#region Rarity
	if (global.KSW_FishList[selection].isCaught != 0)
	{
		for (var h = 0; h < selectionStarCount; h++)
		{
			var starOffset = 0;
			if ((h == selectionStarCount - 1) and (selectionStarTimer >= selectionStarTimerMax - 1)) starOffset = 1;
			
			draw_sprite(spr_KSW_UI_CaughtBox_Star,0,104 + (12 * h),15 - starOffset);
		}
	}
	#endregion
	
	#region Phase
	var phaseSprite = -1;
	if (global.KSW_FishList[selection].isTenna)
	{
		phaseSprite = spr_KSW_Menu_TitleScreen_Phase_TVTime;
	}
	else
	{
		switch (global.KSW_FishList[selection].phase)
		{
			case KSW_Phases.day:
			phaseSprite = spr_KSW_Menu_TitleScreen_Phase_Day;
			break;
			
			case KSW_Phases.afternoon:
			phaseSprite = spr_KSW_Menu_TitleScreen_Phase_Afternoon;
			break;
			
			case KSW_Phases.night:
			phaseSprite = spr_KSW_Menu_TitleScreen_Phase_Night;
			break;
		}
	}
	
	if (phaseSprite != -1) draw_sprite(phaseSprite,0,217,6)
	#endregion
	
	#region Catch Amount
	var targetCatchAmount = global.KSW_FishList[selection].isCaught;
	if (fishIsShiny[selection]) targetCatchAmount = global.KSW_FishList[selection].isCaughtShiny;
	
	scribble("CAUGHT " + string(targetCatchAmount)).align(fa_right).draw(room_width - 4,18 + (12 * (phaseSprite != -1)));
	#endregion
	
	#region Button Hints
	var exitIcon = "";
	var targetIcon = global.UI_IconBindings[? string(input_binding_get("B"))];
	if (targetIcon != undefined) exitIcon = "[" + sprite_get_name(targetIcon) + "]";
	
	var shinyIcon = "";
	var targetIcon = global.UI_IconBindings[? string(input_binding_get("Y"))];
	if (targetIcon != undefined) shinyIcon = "[" + sprite_get_name(targetIcon) + "]";
	
	scribble(exitIcon + "BACK").draw(4,room_height - 16 + (2 * (buttonInputTimerComponent_BTimer != -1)));
	
	if ((global.KSW_FishList[selection].isCaught != 0) and (global.KSW_FishList[selection].isCaughtShiny != 0))
	{
		var shinyText = scribble(shinyIcon + "SHINY").align(fa_center);
		
		shinyText.draw(room_width / 2,room_height - 16 + (2 * (buttonInputTimerComponent_YTimer != -1)));
	}
	#endregion
	#endregion
}