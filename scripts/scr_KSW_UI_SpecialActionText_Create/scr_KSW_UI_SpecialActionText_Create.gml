///@description KSW - UI - Special Action Text - Create

function scr_KSW_UI_SpecialActionText_Create(targetText,targetX = x,targetY = y,targetDepth = depth - 1)
{
	with (instance_create_depth(targetX,targetY,targetDepth,obj_KSW_UI_SpecialActionText))
	{
		text = targetText;
	}
}