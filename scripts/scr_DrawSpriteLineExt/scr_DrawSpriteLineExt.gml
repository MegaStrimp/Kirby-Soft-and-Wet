/// @description  scr_DrawSpriteLineExt(x1, y1, x2, y2, sprite, subimage, segments, offset, angle, scale, color, alpha)

function scr_DrawSpriteLineExt(_x1,_y1,_x2,_y2,_sprite,_subimage,_segments,_offset,_angle = 0,_scale = 0,_color = c_white,_alpha = 1)
{
	var dis         = point_distance(_x1, _y1, _x2, _y2);
	var dir         = point_direction(_x1, _y1, _x2, _y2);
	var spr_id      = _sprite
	var spr_sub     = _subimage
	var spr_num     = _segments + 1
	
	var i;
	for (i = 1; i < spr_num; i++)
	{
		draw_sprite_ext(spr_id, spr_sub + (i * _offset), _x1 + lengthdir_x((dis / spr_num) * i, dir), _y1 + lengthdir_y((dis / spr_num)*i, dir),_scale,_scale,_angle,_color,_alpha)
	}
}