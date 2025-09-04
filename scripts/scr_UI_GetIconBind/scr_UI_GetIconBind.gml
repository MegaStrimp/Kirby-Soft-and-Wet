///@description UI - Get Icon Bind

function scr_UI_GetIconBind(targetInput)
{
	var targetIcon = global.UI_IconBindings[? string(input_binding_get(targetInput))];
	if (targetIcon == undefined)
	{
		return "";
	}
	else
	{
		return "[" + sprite_get_name(targetIcon) + "]";
	}
}