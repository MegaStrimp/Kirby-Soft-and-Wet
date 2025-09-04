//scr_MoveTo(_obj, _move_start_x, _move_start_y, _target_x, _target_y, _frames, _radius*)
// Moves the specified object to (target_x, target_y) in 'frames' number of steps

function scr_MoveTo(_obj,_target_x,_target_y,_frames,_radius = 2)
{
	_frames = max(1, _frames);

	with (_obj)
	{
		var _dist = point_distance(x,y,_target_x,_target_y);
		var _dir = point_direction(x,y,_target_x,_target_y);
		
		if (x != _target_x)	x = x+lengthdir_x(_dist/_frames,_dir);
		if (y != _target_y) y = y+lengthdir_y(_dist/_frames,_dir);
		
		if (collision_circle(_target_x,_target_y,_radius,id,false,false)) 
		{
			x = _target_x;
			y = _target_y;
		}
	}
}