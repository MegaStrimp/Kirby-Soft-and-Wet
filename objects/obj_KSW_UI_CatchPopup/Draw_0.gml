///@description Draw

#region Overlay
draw_set_alpha(alpha / 1.25);
draw_set_color(c_black);
draw_rectangle(0,0,room_width,room_height,false);
draw_set_alpha(alpha);
draw_set_color(c_white);
#endregion

#region Shine
if (isShiny)
{
	gpu_set_blendmode(bm_add);
	draw_sprite(spr_KSW_UI_CatchPopup_ShineEffect,0,room_width / 2,room_height / 2);
	gpu_set_blendmode(bm_normal);
}
#endregion

#region Sprite
if (spriteIndex != -1)
{
	var targetPaletteIndex = isShiny;
	var spriteWave = sine_wave(current_time / 2000,.5,3,0);
	
	var surfaceWidth = sprite_get_width(spriteIndex) + 2;
	var surfaceHeight = sprite_get_height(spriteIndex) + 2;
	
	if (((!surface_exists(drawSurface)) or ((surface_get_width(drawSurface) != surfaceWidth) or (surface_get_height(drawSurface) != surfaceHeight))))
	{
		if (surface_exists(drawSurface)) surface_free(drawSurface);
		drawSurface = surface_create(surfaceWidth,surfaceHeight);
	}
	if (!surface_exists(drawSurface)) drawSurface = surface_create(room_width,room_height);
	
	surface_set_target(drawSurface);
	draw_clear_alpha(c_black,0);
	
	if ((global.shaders) and (spritePalette != -1)) pal_swap_set(spritePalette,targetPaletteIndex,false);
	draw_sprite(spriteIndex,imageIndex,1 + sprite_get_xoffset(spriteIndex),1 + sprite_get_yoffset(spriteIndex));
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
	
	draw_surface(drawSurface,(room_width / 2) + spriteXOffset - sprite_get_xoffset(spriteIndex) - 1,(room_height / 2) + spriteYOffset + spriteWave - sprite_get_yoffset(spriteIndex) - 1);
	
	if (global.shaders) shader_reset();
}
draw_set_alpha(1);
#endregion

#region Decals
scr_DrawMask_Begin();

draw_set_alpha(alpha);
draw_sprite(spr_KSW_UI_CatchPopup_Decal1,0,0,0);
draw_sprite(spr_KSW_UI_CatchPopup_Decal2,0,room_width,room_height);
draw_set_alpha(1);
gpu_set_blendenable(true);
gpu_set_colorwriteenable(true,true,true,true);

gpu_set_blendmode_ext(bm_dest_alpha,bm_inv_dest_alpha);
gpu_set_alphatestenable(true);

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
draw_set_alpha(alpha);

var subtitle = "NEW FISH GET!";
if (isShiny) subtitle = "NEW SHINY GET!";

scribble(subtitle).align(fa_center).blend(c_white,alpha).draw(room_width / 2,6);

if (isTenna)
{
	draw_sprite(spr_KSW_UI_CatchPopup_TennaName,0,room_width / 2,15);
}
else
{
	scribble(name).align(fa_center).blend(c_white,alpha).draw(room_width / 2,18);
}
#endregion

#region Rarity
for (var h = 0; h < starCount; h++)
{
	var starOffset = 0;
	if ((h == starCount - 1) and (starTimer >= starTimerMax - 1)) starOffset = 1;
	
	draw_sprite(spr_KSW_UI_CaughtBox_Star,0,104 + (12 * h),27 - starOffset);
}
#endregion

#region Phase
var phaseSprite = -1;

if (isTenna)
{
	phaseSprite = spr_KSW_Menu_TitleScreen_Phase_TVTime;
}
else
{
	switch (phase)
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

#region Button Hints
if ((endTimer == -1) and (alphaTarget == 1))
{
	var continueIcon = "";
	var targetIcon = global.UI_IconBindings[? string(input_binding_get("A"))];
	if (targetIcon != undefined) continueIcon = "[" + sprite_get_name(targetIcon) + "]";
	
	scribble(continueIcon + "CONTINUE").draw(4,room_height - 16 + (2 * (buttonInputTimerComponent_ATimer != -1)));
}
#endregion