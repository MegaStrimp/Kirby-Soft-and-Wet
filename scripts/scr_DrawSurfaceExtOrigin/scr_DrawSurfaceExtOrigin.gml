///@description Draw Surface Ext Origin

function scr_DrawSurfaceExtOrigin(_surf, _x, _y, _xscale, _yscale, _rot, _col, _alpha, _originX, _originY)
{
	_originX *= _xscale;
	_originY *= _yscale;

	matrix_set(matrix_world, matrix_build(_x,_y,0,0,0,_rot,1,1,1));
					 
	draw_surface_ext(_surf,-_originX,-_originY,_xscale,_yscale,0,_col,_alpha);
	matrix_set(matrix_world,matrix_build_identity());
}