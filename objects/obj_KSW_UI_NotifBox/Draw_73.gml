///@description Draw End

#region Variables
var xx = camera_get_view_x(mainView) + (global.gameWidth / 2);
var yy = camera_get_view_y(mainView) + (global.gameHeight / 2) + closeOffset;
var ySize = sprite_get_height(spr_KSW_UI_NotifBox_Back) * (image_yscale / 2);
var xSize = sprite_get_width(spr_KSW_UI_NotifBox_Back) * (image_xscale / 2);

var textX = xx - xSize + 12;
var textY = yy - ySize + 12 + ((image[page] != undefined) * 50);

var imageX = xx;
var imageY = yy - ySize + 9;
#endregion

#region Overlay
draw_set_alpha(overlayAlpha);
draw_rectangle_color(0,0,global.gameWidth,global.gameHeight,c_black,c_black,c_black,c_black,false);
draw_set_alpha(1);
#endregion

#region Back
draw_sprite_ext(spr_KSW_UI_NotifBox_Back,0,xx,yy,image_xscale,image_yscale,image_angle,image_blend,image_alpha);
#endregion

#region Mask
scr_DrawMask_Begin();
scr_DrawMask_Mask(spr_KSW_UI_NotifBox_Mask,0,xx,yy,image_xscale,image_yscale);

#region Texture
for (var i = -5; i < 6; i++)
{
	draw_sprite(spr_KSW_UI_NotifBox_Texture,0,xx + textureX + (textureWidth * i),yy - ySize);
	draw_sprite(spr_KSW_UI_NotifBox_Texture,0,xx - textureX + (textureWidth * i),yy + ySize - textureHeight);
}
#endregion

scr_DrawMask_End();
#endregion

#region Image
if (image[page] != undefined)
{
	draw_set_alpha(imageAlpha);
	draw_sprite(image[page],0,imageX,imageY);
	draw_set_alpha(1);
}
#endregion

#region Text
if (text[page] != undefined)
{
	scribble_font_set_default("fnt_Advance");
	
	var finalText = scr_String_ReplaceButtonSigns(text[page],upIcon,downIcon,leftIcon,rightIcon,AIcon,BIcon,XIcon,YIcon,LIcon,RIcon,LTIcon,RTIcon,startIcon,selectIcon);
	
	scribble("[alpha," + string(1) + "]" + finalText + "[/alpha]").wrap((sprite_get_width(spr_KSW_UI_NotifBox_Back) * image_xscale) - 16).draw(textX,textY,textTypist);
}
#endregion

#region Button Hints
if (textTypist.get_state() == 1)
{
	if (nextText != undefined) scribble(string(AIcon) + nextText).align(fa_right).draw(xx + xSize - 2,yy + ySize - 9);
	if (backText != undefined) scribble(string(BIcon) + backText).draw(xx - xSize + 2,yy + ySize - 9);
}
#endregion