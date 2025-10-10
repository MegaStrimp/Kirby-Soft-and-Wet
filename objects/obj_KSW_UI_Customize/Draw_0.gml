///@description Draw

#region Set Font
scribble_font_set_default("fnt_Advance");
#endregion

#region Overlay
draw_set_alpha(.5);
draw_rectangle_color(camera_get_view_x(mainView),camera_get_view_y(mainView),camera_get_view_x(mainView) + global.gameWidth,camera_get_view_y(mainView) + global.gameHeight,c_black,c_black,c_black,c_black,false);
draw_set_alpha(1);
#endregion

#region Coins
if (coinsVisible)
{
	var formattedCoins = string_replace_all(string_format(min(global.KSW_CurrentCoins,999999999999),3,0)," ","0");
	
	scribble(string(formattedCoins) + "[spr_KSW_UI_Coin]").align(fa_right).draw(236,16 - hintOffset - (2 * (displayedCoins_YOffsetTimer != -1)));
}
#endregion

#region Draw Script
if (currentDrawScript != -1) script_execute(currentDrawScript);
#endregion