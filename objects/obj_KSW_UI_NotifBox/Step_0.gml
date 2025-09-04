///@description Main

#region Scale
image_xscale = min(image_xscale + (xScale * scaleSpd),xScale);
image_yscale = min(image_yscale + (yScale * scaleSpd),yScale);
#endregion

#region Close Offset
closeOffset = lerp(closeOffset,isClosed * 160,.1);
#endregion

#region Destroy Timer
if (destroyTimer != -1)
{
	destroyTimer = max(destroyTimer - speedMultFinal,0);
	if (destroyTimer == 0)
	{
		var nextNotif = ds_list_find_value(global.KSW_PopupQueue,0);
		if (nextNotif != undefined)
		{
			scr_KSW_UI_Notif_Create(ds_list_find_value(global.KSW_PopupQueue,0));
			
			ds_list_delete(global.KSW_PopupQueue,0);
		}
		
		instance_destroy();
		
		destroyTimer = -1;
	}
}
#endregion

#region Overlay
overlayAlpha = lerp(overlayAlpha,!isClosed * .75,.1);
#endregion

#region Texture
textureX = (textureX + textureSpd) % textureWidth;
#endregion

#region Image
if (image_xscale == xScale) imageAlpha = min(imageAlpha + (imageAlphaTarget * scaleSpd),imageAlphaTarget);
#endregion

#region Text
textAlpha = min(textAlpha + (textAlphaTarget * scaleSpd),textAlphaTarget);
#endregion

if (inputDelayTimer == -1)
{
	#region Next
	if ((!isClosed) and ((input_check_pressed("A",playerNum)) or (input_check_pressed("start",playerNum))))
	{
		if (nextScript != undefined)
		{
			script_execute(nextScript);
		}
		else
		{
			if (textTypist.get_state() == 1)
			{
				if (page == pageMax)
				{
					scr_PlaySfx(snd_KSW_Splash2);
					
					isClosed = true;
					destroyTimer = destroyTimerMax;
				}
				else
				{
					page += 1;
				}
			}
			else
			{
				textTypist.skip();
			}
		}
	}
	#endregion
	
	#region Back
	if ((!isClosed) and (input_check_pressed("B",playerNum)))
	{
		if (backScript != undefined) script_execute(backScript);
	}
	#endregion
}
else
{
	#region Input Delay Timer
	inputDelayTimer = max(inputDelayTimer - speedMultFinal,0);
	if (inputDelayTimer == 0)
	{
		inputDelayTimer = -1;
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