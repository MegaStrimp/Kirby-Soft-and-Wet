///@description Draw GUI End

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