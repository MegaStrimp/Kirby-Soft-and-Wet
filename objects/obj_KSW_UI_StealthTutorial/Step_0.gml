///@description Main

if (!localPause)
{
	#region Text
	textWave = sine_between(global.currentTimePausable / 200,1,-2,2);
	
	textAlpha = lerp(textAlpha,textAlphaTarget,.05);
	if ((textAlpha == 0) and (destroyTimer == -1)) instance_destroy();
	#endregion
	
	#region Destroy Timer
	if (destroyTimer != -1)
	{
		destroyTimer = max(destroyTimer - speedMultFinal,0);
		if (destroyTimer == 0)
		{
			textAlphaTarget = 0;
			
			destroyTimer = -1;
		}
	}
	#endregion
}

#region Icon Binds
upIcon = global.UI_IconBindings[? string(input_binding_get("up"))];
if (upIcon != undefined) upIcon = "[" + sprite_get_name(upIcon) + "]";

downIcon = global.UI_IconBindings[? string(input_binding_get("down"))];
if (downIcon != undefined) downIcon = "[" + sprite_get_name(downIcon) + "]";

leftIcon = global.UI_IconBindings[? string(input_binding_get("left"))];
if (leftIcon != undefined) leftIcon = "[" + sprite_get_name(leftIcon) + "]";

rightIcon = global.UI_IconBindings[? string(input_binding_get("right"))];
if (rightIcon != undefined) rightIcon = "[" + sprite_get_name(rightIcon) + "]";

AIcon = global.UI_IconBindings[? string(input_binding_get("A"))];
if (AIcon != undefined) AIcon = "[" + sprite_get_name(AIcon) + "]";

BIcon = global.UI_IconBindings[? string(input_binding_get("B"))];
if (BIcon != undefined) BIcon = "[" + sprite_get_name(BIcon) + "]";

XIcon = global.UI_IconBindings[? string(input_binding_get("X"))];
if (XIcon != undefined) XIcon = "[" + sprite_get_name(XIcon) + "]";

YIcon = global.UI_IconBindings[? string(input_binding_get("Y"))];
if (YIcon != undefined) YIcon = "[" + sprite_get_name(YIcon) + "]";

LIcon = global.UI_IconBindings[? string(input_binding_get("L"))];
if (LIcon != undefined) LIcon = "[" + sprite_get_name(LIcon) + "]";

RIcon = global.UI_IconBindings[? string(input_binding_get("R"))];
if (RIcon != undefined) RIcon = "[" + sprite_get_name(RIcon) + "]";

LTIcon = global.UI_IconBindings[? string(input_binding_get("LT"))];
if (LTIcon != undefined) LTIcon = "[" + sprite_get_name(LTIcon) + "]";

RTIcon = global.UI_IconBindings[? string(input_binding_get("RT"))];
if (RTIcon != undefined) RTIcon = "[" + sprite_get_name(RTIcon) + "]";

startIcon = global.UI_IconBindings[? string(input_binding_get("start"))];
if (startIcon != undefined) startIcon = "[" + sprite_get_name(startIcon) + "]";

selectIcon = global.UI_IconBindings[? string(input_binding_get("select"))];
if (selectIcon != undefined) selectIcon = "[" + sprite_get_name(selectIcon) + "]";
#endregion