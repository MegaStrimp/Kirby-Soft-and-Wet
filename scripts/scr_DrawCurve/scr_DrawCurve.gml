///@description Draw Curve

function scr_DrawCurve(x1,y1,x2,y2,start_angle,detail)
{
    var dist = point_distance(x1,y1,x2,y2);
    var distAng = angle_difference(point_direction(x1,y1,x2,y2),start_angle);
    var inc = (1/detail);

    draw_primitive_begin(pr_linestrip);
	
    for (var i = 0; i < 1 + inc; i += inc)
	{
        var drawX = x1 + (lengthdir_x(i * dist, i * distAng + start_angle));
        var drawY = y1 + (lengthdir_y(i * dist, i * distAng + start_angle));
		
        draw_vertex(drawX,drawY);
    }
	
    draw_primitive_end();
}