///@description Create

#region Initialize Variables
playerNum = 0;
page = 0;
pageMax = 0;

xScale = 1;
yScale = 1;
scaleSpd = .05;
isClosed = false;
closeOffset = 0;
inputDelayTimer = -1;
destroyTimer = -1;
destroyTimerMax = 30;
nextText = "Next";
nextScript = undefined;
backText = undefined;
backScript = undefined;

overlayAlpha = .75;

textureX = 0;
textureSpd = .3;
textureWidth = sprite_get_width(spr_KSW_UI_NotifBox_Texture);
textureHeight = sprite_get_height(spr_KSW_UI_NotifBox_Texture);

image[0] = undefined;
imageX = x;
imageY = y;
imageAlpha = 0;
imageAlphaTarget = 1;

text[0] = undefined;
textAlpha = 0;
textAlphaTarget = 1;
textTypist = scribble_typist();
textTypist.in(1,0);
textTypist.sound(snd_KSW_Bubble1,25,.85,1.15);

upIcon = undefined;
downIcon = undefined;
leftIcon = undefined;
rightIcon = undefined;

AIcon = undefined;
BIcon = undefined;
XIcon = undefined;
YIcon = undefined;

LIcon = undefined;
RIcon = undefined;
LTIcon = undefined;
RTIcon = undefined;

startIcon = undefined;
selectIcon = undefined;
#endregion