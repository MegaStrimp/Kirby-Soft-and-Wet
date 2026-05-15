///@description Draw Curve - Thick

function scr_DrawCurve_Thick(x1,y1,x2,y2,start_angle,detail,color = c_white,thickness = 2)
{
    var dist = point_distance(x1,y1,x2,y2);
    var distAng = angle_difference(point_direction(x1,y1,x2,y2),start_angle);
    var inc = (1/detail);
	
    draw_primitive_begin(pr_trianglestrip);
	
    for (var i = 0; i < 1 + inc; i += inc)
	{
        var drawX = x1 + lengthdir_x(i * dist,i * distAng + start_angle);
        var drawY = y1 + lengthdir_y(i * dist,i * distAng + start_angle);

        var offsetX = lengthdir_x(thickness * .5,i * distAng + start_angle + 90);
        var offsetY = lengthdir_y(thickness * .5,i * distAng + start_angle + 90);

        draw_vertex_color(drawX - offsetX,drawY - offsetY,color,1);
        draw_vertex_color(drawX + offsetX,drawY + offsetY,color,1);
    }
	
    draw_primitive_end();
}