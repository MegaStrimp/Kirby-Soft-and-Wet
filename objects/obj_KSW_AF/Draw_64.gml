///@description Draw GUI

draw_sprite_ext(spr_KSW_AF_GasterFoxy,0,0,0,240 / sprite_get_width(spr_KSW_AF_GasterFoxy),160 / sprite_get_height(spr_KSW_AF_GasterFoxy),0,c_white,1);

if (barrelTimer == -1)
{
	draw_sprite_tiled(spr_KSW_AF_Barrel,0,global.currentTimePausable % 240,global.currentTimePausable % 160);
}