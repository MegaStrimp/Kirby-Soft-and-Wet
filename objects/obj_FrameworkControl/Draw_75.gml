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
if ((!global.isMobile) and (global.customCursorSprite != -1)) draw_sprite(global.customCursorSprite,global.customCursorSpriteIndex,device_mouse_x_to_gui(0),device_mouse_y_to_gui(0));
#endregion

#region Tap Feedback
if (global.isMobile)
{
for (var _i = 0; _i < array_length(global.tapFeedbackStars); _i++)
{
	var _st = global.tapFeedbackStars[_i];
	var _t = _st.life / _st.maxLife;
	var _pop = clamp(_st.life / 6,0,1);
	var _scale = ((0.3 + (0.5 * _pop)) - (0.2 * _t)) * _st.size;
	var _alpha = clamp(0.85 - ((_t * _t) * 0.8),0,1) * (0.5 + (0.5 * _st.size));
	var _drift = _st.life * 0.15;
	var _frame = (_st.phase + (_st.life div 5)) mod 4;
	
	draw_sprite_ext(spr_KSW_UI_Shared_Cursor,_frame,_st.x + lengthdir_x(_drift,_st.dir),_st.y + lengthdir_y(_drift,_st.dir),_scale,_scale,0,c_white,_alpha);
}
}
#endregion

if ((global.shaders) and (global.screenPalette != -1)) pal_swap_reset();