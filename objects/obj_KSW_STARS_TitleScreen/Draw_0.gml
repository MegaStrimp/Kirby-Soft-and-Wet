///@description Draw

//Note to self, font used is Modern DOS 9x16

#region Logo
draw_sprite(spr_KSW_STARS_Logo,0,global.gameWidth / 2,28);
#endregion

#region Text
if (textTimer == -1) draw_sprite(spr_KSW_STARS_NeedRainmaker,0,global.gameWidth / 2,110);
#endregion