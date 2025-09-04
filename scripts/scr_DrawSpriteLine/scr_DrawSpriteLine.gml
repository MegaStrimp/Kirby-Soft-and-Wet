/// @description  scr_DrawSpriteLine(x1, y1, x2, y2, sprite, subimage, segments, offset)
/// @param  x1                      (x pos of first line point)
/// @param  y1                      (y pos of first line point)
/// @param  x2                      (x pos of second line point)
/// @param  y2                      (y pos of second line point)
/// @param  sprite                  (sprite to use)
/// @param  subimage                (subimage to use)
/// @param  segments                (number of sprite segments that make up the line)
/// @param  offset                  (this increments the image_index by X amount after each segment is drawn, useful for certain things)

function scr_DrawSpriteLine(argument0,argument1,argument2,argument3,argument4,argument5,argument6,argument7)
{
	//by pringle :)
	
	var dis         = point_distance( argument0, argument1, argument2, argument3);
	var dir         = point_direction(argument0, argument1, argument2, argument3);
	var spr_id      = argument4
	var spr_sub     = argument5
	var spr_num     = argument6 + 1
	
	var i;
	for (i = 1; i < spr_num; i++)
	{
		draw_sprite(spr_id, spr_sub + (i * argument7), argument0 + lengthdir_x((dis / spr_num) * i, dir), argument1 + lengthdir_y((dis / spr_num)*i, dir))
	}
}