///@description KSW - Menu - Fishbook - Calib Mode - Draw

function scr_KSW_Menu_Fishbook_CalibMode_Draw(targetX,targetY)
{
	draw_set_color(current_time / 4);
	draw_text(targetX,targetY,"X" + string(calibX));
	draw_text(targetX,targetY + 28,"Y" + string(calibY));
	draw_set_color(c_white);
}