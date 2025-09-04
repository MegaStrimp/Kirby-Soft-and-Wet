///@description KSW - UI - Notif - Create - Custom

function scr_KSW_UI_Notif_Create_Custom(targetText,targetImage,targetXScale = 3,targetYScale = 2)
{
	var notifBox = instance_create_depth(0,0,-999,obj_KSW_UI_NotifBox);
	with (notifBox)
	{
        text = targetText;
		pageMax = array_length(text) - 1;
        image = targetImage;
		xScale = targetXScale;
		yScale = targetYScale;
	}
}