///@description Draw

#region Strimp's Kitchen Text
if (state < 3)
{
	draw_sprite_ext(spr_KSW_Menu_SplashScreen_StrimpsKitchen_Transparent,0,room_width / 2,textY,1,1,wave,image_blend,image_alpha);
	draw_sprite(spr_KSW_Menu_SplashScreen_Strimp,strimpIndex,room_width / 2,textY + strimpY);
	if (strimpBubbleSize != 0) draw_sprite_ext(spr_KSW_Menu_SplashScreen_StrimpBubble,strimpIndex,room_width / 2,textY + strimpY,strimpBubbleSize,strimpBubbleSize,image_angle,image_blend,image_alpha);
}
#endregion

#region Made In
if (state >= 3)
{
	draw_sprite(spr_KSW_Menu_SplashScreen_GameMaker,0,4,24 + wave / 2);
	draw_sprite(spr_KSW_Menu_SplashScreen_StarDream,0,112,58 + wave / 2);
}
#endregion

#region Disclaimer
draw_sprite(spr_KSW_Menu_SplashScreen_Disclaimer,0,0,0);
#endregion