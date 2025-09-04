///@description Transition - Normal - Draw GUI End

function scr_Transition_Normal_DrawGUIEnd()
{
	#region Draw Black Box
	draw_set_alpha(alpha);
	draw_set_color(fadeColor);
	draw_rectangle(0,0,global.gameWidth,global.gameHeight,false);
	draw_set_alpha(1);
	draw_set_color(c_white);
	#endregion
}