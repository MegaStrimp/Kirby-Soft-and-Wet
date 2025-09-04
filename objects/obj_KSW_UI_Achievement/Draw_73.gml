///@description Draw End
	
#region Variables
var xx = camera_get_view_x(mainView);
var yy = camera_get_view_y(mainView);
var starX = -47;
var starY = 14;
#endregion

#region Set Font
scribble_font_set_default("fnt_Advance");
#endregion

#region Surface Setup
var surfaceWidth = sprite_get_width(spr_KSW_UI_Achievement_Box_Back) * 10;
var surfaceHeight = sprite_get_height(spr_KSW_UI_Achievement_Box_Back) * 10;

if (((!surface_exists(drawSurface)) or ((surface_get_width(drawSurface) != surfaceWidth) or (surface_get_height(drawSurface) != surfaceHeight))))
{
	if (surface_exists(drawSurface)) surface_free(drawSurface);
	drawSurface = surface_create(surfaceWidth,surfaceHeight);
}

surface_set_target(drawSurface);
draw_clear_alpha(c_black,0);
#endregion

#region Box
draw_sprite_ext(spr_KSW_UI_Achievement_Box_Back,0,surfaceWidth / 2,0,10,4,0,c_white,.75);
#endregion

#region Sprite
draw_sprite(icon,0,starX + (surfaceWidth / 2),starY);
#endregion

#region Text
scribble("STAR GET").draw(starX + 18 + (surfaceWidth / 2),starY - 10);
#endregion

#region Name
var nameText = scribble(name).wrap(82);
nameText.draw(starX + 18 + (surfaceWidth / 2),starY + 4);
#endregion

#region Description
scribble_font_set_default("fnt_Advance_Small");
scribble(description).wrap(82).draw(starX + 18 + (surfaceWidth / 2),starY + 4 + nameText.get_height());
scribble_font_set_default("fnt_Advance");
#endregion

#region Reset Surface
surface_reset_target();
#endregion

#region Draw Surface
if (surface_exists(drawSurface)) draw_surface_ext(drawSurface,xx + (surfaceWidth / 2),yy + 2 + boxY,1,1,wave,c_white,1);
#endregion