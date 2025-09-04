///@description Draw

#region Background
var colorCycle = sine_between(global.currentTimePausable,360,-4,4);
var color1 = (bgColor1 + colorCycle) % 360;
var color2 = (bgColor1 + 10 + colorCycle) % 360;
var color3 = (bgColor2 + colorCycle) % 360;
var color4 = (bgColor2 + 10 + colorCycle) % 360;

draw_rectangle_color(0,0,global.gameWidth,global.gameHeight,make_color_hsv(color1,bgSaturation1,bgValue1),make_color_hsv(color2,bgSaturation1,bgValue1),make_color_hsv(color3,bgSaturation2,bgValue2),make_color_hsv(color4,bgSaturation2,bgValue2),false);
#endregion

#region Light
var lightX = sine_between(global.currentTimePausable,lightPeriod,-20,20);
var lightY = sine_between(global.currentTimePausable,lightPeriod + 100,-20,20);

draw_sprite(bg_KSW_Underwater_Light,0,lightX,lightY);
draw_sprite_ext(bg_KSW_Underwater_Shine,0,colorCycle,0,1,1,0,c_white,.5);
#endregion