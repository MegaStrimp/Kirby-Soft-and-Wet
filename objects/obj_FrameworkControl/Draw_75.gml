///@description Draw GUI End

if ((global.shaders) and (global.screenPalette != -1)) pal_swap_set(global.screenPalette,global.screenPaletteIndex,false);

#region Screenshot Text
if ((!global.screenshotBuffer) and (global.screenshotTextTimer != -1))
{
	draw_set_alpha(.5);
	draw_set_valign(fa_bottom);
	draw_text(0,global.gameHeight,"SCREENSHOT SAVED /PICTURES");
	draw_set_alpha(1);
	draw_set_valign(fa_top);
}
#endregion

#region Custom Cursor
if (global.customCursorSprite != -1) draw_sprite(global.customCursorSprite,global.customCursorSpriteIndex,device_mouse_x_to_gui(0),device_mouse_y_to_gui(0));
#endregion

if ((global.shaders) and (global.screenPalette != -1)) pal_swap_reset();