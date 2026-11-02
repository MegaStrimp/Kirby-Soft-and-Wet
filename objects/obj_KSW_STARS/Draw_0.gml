///@description Draw

#region Set Font
scribble_font_set_default("fnt_Advance");
#endregion

#region Page Title
scribble("PAGE " + string(page + 1)).align(fa_center).draw(room_width / 2,6 - hintOffset);
#endregion

#region STAR Name
var targetName = "???";
targetName = global.KSW_STARList[ds_list_find_value(selectionList,selection)].name;
var targetDescription = global.KSW_STARList[ds_list_find_value(selectionList,selection)].description;
var STARName = scribble(targetName).align(fa_right);
STARName.draw(room_width - 4,room_height - 14 + hintOffset);
#endregion

#region STARS
for (var i = page * pageSelectionCount; i < min((page + 1) * pageSelectionCount,ds_list_size(selectionList)); i++)
{
	#region Variables
	var boxX = 49 + (75 * (i % pageColumns));
	var boxY = 14 + (75 * floor((i - page * pageSelectionCount) / pageColumns));
	var spriteIndex = global.KSW_STARList[ds_list_find_value(selectionList,i)].icon;
	var backgroundPalette = spr_KSW_UI_CaughtBox_Palette_Locked;
	#endregion
	
	#region Box
	draw_sprite(spr_KSW_UI_CaughtBox_Box_Big,0,boxX,boxY);
	#endregion
	
	#region Mask
	scr_DrawMask_Begin();
	scr_DrawMask_Mask(spr_KSW_UI_CaughtBox_Mask_Big,0,boxX,boxY);
	
	#region Texture
	if ((global.shaders) and (backgroundPalette != -1)) pal_swap_set(backgroundPalette,1,false);
	for (var ix = 0; ix < 5; ix++)
	{
		for (var iy = 0; iy < 5; iy++)
		{
			draw_sprite(spr_KSW_UI_CaughtBox_Texture,0,boxX + backgroundX + ((ix - 2) * 50),boxY + backgroundY + ((iy - 2) * 40));
		}
	}
	if ((global.shaders) and (backgroundPalette != -1)) pal_swap_reset();
	#endregion
	
	#region Sprite
	if (spriteIndex != -1)
	{
		draw_sprite(spriteIndex,STARImageIndex[i],boxX + 34,boxY + 34);
	}
	#endregion
	
	scr_DrawMask_End();
	#endregion
	
	#region Selection
	if (i == selection) draw_sprite_ext(spr_KSW_Menu_Fishbook_Selection,selectionIndex,boxX + 34,boxY + 34,selectionScale + 1,selectionScale + 1,0,c_white,1);
	#endregion
}
#endregion

if (!isZoomed)
{
	#region Button Hints
	var targetIcon = global.UI_IconBindings[? string(input_binding_get("L"))];
	if (targetIcon == undefined) targetIcon = spr_UI_Button_Keyboard_Left;
	draw_sprite(targetIcon,0,72,3 - hintOffset + (2 * (buttonInputTimerComponent_LTimer != -1)));
	
	var targetIcon = global.UI_IconBindings[? string(input_binding_get("R"))];
	if (targetIcon == undefined) targetIcon = spr_UI_Button_Keyboard_Right;
	draw_sprite(targetIcon,0,157,3 - hintOffset + (2 * (buttonInputTimerComponent_RTimer != -1)));
	
	var exitIcon = "";
	var targetIcon = global.UI_IconBindings[? string(input_binding_get("B"))];
	if (targetIcon != undefined) exitIcon = "[" + sprite_get_name(targetIcon) + "]";
	
	scribble(exitIcon + "EXIT").draw(4,room_height - 16 + (2 * (buttonInputTimerComponent_BTimer != -1)));
	#endregion
}
else
{
	#region Zoomed View
	#region Variables
	var spriteIndex = global.KSW_STARList[ds_list_find_value(selectionList,selection)].icon;
	var backgroundPalette = spr_KSW_UI_CaughtBox_Palette_Locked;
	#endregion
	
	#region Overlay
	draw_set_alpha(zoomAlpha / 1.25);
	draw_set_color(c_black);
	draw_rectangle(0,0,room_width,room_height,false);
	draw_set_alpha(zoomAlpha);
	draw_set_color(c_white);
	#endregion
	
	#region Sprite
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
	
	draw_sprite(spriteIndex,selectionImageIndex,1 + sprite_get_xoffset(spriteIndex),1 + sprite_get_yoffset(spriteIndex));
	
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
	
	draw_surface(drawSurface,(room_width / 2) - sprite_get_xoffset(spriteIndex) - 1,(room_height / 2) + spriteWave - sprite_get_yoffset(spriteIndex) - 1);
	
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
	
	#region STAR Name
	scribble(targetName).align(fa_center).blend(c_white,zoomAlpha).draw(room_width / 2,6);
	#endregion
	
	#region STAR Description
	scribble("[fnt_Advance_Small]" + targetDescription + "[/font]").align(fa_right,fa_bottom).wrap(180).draw(room_width - 4,room_height - 4);
	#endregion
	
	#region Button Hints
	var exitIcon = "";
	var targetIcon = global.UI_IconBindings[? string(input_binding_get("B"))];
	if (targetIcon != undefined) exitIcon = "[" + sprite_get_name(targetIcon) + "]";
	
	scribble(exitIcon + "BACK").draw(4,room_height - 16 + (2 * (buttonInputTimerComponent_BTimer != -1)));
	#endregion
	#endregion
}